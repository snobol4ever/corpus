                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__differ$2F4:
                        sub              rsp, 2864
                        mov              qword ptr [rsp + 2840], rcx
                        mov              qword ptr [rsp + 2848], rdx
                        mov              qword ptr [rsp + 2856], rsp
                        mov              rdi, rsp
                        mov              esi, 2688
                        mov              edx, 2832
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
differ$2F4_α_body:
                        lea              rax, [rip + n97_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx99_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx99_101
.Lx99_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx99_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx99_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx99_101
.Lx99_100:              lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx99_101:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        lea              rdi, [rsp + 2624]
                        lea              r8, [rsp + 2624]
.Lx104_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx104_41
                        cmp              esi, 1;                              jne   .Lx104_55
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_55:              cmp              esi, 2;                              jne   .Lx104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx104_41
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_56:              cmp              eax, 72;                             jne   .Lx104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx104_41
                        cmp              rax, r8;                             je    .Lx104_41
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_41:              lea              r9, [rsp + 2640]
.Lx104_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx104_43
                        cmp              esi, 1;                              jne   .Lx104_57
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_57:              cmp              esi, 2;                              jne   .Lx104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx104_43
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_58:              cmp              eax, 72;                             jne   .Lx104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx104_43
                        cmp              rax, r9;                             je    .Lx104_43
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_43:              cmp              r8, r9;                              je    .Lx104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx104_44
                        cmp              eax, 104;                            je    .Lx104_44
                        cmp              eax, 72;                             jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx104_44
                                                                              jmp   .Lx104_45
.Lx104_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx104_53
                        cmp              eax, 104;                            je    .Lx104_53
                        cmp              eax, 72;                             jne   .Lx104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx104_53
                                                                              jmp   .Lx104_46
.Lx104_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx104_51
.Lx104_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx104_47
                        cmp              eax, 104;                            je    .Lx104_47
                        cmp              eax, 72;                             jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx104_47
                                                                              jmp   .Lx104_48
.Lx104_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx104_51
.Lx104_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx104_49
                        cmp              edx, 80;                             je    .Lx104_53
                                                                              jmp   .Lx104_52
.Lx104_49:              cmp              edx, 80;                             je    .Lx104_52
                        cmp              ecx, 5;                              je    .Lx104_53
                        cmp              edx, 5;                              je    .Lx104_53
                        cmp              ecx, 3;                              jne   .Lx104_50
                        cmp              edx, 3;                              jne   .Lx104_50
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
.Lx104_54:              mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              eax, 104;                            je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        lea              rdi, [rsp + 2544]
                        lea              r8, [rsp + 2544]
.Lx109_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx109_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx109_41
                        cmp              esi, 1;                              jne   .Lx109_55
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_55:              cmp              esi, 2;                              jne   .Lx109_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx109_41
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_56:              cmp              eax, 72;                             jne   .Lx109_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx109_41
                        cmp              rax, r8;                             je    .Lx109_41
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_41:              lea              r9, [rsp + 2560]
.Lx109_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx109_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx109_43
                        cmp              esi, 1;                              jne   .Lx109_57
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_57:              cmp              esi, 2;                              jne   .Lx109_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx109_43
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_58:              cmp              eax, 72;                             jne   .Lx109_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx109_43
                        cmp              rax, r9;                             je    .Lx109_43
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_43:              cmp              r8, r9;                              je    .Lx109_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx109_44
                        cmp              eax, 104;                            je    .Lx109_44
                        cmp              eax, 72;                             jne   .Lx109_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx109_44
                                                                              jmp   .Lx109_45
.Lx109_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx109_53
                        cmp              eax, 104;                            je    .Lx109_53
                        cmp              eax, 72;                             jne   .Lx109_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx109_53
                                                                              jmp   .Lx109_46
.Lx109_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx109_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx109_51
.Lx109_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx109_47
                        cmp              eax, 104;                            je    .Lx109_47
                        cmp              eax, 72;                             jne   .Lx109_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx109_47
                                                                              jmp   .Lx109_48
.Lx109_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx109_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx109_51
.Lx109_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx109_49
                        cmp              edx, 80;                             je    .Lx109_53
                                                                              jmp   .Lx109_52
.Lx109_49:              cmp              edx, 80;                             je    .Lx109_52
                        cmp              ecx, 5;                              je    .Lx109_53
                        cmp              edx, 5;                              je    .Lx109_53
                        cmp              ecx, 3;                              jne   .Lx109_50
                        cmp              edx, 3;                              jne   .Lx109_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx109_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx109_51
                                                                              jmp   .Lx109_52
.Lx109_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx109_53
.Lx109_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx109_54
.Lx109_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx109_54
.Lx109_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx109_54:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 104;                            je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                                                                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        lea              r8, [rsp + 2464]
.Lx114_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx114_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx114_41
                        cmp              esi, 1;                              jne   .Lx114_55
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_55:              cmp              esi, 2;                              jne   .Lx114_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx114_41
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_56:              cmp              eax, 72;                             jne   .Lx114_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx114_41
                        cmp              rax, r8;                             je    .Lx114_41
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_41:              lea              r9, [rsp + 2480]
.Lx114_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx114_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx114_43
                        cmp              esi, 1;                              jne   .Lx114_57
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_57:              cmp              esi, 2;                              jne   .Lx114_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx114_43
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_58:              cmp              eax, 72;                             jne   .Lx114_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx114_43
                        cmp              rax, r9;                             je    .Lx114_43
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_43:              cmp              r8, r9;                              je    .Lx114_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx114_44
                        cmp              eax, 104;                            je    .Lx114_44
                        cmp              eax, 72;                             jne   .Lx114_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx114_44
                                                                              jmp   .Lx114_45
.Lx114_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx114_53
                        cmp              eax, 104;                            je    .Lx114_53
                        cmp              eax, 72;                             jne   .Lx114_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx114_53
                                                                              jmp   .Lx114_46
.Lx114_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx114_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx114_51
.Lx114_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx114_47
                        cmp              eax, 104;                            je    .Lx114_47
                        cmp              eax, 72;                             jne   .Lx114_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx114_47
                                                                              jmp   .Lx114_48
.Lx114_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx114_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx114_51
.Lx114_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx114_49
                        cmp              edx, 80;                             je    .Lx114_53
                                                                              jmp   .Lx114_52
.Lx114_49:              cmp              edx, 80;                             je    .Lx114_52
                        cmp              ecx, 5;                              je    .Lx114_53
                        cmp              edx, 5;                              je    .Lx114_53
                        cmp              ecx, 3;                              jne   .Lx114_50
                        cmp              edx, 3;                              jne   .Lx114_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx114_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx114_51
                                                                              jmp   .Lx114_52
.Lx114_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx114_53
.Lx114_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx114_54
.Lx114_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx114_54
.Lx114_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx114_54:              mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              eax, 104;                            je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                                                                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax
                        lea              rdi, [rsp + 2384]
                        lea              r8, [rsp + 2384]
.Lx119_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx119_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx119_41
                        cmp              esi, 1;                              jne   .Lx119_55
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_55:              cmp              esi, 2;                              jne   .Lx119_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx119_41
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_56:              cmp              eax, 72;                             jne   .Lx119_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx119_41
                        cmp              rax, r8;                             je    .Lx119_41
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_41:              lea              r9, [rsp + 2400]
.Lx119_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx119_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx119_43
                        cmp              esi, 1;                              jne   .Lx119_57
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_57:              cmp              esi, 2;                              jne   .Lx119_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx119_43
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_58:              cmp              eax, 72;                             jne   .Lx119_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx119_43
                        cmp              rax, r9;                             je    .Lx119_43
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_43:              cmp              r8, r9;                              je    .Lx119_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx119_44
                        cmp              eax, 104;                            je    .Lx119_44
                        cmp              eax, 72;                             jne   .Lx119_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx119_44
                                                                              jmp   .Lx119_45
.Lx119_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx119_53
                        cmp              eax, 104;                            je    .Lx119_53
                        cmp              eax, 72;                             jne   .Lx119_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx119_53
                                                                              jmp   .Lx119_46
.Lx119_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx119_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx119_51
.Lx119_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx119_47
                        cmp              eax, 104;                            je    .Lx119_47
                        cmp              eax, 72;                             jne   .Lx119_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx119_47
                                                                              jmp   .Lx119_48
.Lx119_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx119_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx119_51
.Lx119_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx119_49
                        cmp              edx, 80;                             je    .Lx119_53
                                                                              jmp   .Lx119_52
.Lx119_49:              cmp              edx, 80;                             je    .Lx119_52
                        cmp              ecx, 5;                              je    .Lx119_53
                        cmp              edx, 5;                              je    .Lx119_53
                        cmp              ecx, 3;                              jne   .Lx119_50
                        cmp              edx, 3;                              jne   .Lx119_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx119_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx119_51
                                                                              jmp   .Lx119_52
.Lx119_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx119_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx119_53
.Lx119_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx119_54
.Lx119_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx119_54
.Lx119_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx119_54:              mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              eax, 104;                            je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_cut_α
n12_call_builtin_prolog_β:
                                                                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        lea              r8, [rsp + 2256]
.Lx126_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx126_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx126_41
                        cmp              esi, 1;                              jne   .Lx126_55
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_55:              cmp              esi, 2;                              jne   .Lx126_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx126_41
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_56:              cmp              eax, 72;                             jne   .Lx126_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx126_41
                        cmp              rax, r8;                             je    .Lx126_41
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_41:              lea              r9, [rsp + 2272]
.Lx126_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx126_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx126_43
                        cmp              esi, 1;                              jne   .Lx126_57
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_57:              cmp              esi, 2;                              jne   .Lx126_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx126_43
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_58:              cmp              eax, 72;                             jne   .Lx126_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx126_43
                        cmp              rax, r9;                             je    .Lx126_43
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_43:              cmp              r8, r9;                              je    .Lx126_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx126_44
                        cmp              eax, 104;                            je    .Lx126_44
                        cmp              eax, 72;                             jne   .Lx126_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx126_44
                                                                              jmp   .Lx126_45
.Lx126_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx126_53
                        cmp              eax, 104;                            je    .Lx126_53
                        cmp              eax, 72;                             jne   .Lx126_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx126_53
                                                                              jmp   .Lx126_46
.Lx126_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx126_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx126_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx126_51
.Lx126_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx126_47
                        cmp              eax, 104;                            je    .Lx126_47
                        cmp              eax, 72;                             jne   .Lx126_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx126_47
                                                                              jmp   .Lx126_48
.Lx126_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx126_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx126_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx126_51
.Lx126_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx126_49
                        cmp              edx, 80;                             je    .Lx126_53
                                                                              jmp   .Lx126_52
.Lx126_49:              cmp              edx, 80;                             je    .Lx126_52
                        cmp              ecx, 5;                              je    .Lx126_53
                        cmp              edx, 5;                              je    .Lx126_53
                        cmp              ecx, 3;                              jne   .Lx126_50
                        cmp              edx, 3;                              jne   .Lx126_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx126_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx126_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx126_51
                                                                              jmp   .Lx126_52
.Lx126_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx126_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx126_53
.Lx126_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx126_54
.Lx126_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx126_54
.Lx126_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx126_54:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        lea              r8, [rsp + 2176]
.Lx131_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx131_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx131_41
                        cmp              esi, 1;                              jne   .Lx131_55
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_55:              cmp              esi, 2;                              jne   .Lx131_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx131_41
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_56:              cmp              eax, 72;                             jne   .Lx131_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx131_41
                        cmp              rax, r8;                             je    .Lx131_41
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_41:              lea              r9, [rsp + 2192]
.Lx131_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx131_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx131_43
                        cmp              esi, 1;                              jne   .Lx131_57
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_57:              cmp              esi, 2;                              jne   .Lx131_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx131_43
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_58:              cmp              eax, 72;                             jne   .Lx131_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx131_43
                        cmp              rax, r9;                             je    .Lx131_43
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_43:              cmp              r8, r9;                              je    .Lx131_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx131_44
                        cmp              eax, 104;                            je    .Lx131_44
                        cmp              eax, 72;                             jne   .Lx131_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx131_44
                                                                              jmp   .Lx131_45
.Lx131_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx131_53
                        cmp              eax, 104;                            je    .Lx131_53
                        cmp              eax, 72;                             jne   .Lx131_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx131_53
                                                                              jmp   .Lx131_46
.Lx131_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx131_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx131_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx131_51
.Lx131_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx131_47
                        cmp              eax, 104;                            je    .Lx131_47
                        cmp              eax, 72;                             jne   .Lx131_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx131_47
                                                                              jmp   .Lx131_48
.Lx131_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx131_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx131_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx131_51
.Lx131_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx131_49
                        cmp              edx, 80;                             je    .Lx131_53
                                                                              jmp   .Lx131_52
.Lx131_49:              cmp              edx, 80;                             je    .Lx131_52
                        cmp              ecx, 5;                              je    .Lx131_53
                        cmp              edx, 5;                              je    .Lx131_53
                        cmp              ecx, 3;                              jne   .Lx131_50
                        cmp              edx, 3;                              jne   .Lx131_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx131_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx131_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx131_51
                                                                              jmp   .Lx131_52
.Lx131_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx131_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx131_53
.Lx131_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx131_54
.Lx131_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx131_54
.Lx131_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx131_54:              mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        lea              r8, [rsp + 2096]
.Lx136_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx136_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              esi, 1;                              jne   .Lx136_55
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_55:              cmp              esi, 2;                              jne   .Lx136_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_56:              cmp              eax, 72;                             jne   .Lx136_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              rax, r8;                             je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_41:              lea              r9, [rsp + 2112]
.Lx136_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx136_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              esi, 1;                              jne   .Lx136_57
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_57:              cmp              esi, 2;                              jne   .Lx136_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_58:              cmp              eax, 72;                             jne   .Lx136_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              rax, r9;                             je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_43:              cmp              r8, r9;                              je    .Lx136_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx136_44
                        cmp              eax, 104;                            je    .Lx136_44
                        cmp              eax, 72;                             jne   .Lx136_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx136_44
                                                                              jmp   .Lx136_45
.Lx136_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx136_53
                        cmp              eax, 104;                            je    .Lx136_53
                        cmp              eax, 72;                             jne   .Lx136_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_53
                                                                              jmp   .Lx136_46
.Lx136_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx136_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx136_51
.Lx136_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx136_47
                        cmp              eax, 104;                            je    .Lx136_47
                        cmp              eax, 72;                             jne   .Lx136_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_47
                                                                              jmp   .Lx136_48
.Lx136_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx136_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx136_51
.Lx136_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx136_49
                        cmp              edx, 80;                             je    .Lx136_53
                                                                              jmp   .Lx136_52
.Lx136_49:              cmp              edx, 80;                             je    .Lx136_52
                        cmp              ecx, 5;                              je    .Lx136_53
                        cmp              edx, 5;                              je    .Lx136_53
                        cmp              ecx, 3;                              jne   .Lx136_50
                        cmp              edx, 3;                              jne   .Lx136_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx136_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx136_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx136_51
                                                                              jmp   .Lx136_52
.Lx136_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx136_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx136_53
.Lx136_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx136_54
.Lx136_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx136_54
.Lx136_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx136_54:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        lea              r8, [rsp + 2016]
.Lx141_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx141_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_41
                        cmp              esi, 1;                              jne   .Lx141_55
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_55:              cmp              esi, 2;                              jne   .Lx141_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_41
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_56:              cmp              eax, 72;                             jne   .Lx141_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_41
                        cmp              rax, r8;                             je    .Lx141_41
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_41:              lea              r9, [rsp + 2032]
.Lx141_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx141_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_43
                        cmp              esi, 1;                              jne   .Lx141_57
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_57:              cmp              esi, 2;                              jne   .Lx141_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_43
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_58:              cmp              eax, 72;                             jne   .Lx141_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_43
                        cmp              rax, r9;                             je    .Lx141_43
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_43:              cmp              r8, r9;                              je    .Lx141_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx141_44
                        cmp              eax, 104;                            je    .Lx141_44
                        cmp              eax, 72;                             jne   .Lx141_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx141_44
                                                                              jmp   .Lx141_45
.Lx141_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx141_53
                        cmp              eax, 104;                            je    .Lx141_53
                        cmp              eax, 72;                             jne   .Lx141_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_53
                                                                              jmp   .Lx141_46
.Lx141_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx141_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx141_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx141_51
.Lx141_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx141_47
                        cmp              eax, 104;                            je    .Lx141_47
                        cmp              eax, 72;                             jne   .Lx141_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_47
                                                                              jmp   .Lx141_48
.Lx141_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx141_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx141_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx141_51
.Lx141_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx141_49
                        cmp              edx, 80;                             je    .Lx141_53
                                                                              jmp   .Lx141_52
.Lx141_49:              cmp              edx, 80;                             je    .Lx141_52
                        cmp              ecx, 5;                              je    .Lx141_53
                        cmp              edx, 5;                              je    .Lx141_53
                        cmp              ecx, 3;                              jne   .Lx141_50
                        cmp              edx, 3;                              jne   .Lx141_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx141_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx141_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx141_51
                                                                              jmp   .Lx141_52
.Lx141_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx141_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx141_53
.Lx141_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx141_54
.Lx141_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx141_54
.Lx141_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx141_54:              mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_cut_α
n26_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lx148_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx148_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx148_41
                        cmp              esi, 1;                              jne   .Lx148_55
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_55:              cmp              esi, 2;                              jne   .Lx148_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx148_41
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_56:              cmp              eax, 72;                             jne   .Lx148_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx148_41
                        cmp              rax, r8;                             je    .Lx148_41
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_41:              lea              r9, [rsp + 1904]
.Lx148_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx148_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx148_43
                        cmp              esi, 1;                              jne   .Lx148_57
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_57:              cmp              esi, 2;                              jne   .Lx148_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx148_43
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_58:              cmp              eax, 72;                             jne   .Lx148_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx148_43
                        cmp              rax, r9;                             je    .Lx148_43
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_43:              cmp              r8, r9;                              je    .Lx148_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx148_44
                        cmp              eax, 104;                            je    .Lx148_44
                        cmp              eax, 72;                             jne   .Lx148_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx148_44
                                                                              jmp   .Lx148_45
.Lx148_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx148_53
                        cmp              eax, 104;                            je    .Lx148_53
                        cmp              eax, 72;                             jne   .Lx148_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx148_53
                                                                              jmp   .Lx148_46
.Lx148_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx148_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx148_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx148_51
.Lx148_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx148_47
                        cmp              eax, 104;                            je    .Lx148_47
                        cmp              eax, 72;                             jne   .Lx148_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx148_47
                                                                              jmp   .Lx148_48
.Lx148_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx148_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx148_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx148_51
.Lx148_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx148_49
                        cmp              edx, 80;                             je    .Lx148_53
                                                                              jmp   .Lx148_52
.Lx148_49:              cmp              edx, 80;                             je    .Lx148_52
                        cmp              ecx, 5;                              je    .Lx148_53
                        cmp              edx, 5;                              je    .Lx148_53
                        cmp              ecx, 3;                              jne   .Lx148_50
                        cmp              edx, 3;                              jne   .Lx148_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx148_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx148_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx148_51
                                                                              jmp   .Lx148_52
.Lx148_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx148_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx148_53
.Lx148_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx148_54
.Lx148_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx148_54
.Lx148_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx148_54:              mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                                                                              jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        lea              r8, [rsp + 1808]
.Lx153_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx153_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx153_41
                        cmp              esi, 1;                              jne   .Lx153_55
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_55:              cmp              esi, 2;                              jne   .Lx153_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx153_41
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_56:              cmp              eax, 72;                             jne   .Lx153_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx153_41
                        cmp              rax, r8;                             je    .Lx153_41
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_41:              lea              r9, [rsp + 1824]
.Lx153_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx153_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx153_43
                        cmp              esi, 1;                              jne   .Lx153_57
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_57:              cmp              esi, 2;                              jne   .Lx153_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx153_43
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_58:              cmp              eax, 72;                             jne   .Lx153_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx153_43
                        cmp              rax, r9;                             je    .Lx153_43
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_43:              cmp              r8, r9;                              je    .Lx153_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx153_44
                        cmp              eax, 104;                            je    .Lx153_44
                        cmp              eax, 72;                             jne   .Lx153_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx153_44
                                                                              jmp   .Lx153_45
.Lx153_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx153_53
                        cmp              eax, 104;                            je    .Lx153_53
                        cmp              eax, 72;                             jne   .Lx153_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx153_53
                                                                              jmp   .Lx153_46
.Lx153_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx153_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx153_51
.Lx153_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx153_47
                        cmp              eax, 104;                            je    .Lx153_47
                        cmp              eax, 72;                             jne   .Lx153_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx153_47
                                                                              jmp   .Lx153_48
.Lx153_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx153_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx153_51
.Lx153_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx153_49
                        cmp              edx, 80;                             je    .Lx153_53
                                                                              jmp   .Lx153_52
.Lx153_49:              cmp              edx, 80;                             je    .Lx153_52
                        cmp              ecx, 5;                              je    .Lx153_53
                        cmp              edx, 5;                              je    .Lx153_53
                        cmp              ecx, 3;                              jne   .Lx153_50
                        cmp              edx, 3;                              jne   .Lx153_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx153_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx153_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx153_51
                                                                              jmp   .Lx153_52
.Lx153_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx153_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx153_53
.Lx153_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx153_54
.Lx153_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx153_54
.Lx153_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx153_54:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 104;                            je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                                                                              jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        lea              r8, [rsp + 1728]
.Lx158_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              esi, 1;                              jne   .Lx158_55
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_55:              cmp              esi, 2;                              jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_56:              cmp              eax, 72;                             jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              rax, r8;                             je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_41:              lea              r9, [rsp + 1744]
.Lx158_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              esi, 1;                              jne   .Lx158_57
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_57:              cmp              esi, 2;                              jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_58:              cmp              eax, 72;                             jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              rax, r9;                             je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_43:              cmp              r8, r9;                              je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx158_44
                        cmp              eax, 104;                            je    .Lx158_44
                        cmp              eax, 72;                             jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx158_44
                                                                              jmp   .Lx158_45
.Lx158_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx158_53
                        cmp              eax, 104;                            je    .Lx158_53
                        cmp              eax, 72;                             jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_53
                                                                              jmp   .Lx158_46
.Lx158_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx158_51
.Lx158_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx158_47
                        cmp              eax, 104;                            je    .Lx158_47
                        cmp              eax, 72;                             jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_47
                                                                              jmp   .Lx158_48
.Lx158_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx158_51
.Lx158_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx158_49
                        cmp              edx, 80;                             je    .Lx158_53
                                                                              jmp   .Lx158_52
.Lx158_49:              cmp              edx, 80;                             je    .Lx158_52
                        cmp              ecx, 5;                              je    .Lx158_53
                        cmp              edx, 5;                              je    .Lx158_53
                        cmp              ecx, 3;                              jne   .Lx158_50
                        cmp              edx, 3;                              jne   .Lx158_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx158_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx158_51
                                                                              jmp   .Lx158_52
.Lx158_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx158_53
.Lx158_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx158_54
.Lx158_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx158_54
.Lx158_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx158_54:              mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_var_ref_α
n37_call_builtin_prolog_β:
                                                                              jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        lea              r8, [rsp + 1648]
.Lx163_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx163_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx163_41
                        cmp              esi, 1;                              jne   .Lx163_55
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_55:              cmp              esi, 2;                              jne   .Lx163_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx163_41
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_56:              cmp              eax, 72;                             jne   .Lx163_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx163_41
                        cmp              rax, r8;                             je    .Lx163_41
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_41:              lea              r9, [rsp + 1664]
.Lx163_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx163_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx163_43
                        cmp              esi, 1;                              jne   .Lx163_57
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_57:              cmp              esi, 2;                              jne   .Lx163_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx163_43
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_58:              cmp              eax, 72;                             jne   .Lx163_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx163_43
                        cmp              rax, r9;                             je    .Lx163_43
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_43:              cmp              r8, r9;                              je    .Lx163_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx163_44
                        cmp              eax, 104;                            je    .Lx163_44
                        cmp              eax, 72;                             jne   .Lx163_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx163_44
                                                                              jmp   .Lx163_45
.Lx163_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx163_53
                        cmp              eax, 104;                            je    .Lx163_53
                        cmp              eax, 72;                             jne   .Lx163_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx163_53
                                                                              jmp   .Lx163_46
.Lx163_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx163_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx163_51
.Lx163_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx163_47
                        cmp              eax, 104;                            je    .Lx163_47
                        cmp              eax, 72;                             jne   .Lx163_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx163_47
                                                                              jmp   .Lx163_48
.Lx163_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx163_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx163_51
.Lx163_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx163_49
                        cmp              edx, 80;                             je    .Lx163_53
                                                                              jmp   .Lx163_52
.Lx163_49:              cmp              edx, 80;                             je    .Lx163_52
                        cmp              ecx, 5;                              je    .Lx163_53
                        cmp              edx, 5;                              je    .Lx163_53
                        cmp              ecx, 3;                              jne   .Lx163_50
                        cmp              edx, 3;                              jne   .Lx163_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx163_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx163_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx163_51
                                                                              jmp   .Lx163_52
.Lx163_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx163_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx163_53
.Lx163_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx163_54
.Lx163_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx163_54
.Lx163_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx163_54:              mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 104;                            je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_cut_α
n40_call_builtin_prolog_β:
                                                                              jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_var_ref_α
n42_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        lea              r8, [rsp + 1520]
.Lx170_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx170_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx170_41
                        cmp              esi, 1;                              jne   .Lx170_55
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_55:              cmp              esi, 2;                              jne   .Lx170_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx170_41
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_56:              cmp              eax, 72;                             jne   .Lx170_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx170_41
                        cmp              rax, r8;                             je    .Lx170_41
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_41:              lea              r9, [rsp + 1536]
.Lx170_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx170_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx170_43
                        cmp              esi, 1;                              jne   .Lx170_57
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_57:              cmp              esi, 2;                              jne   .Lx170_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx170_43
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_58:              cmp              eax, 72;                             jne   .Lx170_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx170_43
                        cmp              rax, r9;                             je    .Lx170_43
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_43:              cmp              r8, r9;                              je    .Lx170_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx170_44
                        cmp              eax, 104;                            je    .Lx170_44
                        cmp              eax, 72;                             jne   .Lx170_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx170_44
                                                                              jmp   .Lx170_45
.Lx170_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx170_53
                        cmp              eax, 104;                            je    .Lx170_53
                        cmp              eax, 72;                             jne   .Lx170_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx170_53
                                                                              jmp   .Lx170_46
.Lx170_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx170_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx170_51
.Lx170_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx170_47
                        cmp              eax, 104;                            je    .Lx170_47
                        cmp              eax, 72;                             jne   .Lx170_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx170_47
                                                                              jmp   .Lx170_48
.Lx170_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx170_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx170_51
.Lx170_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx170_49
                        cmp              edx, 80;                             je    .Lx170_53
                                                                              jmp   .Lx170_52
.Lx170_49:              cmp              edx, 80;                             je    .Lx170_52
                        cmp              ecx, 5;                              je    .Lx170_53
                        cmp              edx, 5;                              je    .Lx170_53
                        cmp              ecx, 3;                              jne   .Lx170_50
                        cmp              edx, 3;                              jne   .Lx170_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx170_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx170_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx170_51
                                                                              jmp   .Lx170_52
.Lx170_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx170_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx170_53
.Lx170_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx170_54
.Lx170_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx170_54
.Lx170_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx170_54:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        lea              r8, [rsp + 1440]
.Lx175_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx175_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_41
                        cmp              esi, 1;                              jne   .Lx175_55
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_55:              cmp              esi, 2;                              jne   .Lx175_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx175_41
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_56:              cmp              eax, 72;                             jne   .Lx175_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_41
                        cmp              rax, r8;                             je    .Lx175_41
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_41:              lea              r9, [rsp + 1456]
.Lx175_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx175_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx175_43
                        cmp              esi, 1;                              jne   .Lx175_57
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_57:              cmp              esi, 2;                              jne   .Lx175_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx175_43
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_58:              cmp              eax, 72;                             jne   .Lx175_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx175_43
                        cmp              rax, r9;                             je    .Lx175_43
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_43:              cmp              r8, r9;                              je    .Lx175_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx175_44
                        cmp              eax, 104;                            je    .Lx175_44
                        cmp              eax, 72;                             jne   .Lx175_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx175_44
                                                                              jmp   .Lx175_45
.Lx175_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx175_53
                        cmp              eax, 104;                            je    .Lx175_53
                        cmp              eax, 72;                             jne   .Lx175_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx175_53
                                                                              jmp   .Lx175_46
.Lx175_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx175_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx175_51
.Lx175_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx175_47
                        cmp              eax, 104;                            je    .Lx175_47
                        cmp              eax, 72;                             jne   .Lx175_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx175_47
                                                                              jmp   .Lx175_48
.Lx175_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx175_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx175_51
.Lx175_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx175_49
                        cmp              edx, 80;                             je    .Lx175_53
                                                                              jmp   .Lx175_52
.Lx175_49:              cmp              edx, 80;                             je    .Lx175_52
                        cmp              ecx, 5;                              je    .Lx175_53
                        cmp              edx, 5;                              je    .Lx175_53
                        cmp              ecx, 3;                              jne   .Lx175_50
                        cmp              edx, 3;                              jne   .Lx175_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx175_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx175_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx175_51
                                                                              jmp   .Lx175_52
.Lx175_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx175_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx175_53
.Lx175_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx175_54
.Lx175_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx175_54
.Lx175_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx175_54:              mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        lea              r8, [rsp + 1360]
.Lx180_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx180_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              esi, 1;                              jne   .Lx180_55
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_55:              cmp              esi, 2;                              jne   .Lx180_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_56:              cmp              eax, 72;                             jne   .Lx180_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              rax, r8;                             je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_41:              lea              r9, [rsp + 1376]
.Lx180_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx180_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              esi, 1;                              jne   .Lx180_57
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_57:              cmp              esi, 2;                              jne   .Lx180_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_58:              cmp              eax, 72;                             jne   .Lx180_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              rax, r9;                             je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_43:              cmp              r8, r9;                              je    .Lx180_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx180_44
                        cmp              eax, 104;                            je    .Lx180_44
                        cmp              eax, 72;                             jne   .Lx180_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx180_44
                                                                              jmp   .Lx180_45
.Lx180_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx180_53
                        cmp              eax, 104;                            je    .Lx180_53
                        cmp              eax, 72;                             jne   .Lx180_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_53
                                                                              jmp   .Lx180_46
.Lx180_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx180_51
.Lx180_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx180_47
                        cmp              eax, 104;                            je    .Lx180_47
                        cmp              eax, 72;                             jne   .Lx180_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_47
                                                                              jmp   .Lx180_48
.Lx180_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx180_51
.Lx180_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx180_49
                        cmp              edx, 80;                             je    .Lx180_53
                                                                              jmp   .Lx180_52
.Lx180_49:              cmp              edx, 80;                             je    .Lx180_52
                        cmp              ecx, 5;                              je    .Lx180_53
                        cmp              edx, 5;                              je    .Lx180_53
                        cmp              ecx, 3;                              jne   .Lx180_50
                        cmp              edx, 3;                              jne   .Lx180_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx180_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx180_51
                                                                              jmp   .Lx180_52
.Lx180_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx180_53
.Lx180_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx180_54
.Lx180_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx180_54
.Lx180_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx180_54:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
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
.Lx185_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx185_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx185_41
                        cmp              esi, 1;                              jne   .Lx185_55
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_55:              cmp              esi, 2;                              jne   .Lx185_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx185_41
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_56:              cmp              eax, 72;                             jne   .Lx185_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx185_41
                        cmp              rax, r8;                             je    .Lx185_41
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_41:              lea              r9, [rsp + 1296]
.Lx185_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx185_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx185_43
                        cmp              esi, 1;                              jne   .Lx185_57
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_57:              cmp              esi, 2;                              jne   .Lx185_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx185_43
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_58:              cmp              eax, 72;                             jne   .Lx185_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx185_43
                        cmp              rax, r9;                             je    .Lx185_43
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_43:              cmp              r8, r9;                              je    .Lx185_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx185_44
                        cmp              eax, 104;                            je    .Lx185_44
                        cmp              eax, 72;                             jne   .Lx185_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx185_44
                                                                              jmp   .Lx185_45
.Lx185_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx185_53
                        cmp              eax, 104;                            je    .Lx185_53
                        cmp              eax, 72;                             jne   .Lx185_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx185_53
                                                                              jmp   .Lx185_46
.Lx185_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx185_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx185_51
.Lx185_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx185_47
                        cmp              eax, 104;                            je    .Lx185_47
                        cmp              eax, 72;                             jne   .Lx185_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx185_47
                                                                              jmp   .Lx185_48
.Lx185_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx185_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx185_51
.Lx185_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx185_49
                        cmp              edx, 80;                             je    .Lx185_53
                                                                              jmp   .Lx185_52
.Lx185_49:              cmp              edx, 80;                             je    .Lx185_52
                        cmp              ecx, 5;                              je    .Lx185_53
                        cmp              edx, 5;                              je    .Lx185_53
                        cmp              ecx, 3;                              jne   .Lx185_50
                        cmp              edx, 3;                              jne   .Lx185_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx185_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx185_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx185_51
                                                                              jmp   .Lx185_52
.Lx185_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx185_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx185_53
.Lx185_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx185_54
.Lx185_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx185_54
.Lx185_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_54:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_cut_α
n54_call_builtin_prolog_β:
                                                                              jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        lea              r8, [rsp + 1152]
.Lx192_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              esi, 1;                              jne   .Lx192_55
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_55:              cmp              esi, 2;                              jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_56:              cmp              eax, 72;                             jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              rax, r8;                             je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_41:              lea              r9, [rsp + 1168]
.Lx192_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              esi, 1;                              jne   .Lx192_57
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_57:              cmp              esi, 2;                              jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_58:              cmp              eax, 72;                             jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              rax, r9;                             je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_43:              cmp              r8, r9;                              je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx192_44
                        cmp              eax, 104;                            je    .Lx192_44
                        cmp              eax, 72;                             jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx192_44
                                                                              jmp   .Lx192_45
.Lx192_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx192_53
                        cmp              eax, 104;                            je    .Lx192_53
                        cmp              eax, 72;                             jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_53
                                                                              jmp   .Lx192_46
.Lx192_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx192_51
.Lx192_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx192_47
                        cmp              eax, 104;                            je    .Lx192_47
                        cmp              eax, 72;                             jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_47
                                                                              jmp   .Lx192_48
.Lx192_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx192_51
.Lx192_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx192_49
                        cmp              edx, 80;                             je    .Lx192_53
                                                                              jmp   .Lx192_52
.Lx192_49:              cmp              edx, 80;                             je    .Lx192_52
                        cmp              ecx, 5;                              je    .Lx192_53
                        cmp              edx, 5;                              je    .Lx192_53
                        cmp              ecx, 3;                              jne   .Lx192_50
                        cmp              edx, 3;                              jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx192_51
                                                                              jmp   .Lx192_52
.Lx192_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx192_53
.Lx192_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx192_54
.Lx192_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx192_54
.Lx192_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx192_54:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                                                                              jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.Lx197_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx197_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_41
                        cmp              esi, 1;                              jne   .Lx197_55
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_55:              cmp              esi, 2;                              jne   .Lx197_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx197_41
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_56:              cmp              eax, 72;                             jne   .Lx197_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_41
                        cmp              rax, r8;                             je    .Lx197_41
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_41:              lea              r9, [rsp + 1088]
.Lx197_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx197_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx197_43
                        cmp              esi, 1;                              jne   .Lx197_57
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_57:              cmp              esi, 2;                              jne   .Lx197_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx197_43
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_58:              cmp              eax, 72;                             jne   .Lx197_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx197_43
                        cmp              rax, r9;                             je    .Lx197_43
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_43:              cmp              r8, r9;                              je    .Lx197_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx197_44
                        cmp              eax, 104;                            je    .Lx197_44
                        cmp              eax, 72;                             jne   .Lx197_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx197_44
                                                                              jmp   .Lx197_45
.Lx197_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx197_53
                        cmp              eax, 104;                            je    .Lx197_53
                        cmp              eax, 72;                             jne   .Lx197_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx197_53
                                                                              jmp   .Lx197_46
.Lx197_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx197_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx197_51
.Lx197_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx197_47
                        cmp              eax, 104;                            je    .Lx197_47
                        cmp              eax, 72;                             jne   .Lx197_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx197_47
                                                                              jmp   .Lx197_48
.Lx197_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx197_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx197_51
.Lx197_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx197_49
                        cmp              edx, 80;                             je    .Lx197_53
                                                                              jmp   .Lx197_52
.Lx197_49:              cmp              edx, 80;                             je    .Lx197_52
                        cmp              ecx, 5;                              je    .Lx197_53
                        cmp              edx, 5;                              je    .Lx197_53
                        cmp              ecx, 3;                              jne   .Lx197_50
                        cmp              edx, 3;                              jne   .Lx197_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx197_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx197_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx197_51
                                                                              jmp   .Lx197_52
.Lx197_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx197_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx197_53
.Lx197_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx197_54
.Lx197_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx197_54
.Lx197_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx197_54:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_var_ref_α
n62_call_builtin_prolog_β:
                                                                              jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lx202_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_41
                        cmp              esi, 1;                              jne   .Lx202_55
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_55:              cmp              esi, 2;                              jne   .Lx202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx202_41
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_56:              cmp              eax, 72;                             jne   .Lx202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_41
                        cmp              rax, r8;                             je    .Lx202_41
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_41:              lea              r9, [rsp + 1008]
.Lx202_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx202_43
                        cmp              esi, 1;                              jne   .Lx202_57
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_57:              cmp              esi, 2;                              jne   .Lx202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx202_43
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_58:              cmp              eax, 72;                             jne   .Lx202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx202_43
                        cmp              rax, r9;                             je    .Lx202_43
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_43:              cmp              r8, r9;                              je    .Lx202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx202_44
                        cmp              eax, 104;                            je    .Lx202_44
                        cmp              eax, 72;                             jne   .Lx202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx202_44
                                                                              jmp   .Lx202_45
.Lx202_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx202_53
                        cmp              eax, 104;                            je    .Lx202_53
                        cmp              eax, 72;                             jne   .Lx202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx202_53
                                                                              jmp   .Lx202_46
.Lx202_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx202_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx202_51
.Lx202_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx202_47
                        cmp              eax, 104;                            je    .Lx202_47
                        cmp              eax, 72;                             jne   .Lx202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx202_47
                                                                              jmp   .Lx202_48
.Lx202_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx202_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx202_51
.Lx202_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx202_49
                        cmp              edx, 80;                             je    .Lx202_53
                                                                              jmp   .Lx202_52
.Lx202_49:              cmp              edx, 80;                             je    .Lx202_52
                        cmp              ecx, 5;                              je    .Lx202_53
                        cmp              edx, 5;                              je    .Lx202_53
                        cmp              ecx, 3;                              jne   .Lx202_50
                        cmp              edx, 3;                              jne   .Lx202_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx202_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx202_51
                                                                              jmp   .Lx202_52
.Lx202_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx202_53
.Lx202_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx202_54
.Lx202_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx202_54
.Lx202_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx202_54:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104;                            je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                                                                              jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
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
.Lx207_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx207_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_41
                        cmp              esi, 1;                              jne   .Lx207_55
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_55:              cmp              esi, 2;                              jne   .Lx207_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_41
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_56:              cmp              eax, 72;                             jne   .Lx207_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_41
                        cmp              rax, r8;                             je    .Lx207_41
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_41:              lea              r9, [rsp + 928]
.Lx207_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx207_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_43
                        cmp              esi, 1;                              jne   .Lx207_57
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_57:              cmp              esi, 2;                              jne   .Lx207_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_43
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_58:              cmp              eax, 72;                             jne   .Lx207_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_43
                        cmp              rax, r9;                             je    .Lx207_43
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_43:              cmp              r8, r9;                              je    .Lx207_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx207_44
                        cmp              eax, 104;                            je    .Lx207_44
                        cmp              eax, 72;                             jne   .Lx207_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx207_44
                                                                              jmp   .Lx207_45
.Lx207_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx207_53
                        cmp              eax, 104;                            je    .Lx207_53
                        cmp              eax, 72;                             jne   .Lx207_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_53
                                                                              jmp   .Lx207_46
.Lx207_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx207_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx207_51
.Lx207_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx207_47
                        cmp              eax, 104;                            je    .Lx207_47
                        cmp              eax, 72;                             jne   .Lx207_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_47
                                                                              jmp   .Lx207_48
.Lx207_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx207_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx207_51
.Lx207_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx207_49
                        cmp              edx, 80;                             je    .Lx207_53
                                                                              jmp   .Lx207_52
.Lx207_49:              cmp              edx, 80;                             je    .Lx207_52
                        cmp              ecx, 5;                              je    .Lx207_53
                        cmp              edx, 5;                              je    .Lx207_53
                        cmp              ecx, 3;                              jne   .Lx207_50
                        cmp              edx, 3;                              jne   .Lx207_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx207_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx207_51
                                                                              jmp   .Lx207_52
.Lx207_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx207_53
.Lx207_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx207_54
.Lx207_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx207_54
.Lx207_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx207_54:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_cut_α
n68_call_builtin_prolog_β:
                                                                              jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        lea              r8, [rsp + 784]
.Lx214_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx214_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_41
                        cmp              esi, 1;                              jne   .Lx214_55
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_55:              cmp              esi, 2;                              jne   .Lx214_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx214_41
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_56:              cmp              eax, 72;                             jne   .Lx214_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_41
                        cmp              rax, r8;                             je    .Lx214_41
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_41:              lea              r9, [rsp + 800]
.Lx214_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx214_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx214_43
                        cmp              esi, 1;                              jne   .Lx214_57
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_57:              cmp              esi, 2;                              jne   .Lx214_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx214_43
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_58:              cmp              eax, 72;                             jne   .Lx214_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx214_43
                        cmp              rax, r9;                             je    .Lx214_43
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_43:              cmp              r8, r9;                              je    .Lx214_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx214_44
                        cmp              eax, 104;                            je    .Lx214_44
                        cmp              eax, 72;                             jne   .Lx214_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx214_44
                                                                              jmp   .Lx214_45
.Lx214_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx214_53
                        cmp              eax, 104;                            je    .Lx214_53
                        cmp              eax, 72;                             jne   .Lx214_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx214_53
                                                                              jmp   .Lx214_46
.Lx214_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx214_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx214_51
.Lx214_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx214_47
                        cmp              eax, 104;                            je    .Lx214_47
                        cmp              eax, 72;                             jne   .Lx214_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx214_47
                                                                              jmp   .Lx214_48
.Lx214_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx214_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx214_51
.Lx214_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx214_49
                        cmp              edx, 80;                             je    .Lx214_53
                                                                              jmp   .Lx214_52
.Lx214_49:              cmp              edx, 80;                             je    .Lx214_52
                        cmp              ecx, 5;                              je    .Lx214_53
                        cmp              edx, 5;                              je    .Lx214_53
                        cmp              ecx, 3;                              jne   .Lx214_50
                        cmp              edx, 3;                              jne   .Lx214_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx214_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx214_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx214_51
                                                                              jmp   .Lx214_52
.Lx214_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx214_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx214_53
.Lx214_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx214_54
.Lx214_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx214_54
.Lx214_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx214_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                                                                              jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        lea              r8, [rsp + 704]
.Lx219_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx219_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_41
                        cmp              esi, 1;                              jne   .Lx219_55
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_55:              cmp              esi, 2;                              jne   .Lx219_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_41
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_56:              cmp              eax, 72;                             jne   .Lx219_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_41
                        cmp              rax, r8;                             je    .Lx219_41
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_41:              lea              r9, [rsp + 720]
.Lx219_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx219_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_43
                        cmp              esi, 1;                              jne   .Lx219_57
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_57:              cmp              esi, 2;                              jne   .Lx219_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_43
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_58:              cmp              eax, 72;                             jne   .Lx219_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_43
                        cmp              rax, r9;                             je    .Lx219_43
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_43:              cmp              r8, r9;                              je    .Lx219_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx219_44
                        cmp              eax, 104;                            je    .Lx219_44
                        cmp              eax, 72;                             jne   .Lx219_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx219_44
                                                                              jmp   .Lx219_45
.Lx219_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx219_53
                        cmp              eax, 104;                            je    .Lx219_53
                        cmp              eax, 72;                             jne   .Lx219_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_53
                                                                              jmp   .Lx219_46
.Lx219_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx219_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx219_51
.Lx219_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx219_47
                        cmp              eax, 104;                            je    .Lx219_47
                        cmp              eax, 72;                             jne   .Lx219_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_47
                                                                              jmp   .Lx219_48
.Lx219_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx219_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx219_51
.Lx219_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx219_49
                        cmp              edx, 80;                             je    .Lx219_53
                                                                              jmp   .Lx219_52
.Lx219_49:              cmp              edx, 80;                             je    .Lx219_52
                        cmp              ecx, 5;                              je    .Lx219_53
                        cmp              edx, 5;                              je    .Lx219_53
                        cmp              ecx, 3;                              jne   .Lx219_50
                        cmp              edx, 3;                              jne   .Lx219_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx219_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx219_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx219_51
                                                                              jmp   .Lx219_52
.Lx219_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx219_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx219_53
.Lx219_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx219_54
.Lx219_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx219_54
.Lx219_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx219_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                                                                              jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx224_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx224_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              esi, 1;                              jne   .Lx224_55
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_55:              cmp              esi, 2;                              jne   .Lx224_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_56:              cmp              eax, 72;                             jne   .Lx224_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              rax, r8;                             je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_41:              lea              r9, [rsp + 640]
.Lx224_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx224_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              esi, 1;                              jne   .Lx224_57
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_57:              cmp              esi, 2;                              jne   .Lx224_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_58:              cmp              eax, 72;                             jne   .Lx224_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              rax, r9;                             je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_43:              cmp              r8, r9;                              je    .Lx224_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx224_44
                        cmp              eax, 104;                            je    .Lx224_44
                        cmp              eax, 72;                             jne   .Lx224_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx224_44
                                                                              jmp   .Lx224_45
.Lx224_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx224_53
                        cmp              eax, 104;                            je    .Lx224_53
                        cmp              eax, 72;                             jne   .Lx224_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_53
                                                                              jmp   .Lx224_46
.Lx224_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx224_51
.Lx224_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx224_47
                        cmp              eax, 104;                            je    .Lx224_47
                        cmp              eax, 72;                             jne   .Lx224_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_47
                                                                              jmp   .Lx224_48
.Lx224_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx224_51
.Lx224_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx224_49
                        cmp              edx, 80;                             je    .Lx224_53
                                                                              jmp   .Lx224_52
.Lx224_49:              cmp              edx, 80;                             je    .Lx224_52
                        cmp              ecx, 5;                              je    .Lx224_53
                        cmp              edx, 5;                              je    .Lx224_53
                        cmp              ecx, 3;                              jne   .Lx224_50
                        cmp              edx, 3;                              jne   .Lx224_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx224_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx224_51
                                                                              jmp   .Lx224_52
.Lx224_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx224_53
.Lx224_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx224_54
.Lx224_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx224_54
.Lx224_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                                                                              jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n82_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        lea              r8, [rsp + 544]
.Lx229_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx229_41
                        cmp              esi, 1;                              jne   .Lx229_55
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_55:              cmp              esi, 2;                              jne   .Lx229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx229_41
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_56:              cmp              eax, 72;                             jne   .Lx229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx229_41
                        cmp              rax, r8;                             je    .Lx229_41
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_41:              lea              r9, [rsp + 560]
.Lx229_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx229_43
                        cmp              esi, 1;                              jne   .Lx229_57
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_57:              cmp              esi, 2;                              jne   .Lx229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx229_43
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_58:              cmp              eax, 72;                             jne   .Lx229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx229_43
                        cmp              rax, r9;                             je    .Lx229_43
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_43:              cmp              r8, r9;                              je    .Lx229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx229_44
                        cmp              eax, 104;                            je    .Lx229_44
                        cmp              eax, 72;                             jne   .Lx229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx229_44
                                                                              jmp   .Lx229_45
.Lx229_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx229_53
                        cmp              eax, 104;                            je    .Lx229_53
                        cmp              eax, 72;                             jne   .Lx229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx229_53
                                                                              jmp   .Lx229_46
.Lx229_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx229_51
.Lx229_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx229_47
                        cmp              eax, 104;                            je    .Lx229_47
                        cmp              eax, 72;                             jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx229_47
                                                                              jmp   .Lx229_48
.Lx229_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx229_51
.Lx229_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx229_49
                        cmp              edx, 80;                             je    .Lx229_53
                                                                              jmp   .Lx229_52
.Lx229_49:              cmp              edx, 80;                             je    .Lx229_52
                        cmp              ecx, 5;                              je    .Lx229_53
                        cmp              edx, 5;                              je    .Lx229_53
                        cmp              ecx, 3;                              jne   .Lx229_50
                        cmp              edx, 3;                              jne   .Lx229_50
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
.Lx229_54:              mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_cut_α
n82_call_builtin_prolog_β:
                                                                              jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_cut_α:                                                                    jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx236_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx236_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx236_41
                        cmp              esi, 1;                              jne   .Lx236_55
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_55:              cmp              esi, 2;                              jne   .Lx236_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx236_41
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_56:              cmp              eax, 72;                             jne   .Lx236_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx236_41
                        cmp              rax, r8;                             je    .Lx236_41
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_41:              lea              r9, [rsp + 432]
.Lx236_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx236_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx236_43
                        cmp              esi, 1;                              jne   .Lx236_57
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_57:              cmp              esi, 2;                              jne   .Lx236_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx236_43
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_58:              cmp              eax, 72;                             jne   .Lx236_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx236_43
                        cmp              rax, r9;                             je    .Lx236_43
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_43:              cmp              r8, r9;                              je    .Lx236_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx236_44
                        cmp              eax, 104;                            je    .Lx236_44
                        cmp              eax, 72;                             jne   .Lx236_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx236_44
                                                                              jmp   .Lx236_45
.Lx236_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx236_53
                        cmp              eax, 104;                            je    .Lx236_53
                        cmp              eax, 72;                             jne   .Lx236_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx236_53
                                                                              jmp   .Lx236_46
.Lx236_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx236_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx236_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx236_51
.Lx236_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx236_47
                        cmp              eax, 104;                            je    .Lx236_47
                        cmp              eax, 72;                             jne   .Lx236_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx236_47
                                                                              jmp   .Lx236_48
.Lx236_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx236_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx236_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx236_51
.Lx236_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx236_49
                        cmp              edx, 80;                             je    .Lx236_53
                                                                              jmp   .Lx236_52
.Lx236_49:              cmp              edx, 80;                             je    .Lx236_52
                        cmp              ecx, 5;                              je    .Lx236_53
                        cmp              edx, 5;                              je    .Lx236_53
                        cmp              ecx, 3;                              jne   .Lx236_50
                        cmp              edx, 3;                              jne   .Lx236_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx236_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx236_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx236_51
                                                                              jmp   .Lx236_52
.Lx236_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx236_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx236_53
.Lx236_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx236_54
.Lx236_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx236_54
.Lx236_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx236_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                                                                              jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
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
.Lx241_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx241_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_41
                        cmp              esi, 1;                              jne   .Lx241_55
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_55:              cmp              esi, 2;                              jne   .Lx241_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_41
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_56:              cmp              eax, 72;                             jne   .Lx241_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_41
                        cmp              rax, r8;                             je    .Lx241_41
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_41:              lea              r9, [rsp + 352]
.Lx241_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx241_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_43
                        cmp              esi, 1;                              jne   .Lx241_57
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_57:              cmp              esi, 2;                              jne   .Lx241_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_43
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_58:              cmp              eax, 72;                             jne   .Lx241_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_43
                        cmp              rax, r9;                             je    .Lx241_43
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_43:              cmp              r8, r9;                              je    .Lx241_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx241_44
                        cmp              eax, 104;                            je    .Lx241_44
                        cmp              eax, 72;                             jne   .Lx241_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx241_44
                                                                              jmp   .Lx241_45
.Lx241_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx241_53
                        cmp              eax, 104;                            je    .Lx241_53
                        cmp              eax, 72;                             jne   .Lx241_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_53
                                                                              jmp   .Lx241_46
.Lx241_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx241_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx241_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx241_51
.Lx241_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx241_47
                        cmp              eax, 104;                            je    .Lx241_47
                        cmp              eax, 72;                             jne   .Lx241_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_47
                                                                              jmp   .Lx241_48
.Lx241_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx241_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx241_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx241_51
.Lx241_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx241_49
                        cmp              edx, 80;                             je    .Lx241_53
                                                                              jmp   .Lx241_52
.Lx241_49:              cmp              edx, 80;                             je    .Lx241_52
                        cmp              ecx, 5;                              je    .Lx241_53
                        cmp              edx, 5;                              je    .Lx241_53
                        cmp              ecx, 3;                              jne   .Lx241_50
                        cmp              edx, 3;                              jne   .Lx241_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx241_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx241_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx241_51
                                                                              jmp   .Lx241_52
.Lx241_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx241_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx241_53
.Lx241_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx241_54
.Lx241_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx241_54
.Lx241_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx241_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                                                                              jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2720]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx246_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx246_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx246_41
                        cmp              esi, 1;                              jne   .Lx246_55
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_55:              cmp              esi, 2;                              jne   .Lx246_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx246_41
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_56:              cmp              eax, 72;                             jne   .Lx246_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx246_41
                        cmp              rax, r8;                             je    .Lx246_41
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_41:              lea              r9, [rsp + 272]
.Lx246_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx246_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx246_43
                        cmp              esi, 1;                              jne   .Lx246_57
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_57:              cmp              esi, 2;                              jne   .Lx246_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx246_43
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_58:              cmp              eax, 72;                             jne   .Lx246_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx246_43
                        cmp              rax, r9;                             je    .Lx246_43
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_43:              cmp              r8, r9;                              je    .Lx246_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx246_44
                        cmp              eax, 104;                            je    .Lx246_44
                        cmp              eax, 72;                             jne   .Lx246_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx246_44
                                                                              jmp   .Lx246_45
.Lx246_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx246_53
                        cmp              eax, 104;                            je    .Lx246_53
                        cmp              eax, 72;                             jne   .Lx246_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx246_53
                                                                              jmp   .Lx246_46
.Lx246_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx246_51
.Lx246_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx246_47
                        cmp              eax, 104;                            je    .Lx246_47
                        cmp              eax, 72;                             jne   .Lx246_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx246_47
                                                                              jmp   .Lx246_48
.Lx246_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx246_51
.Lx246_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx246_49
                        cmp              edx, 80;                             je    .Lx246_53
                                                                              jmp   .Lx246_52
.Lx246_49:              cmp              edx, 80;                             je    .Lx246_52
                        cmp              ecx, 5;                              je    .Lx246_53
                        cmp              edx, 5;                              je    .Lx246_53
                        cmp              ecx, 3;                              jne   .Lx246_50
                        cmp              edx, 3;                              jne   .Lx246_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx246_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx246_51
                                                                              jmp   .Lx246_52
.Lx246_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx246_53
.Lx246_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx246_54
.Lx246_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx246_54
.Lx246_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx246_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                              jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2704]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx251_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              esi, 1;                              jne   .Lx251_55
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_55:              cmp              esi, 2;                              jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_56:              cmp              eax, 72;                             jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              rax, r8;                             je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_41:              lea              r9, [rsp + 192]
.Lx251_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              esi, 1;                              jne   .Lx251_57
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_57:              cmp              esi, 2;                              jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_58:              cmp              eax, 72;                             jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              rax, r9;                             je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_43:              cmp              r8, r9;                              je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx251_44
                        cmp              eax, 104;                            je    .Lx251_44
                        cmp              eax, 72;                             jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx251_44
                                                                              jmp   .Lx251_45
.Lx251_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx251_53
                        cmp              eax, 104;                            je    .Lx251_53
                        cmp              eax, 72;                             jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_53
                                                                              jmp   .Lx251_46
.Lx251_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx251_51
.Lx251_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx251_47
                        cmp              eax, 104;                            je    .Lx251_47
                        cmp              eax, 72;                             jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_47
                                                                              jmp   .Lx251_48
.Lx251_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx251_51
.Lx251_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx251_49
                        cmp              edx, 80;                             je    .Lx251_53
                                                                              jmp   .Lx251_52
.Lx251_49:              cmp              edx, 80;                             je    .Lx251_52
                        cmp              ecx, 5;                              je    .Lx251_53
                        cmp              edx, 5;                              je    .Lx251_53
                        cmp              ecx, 3;                              jne   .Lx251_50
                        cmp              edx, 3;                              jne   .Lx251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx251_51
                                                                              jmp   .Lx251_52
.Lx251_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx251_53
.Lx251_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx251_54
.Lx251_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx251_54
.Lx251_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx251_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_suspend_α
n96_call_builtin_prolog_β:
                                                                              jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx253_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2688];         jmp   rax
.Lx253_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n97_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n97_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   differ$2F4_γ
n97_suspend_β:                                                                jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   differ$2F4_ω
n98_call_builtin_prolog_β:
                                                                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_β:
                                                                              jmp   n97_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx254_50
                        mov              qword ptr [rsp + 2688], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2688];         jmp   rax
.Lx254_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2840]
                        add              rsp, 2864;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2848]
                        add              rsp, 2864;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__puzzle$2F0:
                        sub              rsp, 1520
                        mov              qword ptr [rsp + 1496], rcx
                        mov              qword ptr [rsp + 1504], rdx
                        mov              qword ptr [rsp + 1512], rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx295_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx295_101
.Lx295_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx295_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx295_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx295_101
.Lx295_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx295_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_var_ref_α
n255_call_builtin_prolog_β:
                                                                              jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        mov              qword ptr [rsp + 1312], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx299_20
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx299_21
.Lx299_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx299_21:              lea              rax, [rip + .Lx299_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx299_1
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4];               jmp   rax
.Lx299_3:               mov              qword ptr [rsp + 1320], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1312]
                        test             rax, rax;                            jne   .Lx299_5
                        mov              qword ptr [rsp + 1312], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx299_2
.Lx299_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx299_2
.Lx299_4:               mov              rax, qword ptr [rsp + 1312]
                        test             rax, rax;                            jne   .Lx299_6
                        mov              qword ptr [rsp + 1312], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx299_2
.Lx299_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx299_2
.Lx299_1:               call             rt_faildescr@PLT
.Lx299_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx299_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
.Lx299_29:              mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n294_call_builtin_prolog_α
                                                                              jmp   n258_var_ref_α
n257_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1312], 0
                        lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n294_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n294_call_builtin_prolog_α
                        lea              r11, [rip + .Lx299_7]
                        push             r11
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4];               jmp   rax
.Lx299_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n294_call_builtin_prolog_α
                                                                              jmp   n258_var_ref_α
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n259_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_proc_staged_α:
                        mov              qword ptr [rsp + 1232], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_20
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx303_21
.Lx303_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_21:              lea              rax, [rip + .Lx303_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx303_1
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4];               jmp   rax
.Lx303_3:               mov              qword ptr [rsp + 1240], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1232]
                        test             rax, rax;                            jne   .Lx303_5
                        mov              qword ptr [rsp + 1232], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx303_2
.Lx303_4:               mov              rax, qword ptr [rsp + 1232]
                        test             rax, rax;                            jne   .Lx303_6
                        mov              qword ptr [rsp + 1232], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx303_2
.Lx303_1:               call             rt_faildescr@PLT
.Lx303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx303_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
.Lx303_29:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n257_call_proc_staged_β
                                                                              jmp   n260_var_ref_α
n259_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1232], 0
                        lea              rdi, [rsp + 1248]
                        lea              rsi, [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n257_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n257_call_proc_staged_β
                        lea              r11, [rip + .Lx303_7]
                        push             r11
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4];               jmp   rax
.Lx303_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n257_call_proc_staged_β
                                                                              jmp   n260_var_ref_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n261_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_proc_staged_α:
                        mov              qword ptr [rsp + 1152], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx307_20
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx307_21
.Lx307_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx307_21:              lea              rax, [rip + .Lx307_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx307_1
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4];               jmp   rax
.Lx307_3:               mov              qword ptr [rsp + 1160], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx307_5
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx307_2
.Lx307_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx307_2
.Lx307_4:               mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx307_6
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx307_2
.Lx307_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx307_2
.Lx307_1:               call             rt_faildescr@PLT
.Lx307_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx307_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
.Lx307_29:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n259_call_proc_staged_β
                                                                              jmp   n262_var_ref_α
n261_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1152], 0
                        lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n259_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n259_call_proc_staged_β
                        lea              r11, [rip + .Lx307_7]
                        push             r11
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4];               jmp   rax
.Lx307_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n259_call_proc_staged_β
                                                                              jmp   n262_var_ref_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n263_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n263_call_proc_staged_α:
                        mov              qword ptr [rsp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx311_20
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx311_21
.Lx311_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx311_21:              lea              rax, [rip + .Lx311_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx311_1
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4];               jmp   rax
.Lx311_3:               mov              qword ptr [rsp + 1080], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1072]
                        test             rax, rax;                            jne   .Lx311_5
                        mov              qword ptr [rsp + 1072], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx311_2
.Lx311_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx311_2
.Lx311_4:               mov              rax, qword ptr [rsp + 1072]
                        test             rax, rax;                            jne   .Lx311_6
                        mov              qword ptr [rsp + 1072], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx311_2
.Lx311_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx311_2
.Lx311_1:               call             rt_faildescr@PLT
.Lx311_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx311_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx311_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n261_call_proc_staged_β
                                                                              jmp   n264_var_ref_α
n263_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1072], 0
                        lea              rdi, [rsp + 1088]
                        lea              rsi, [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n261_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n261_call_proc_staged_β
                        lea              r11, [rip + .Lx311_7]
                        push             r11
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4];               jmp   rax
.Lx311_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n261_call_proc_staged_β
                                                                              jmp   n264_var_ref_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n265_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n266_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n268_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_proc_staged_α:
                        mov              qword ptr [rsp + 944], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_20
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx321_21
.Lx321_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_22
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx321_23
.Lx321_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_24
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx321_25
.Lx321_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_26
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx321_27
.Lx321_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_27:              lea              rax, [rip + .Lx321_7]
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
                        test             rax, rax;                            je    .Lx321_1
                        lea              rcx, [rip + .Lx321_3]
                        lea              rdx, [rip + .Lx321_4];               jmp   rax
.Lx321_3:               mov              qword ptr [rsp + 952], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lx321_5
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx321_2
.Lx321_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx321_2
.Lx321_4:               mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lx321_6
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx321_2
.Lx321_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx321_2
.Lx321_1:               call             rt_faildescr@PLT
.Lx321_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx321_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx321_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n263_call_proc_staged_β
                                                                              jmp   n269_var_ref_α
n268_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 944], 0
                        lea              rdi, [rsp + 960]
                        lea              rsi, [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n263_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              ecx, 80
                        mov              r8d, 2688
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
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
                        test             rax, rax;                            je    n263_call_proc_staged_β
                        lea              r11, [rip + .Lx321_7]
                        push             r11
                        lea              rcx, [rip + .Lx321_3]
                        lea              rdx, [rip + .Lx321_4];               jmp   rax
.Lx321_7:               add              rsp, 8
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n263_call_proc_staged_β
                                                                              jmp   n269_var_ref_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "differ/4"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 9
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n271_call_builtin_prolog_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              rsi, qword ptr [rip + .Lx325_2];     jmp   .Lx325_3
.Lx325_2:               .quad            .Lx325_2_s
.Lx325_2_s:             .string          "architect"
.Lx325_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n268_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_var_ref_α
n271_call_builtin_prolog_β:
                                                                              jmp   n268_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n273_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n274_call_builtin_prolog_α
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              rsi, qword ptr [rip + .Lx329_2];     jmp   .Lx329_3
.Lx329_2:               .quad            .Lx329_2_s
.Lx329_2_s:             .string          "banker"
.Lx329_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n268_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_var_ref_α
n274_call_builtin_prolog_β:
                                                                              jmp   n268_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n276_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n277_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx335_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx335_21
.Lx335_20:              mov              edi, 0
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
.Lx335_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx335_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx335_23
.Lx335_22:              mov              edi, 1
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
.Lx335_23:              lea              rax, [rip + .Lx335_7]
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
                        test             rax, rax;                            je    .Lx335_1
                        lea              rcx, [rip + .Lx335_3]
                        lea              rdx, [rip + .Lx335_4];               jmp   rax
.Lx335_3:               mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx335_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx335_2
.Lx335_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx335_2
.Lx335_4:               mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx335_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx335_2
.Lx335_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx335_2
.Lx335_1:               call             rt_faildescr@PLT
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx335_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n268_call_proc_staged_β
                                                                              jmp   n278_var_ref_α
n277_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 640], 0
                        lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n268_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              ecx, 48
                        mov              r8d, 1552
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
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
                        test             rax, rax;                            je    n268_call_proc_staged_β
                        lea              r11, [rip + .Lx335_7]
                        push             r11
                        lea              rcx, [rip + .Lx335_3]
                        lea              rdx, [rip + .Lx335_4];               jmp   rax
.Lx335_7:               add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n268_call_proc_staged_β
                                                                              jmp   n278_var_ref_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "income/2"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n279_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n280_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_proc_staged_α:
                        mov              qword ptr [rsp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_20
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx341_21
.Lx341_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx341_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_22
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx341_23
.Lx341_22:              mov              edi, 1
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
.Lx341_23:              lea              rax, [rip + .Lx341_7]
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
                        test             rax, rax;                            je    .Lx341_1
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4];               jmp   rax
.Lx341_3:               mov              qword ptr [rsp + 536], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx341_5
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx341_2
.Lx341_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx341_2
.Lx341_4:               mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx341_6
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx341_2
.Lx341_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx341_2
.Lx341_1:               call             rt_faildescr@PLT
.Lx341_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx341_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lx341_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n277_call_proc_staged_β
                                                                              jmp   n281_var_α
n280_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 528], 0
                        lea              rdi, [rsp + 544]
                        lea              rsi, [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n277_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              ecx, 48
                        mov              r8d, 1552
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
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
                        test             rax, rax;                            je    n277_call_proc_staged_β
                        lea              r11, [rip + .Lx341_7]
                        push             r11
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4];               jmp   rax
.Lx341_7:               add              rsp, 8
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n277_call_proc_staged_β
                                                                              jmp   n281_var_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "income/2"
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 376], rax;          jmp   n282_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n283_var_α
.Lx344_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 472], rax;          jmp   n284_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n294_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_call_builtin_prolog_α
n284_call_builtin_prolog_β:
                                                                              jmp   n294_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n280_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n286_var_α
n285_call_builtin_prolog_β:
                                                                              jmp   n280_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 296], rax;          jmp   n287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 312], rax;          jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n280_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_var_ref_α
n288_call_builtin_prolog_β:
                                                                              jmp   n280_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n290_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n293_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        lea              rcx, [rsp + 208]
                        lea              r8, [rsp + 224]
                        call             display$2F4_dcα;                     jmp   .Lx363_2
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx363_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n280_call_proc_staged_β
                                                                              jmp   n293_call_proc_staged_β
n293_call_proc_staged_β:
                                                                              jmp   n280_call_proc_staged_β
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "display/4"
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   puzzle$2F0_ω
n294_call_builtin_prolog_β:
                                                                              jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_β:
                                                                              jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx364_50
                        mov              qword ptr [rsp + 1360], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1360];         jmp   rax
.Lx364_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1496]
                        add              rsp, 1520;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1504]
                        add              rsp, 1520;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__occupation$2F1:
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rcx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 784
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
occupation$2F1_α_body:
                        lea              rax, [rip + n384_suspend_β]
                        mov              qword ptr [rsp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx386_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx386_101
.Lx386_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx386_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx386_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx386_101
.Lx386_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx386_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                              jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n368_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lx391_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx391_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx391_41
                        cmp              esi, 1;                              jne   .Lx391_55
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_55:              cmp              esi, 2;                              jne   .Lx391_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx391_41
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_56:              cmp              eax, 72;                             jne   .Lx391_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx391_41
                        cmp              rax, r8;                             je    .Lx391_41
                        mov              r8, rax;                             jmp   .Lx391_40
.Lx391_41:              lea              r9, [rsp + 688]
.Lx391_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx391_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx391_43
                        cmp              esi, 1;                              jne   .Lx391_57
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_57:              cmp              esi, 2;                              jne   .Lx391_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx391_43
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_58:              cmp              eax, 72;                             jne   .Lx391_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx391_43
                        cmp              rax, r9;                             je    .Lx391_43
                        mov              r9, rax;                             jmp   .Lx391_42
.Lx391_43:              cmp              r8, r9;                              je    .Lx391_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx391_44
                        cmp              eax, 104;                            je    .Lx391_44
                        cmp              eax, 72;                             jne   .Lx391_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx391_44
                                                                              jmp   .Lx391_45
.Lx391_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx391_53
                        cmp              eax, 104;                            je    .Lx391_53
                        cmp              eax, 72;                             jne   .Lx391_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx391_53
                                                                              jmp   .Lx391_46
.Lx391_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx391_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx391_51
.Lx391_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx391_47
                        cmp              eax, 104;                            je    .Lx391_47
                        cmp              eax, 72;                             jne   .Lx391_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx391_47
                                                                              jmp   .Lx391_48
.Lx391_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx391_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx391_51
.Lx391_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx391_49
                        cmp              edx, 80;                             je    .Lx391_53
                                                                              jmp   .Lx391_52
.Lx391_49:              cmp              edx, 80;                             je    .Lx391_52
                        cmp              ecx, 5;                              je    .Lx391_53
                        cmp              edx, 5;                              je    .Lx391_53
                        cmp              ecx, 3;                              jne   .Lx391_50
                        cmp              edx, 3;                              jne   .Lx391_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx391_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx391_51
                                                                              jmp   .Lx391_52
.Lx391_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx391_53
.Lx391_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx391_54
.Lx391_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx391_54
.Lx391_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx391_54:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n385_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_var_ref_α
n368_call_builtin_prolog_β:
                                                                              jmp   n385_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n371_lit_string_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 9
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n372_lit_string_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n373_lit_string_α
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n374_lit_string_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n375_lit_string_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 8
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n376_lit_string_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n377_lit_string_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n378_lit_string_α
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n379_call_builtin_prolog_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n380_call_builtin_prolog_α
n379_call_builtin_prolog_β:
                                                                              jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n381_call_builtin_prolog_α
n380_call_builtin_prolog_β:
                                                                              jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n382_call_builtin_prolog_α
n381_call_builtin_prolog_β:
                                                                              jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n385_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n383_call_proc_staged_α
n382_call_builtin_prolog_β:
                                                                              jmp   n385_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n383_call_proc_staged_α:
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx408_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx408_21
.Lx408_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx408_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx408_22
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx408_23
.Lx408_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx408_23:              lea              rax, [rip + .Lx408_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx408_1
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4];               jmp   rax
.Lx408_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx408_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx408_2
.Lx408_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx408_2
.Lx408_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx408_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx408_2
.Lx408_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx408_2
.Lx408_1:               call             rt_faildescr@PLT
.Lx408_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx408_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx408_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n385_call_builtin_prolog_α
                                                                              jmp   n384_suspend_α
n383_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n385_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n385_call_builtin_prolog_α
                        lea              r11, [rip + .Lx408_7]
                        push             r11
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4];               jmp   rax
.Lx408_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n385_call_builtin_prolog_α
                                                                              jmp   n384_suspend_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n384_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx410_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lx410_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n384_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n384_suspend_β]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n384_suspend_β:                                                               jmp   n383_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   occupation$2F1_ω
n385_call_builtin_prolog_β:
                                                                              jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_β:
                                                                              jmp   n384_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx411_50
                        mov              qword ptr [rsp + 736], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lx411_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 792]
                        add              rsp, 816;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_ω:
                        mov              rcx, qword ptr [rsp + 800]
                        add              rsp, 816;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F0:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$disj0$2F0_α_body:
                        lea              rax, [rip + n414_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx418_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx418_101
.Lx418_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx418_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx418_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx418_101
.Lx418_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx418_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n413_call_proc_staged_α
n412_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n413_call_proc_staged_α:
                        mov              qword ptr [rsp + 144], 0
                        lea              rax, [rip + .Lx420_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx420_1
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4];               jmp   rax
.Lx420_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx420_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx420_2
.Lx420_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx420_2
.Lx420_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx420_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx420_2
.Lx420_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx420_2
.Lx420_1:               call             rt_faildescr@PLT
.Lx420_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx420_29
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
.Lx420_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n415_call_builtin_prolog_α
                                                                              jmp   n414_suspend_α
n413_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n415_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 16
                        mov              r8d, 1360
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n415_call_builtin_prolog_α
                        lea              r11, [rip + .Lx420_7]
                        push             r11
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4];               jmp   rax
.Lx420_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n415_call_builtin_prolog_α
                                                                              jmp   n414_suspend_α
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n414_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx422_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx422_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n414_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n414_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n414_suspend_β:                                                               jmp   n413_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_suspend_α
n415_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx425_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx425_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n416_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n416_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n416_suspend_β:                                                               jmp   n417_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   $disj0$2F0_ω
n417_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_β:
                                                                              jmp   n414_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx426_50
                        mov              qword ptr [rsp + 176], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx426_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__income$2F2:
                        sub              rsp, 1632
                        mov              qword ptr [rsp + 1608], rcx
                        mov              qword ptr [rsp + 1616], rdx
                        mov              qword ptr [rsp + 1624], rsp
                        mov              rdi, rsp
                        mov              esi, 1552
                        mov              edx, 1600
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
income$2F2_α_body:
                        lea              rax, [rip + n439_suspend_β]
                        mov              qword ptr [rsp + 1552], rax
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx480_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx480_101
.Lx480_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx480_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx480_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx480_101
.Lx480_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx480_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    income$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n428_var_ref_α
n427_call_builtin_prolog_β:
                                                                              jmp   income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 6
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n430_call_builtin_prolog_α
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        lea              rdi, [rsp + 1488]
                        mov              rsi, qword ptr [rip + .Lx484_2];     jmp   .Lx484_3
.Lx484_2:               .quad            .Lx484_2_s
.Lx484_2_s:             .string          "banker"
.Lx484_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n440_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n431_var_ref_α
n430_call_builtin_prolog_β:
                                                                              jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n433_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n433_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        lea              r8, [rsp + 1408]
.Lx489_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx489_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx489_41
                        cmp              esi, 1;                              jne   .Lx489_55
                        mov              r8, rax;                             jmp   .Lx489_40
.Lx489_55:              cmp              esi, 2;                              jne   .Lx489_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx489_41
                        mov              r8, rax;                             jmp   .Lx489_40
.Lx489_56:              cmp              eax, 72;                             jne   .Lx489_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx489_41
                        cmp              rax, r8;                             je    .Lx489_41
                        mov              r8, rax;                             jmp   .Lx489_40
.Lx489_41:              lea              r9, [rsp + 1424]
.Lx489_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx489_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx489_43
                        cmp              esi, 1;                              jne   .Lx489_57
                        mov              r9, rax;                             jmp   .Lx489_42
.Lx489_57:              cmp              esi, 2;                              jne   .Lx489_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx489_43
                        mov              r9, rax;                             jmp   .Lx489_42
.Lx489_58:              cmp              eax, 72;                             jne   .Lx489_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx489_43
                        cmp              rax, r9;                             je    .Lx489_43
                        mov              r9, rax;                             jmp   .Lx489_42
.Lx489_43:              cmp              r8, r9;                              je    .Lx489_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx489_44
                        cmp              eax, 104;                            je    .Lx489_44
                        cmp              eax, 72;                             jne   .Lx489_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx489_44
                                                                              jmp   .Lx489_45
.Lx489_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx489_53
                        cmp              eax, 104;                            je    .Lx489_53
                        cmp              eax, 72;                             jne   .Lx489_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx489_53
                                                                              jmp   .Lx489_46
.Lx489_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx489_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx489_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx489_51
.Lx489_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx489_47
                        cmp              eax, 104;                            je    .Lx489_47
                        cmp              eax, 72;                             jne   .Lx489_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx489_47
                                                                              jmp   .Lx489_48
.Lx489_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx489_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx489_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx489_51
.Lx489_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx489_49
                        cmp              edx, 80;                             je    .Lx489_53
                                                                              jmp   .Lx489_52
.Lx489_49:              cmp              edx, 80;                             je    .Lx489_52
                        cmp              ecx, 5;                              je    .Lx489_53
                        cmp              edx, 5;                              je    .Lx489_53
                        cmp              ecx, 3;                              jne   .Lx489_50
                        cmp              edx, 3;                              jne   .Lx489_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx489_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx489_51
                                                                              jmp   .Lx489_52
.Lx489_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx489_53
.Lx489_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx489_54
.Lx489_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx489_54
.Lx489_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx489_54:              mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104;                            je    n440_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n434_var_ref_α
n433_call_builtin_prolog_β:
                                                                              jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n435_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n436_lit_integer_α
.Lx492_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:     mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n437_call_builtin_prolog_α
.Lx493_0:               .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n440_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                                                                              jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n440_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_suspend_α
n438_call_builtin_prolog_β:
                                                                              jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx497_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1552];         jmp   rax
.Lx497_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n439_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n439_suspend_β]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   income$2F2_γ
n439_suspend_β:                                                               jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    income$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_var_ref_α
n440_call_builtin_prolog_β:
                                                                              jmp   income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 9
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n443_call_builtin_prolog_α
.Lx501_0:               .quad            .Lx501_0_s
.Lx501_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              rsi, qword ptr [rip + .Lx502_2];     jmp   .Lx502_3
.Lx502_2:               .quad            .Lx502_2_s
.Lx502_2_s:             .string          "architect"
.Lx502_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n453_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_var_ref_α
n443_call_builtin_prolog_β:
                                                                              jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
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
.Lx507_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              esi, 1;                              jne   .Lx507_55
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_55:              cmp              esi, 2;                              jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_56:              cmp              eax, 72;                             jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              rax, r8;                             je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_41:              lea              r9, [rsp + 1056]
.Lx507_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              esi, 1;                              jne   .Lx507_57
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_57:              cmp              esi, 2;                              jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_58:              cmp              eax, 72;                             jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              rax, r9;                             je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_43:              cmp              r8, r9;                              je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx507_44
                        cmp              eax, 104;                            je    .Lx507_44
                        cmp              eax, 72;                             jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx507_44
                                                                              jmp   .Lx507_45
.Lx507_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx507_53
                        cmp              eax, 104;                            je    .Lx507_53
                        cmp              eax, 72;                             jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_53
                                                                              jmp   .Lx507_46
.Lx507_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx507_51
.Lx507_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx507_47
                        cmp              eax, 104;                            je    .Lx507_47
                        cmp              eax, 72;                             jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_47
                                                                              jmp   .Lx507_48
.Lx507_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx507_51
.Lx507_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx507_49
                        cmp              edx, 80;                             je    .Lx507_53
                                                                              jmp   .Lx507_52
.Lx507_49:              cmp              edx, 80;                             je    .Lx507_52
                        cmp              ecx, 5;                              je    .Lx507_53
                        cmp              edx, 5;                              je    .Lx507_53
                        cmp              ecx, 3;                              jne   .Lx507_50
                        cmp              edx, 3;                              jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx507_51
                                                                              jmp   .Lx507_52
.Lx507_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx507_53
.Lx507_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx507_54
.Lx507_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx507_54
.Lx507_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx507_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n453_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_var_ref_α
n446_call_builtin_prolog_β:
                                                                              jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n449_lit_integer_α
.Lx510_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:     mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n450_call_builtin_prolog_α
.Lx511_0:               .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n453_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_call_builtin_prolog_α
n450_call_builtin_prolog_β:
                                                                              jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n453_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_suspend_α
n451_call_builtin_prolog_β:
                                                                              jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n452_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx515_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1552];         jmp   rax
.Lx515_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n452_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n452_suspend_β]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   income$2F2_γ
n452_suspend_β:                                                               jmp   n453_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    income$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_var_ref_α
n453_call_builtin_prolog_β:
                                                                              jmp   income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n455_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 8
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n456_call_builtin_prolog_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        mov              rsi, qword ptr [rip + .Lx520_2];     jmp   .Lx520_3
.Lx520_2:               .quad            .Lx520_2_s
.Lx520_2_s:             .string          "druggist"
.Lx520_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n466_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                                                                              jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n459_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lx525_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx525_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx525_41
                        cmp              esi, 1;                              jne   .Lx525_55
                        mov              r8, rax;                             jmp   .Lx525_40
.Lx525_55:              cmp              esi, 2;                              jne   .Lx525_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx525_41
                        mov              r8, rax;                             jmp   .Lx525_40
.Lx525_56:              cmp              eax, 72;                             jne   .Lx525_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx525_41
                        cmp              rax, r8;                             je    .Lx525_41
                        mov              r8, rax;                             jmp   .Lx525_40
.Lx525_41:              lea              r9, [rsp + 688]
.Lx525_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx525_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx525_43
                        cmp              esi, 1;                              jne   .Lx525_57
                        mov              r9, rax;                             jmp   .Lx525_42
.Lx525_57:              cmp              esi, 2;                              jne   .Lx525_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx525_43
                        mov              r9, rax;                             jmp   .Lx525_42
.Lx525_58:              cmp              eax, 72;                             jne   .Lx525_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx525_43
                        cmp              rax, r9;                             je    .Lx525_43
                        mov              r9, rax;                             jmp   .Lx525_42
.Lx525_43:              cmp              r8, r9;                              je    .Lx525_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx525_44
                        cmp              eax, 104;                            je    .Lx525_44
                        cmp              eax, 72;                             jne   .Lx525_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx525_44
                                                                              jmp   .Lx525_45
.Lx525_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx525_53
                        cmp              eax, 104;                            je    .Lx525_53
                        cmp              eax, 72;                             jne   .Lx525_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx525_53
                                                                              jmp   .Lx525_46
.Lx525_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx525_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx525_51
.Lx525_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx525_47
                        cmp              eax, 104;                            je    .Lx525_47
                        cmp              eax, 72;                             jne   .Lx525_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx525_47
                                                                              jmp   .Lx525_48
.Lx525_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx525_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx525_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx525_51
.Lx525_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx525_49
                        cmp              edx, 80;                             je    .Lx525_53
                                                                              jmp   .Lx525_52
.Lx525_49:              cmp              edx, 80;                             je    .Lx525_52
                        cmp              ecx, 5;                              je    .Lx525_53
                        cmp              edx, 5;                              je    .Lx525_53
                        cmp              ecx, 3;                              jne   .Lx525_50
                        cmp              edx, 3;                              jne   .Lx525_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx525_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx525_51
                                                                              jmp   .Lx525_52
.Lx525_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx525_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx525_53
.Lx525_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx525_54
.Lx525_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx525_54
.Lx525_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_54:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n466_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_var_ref_α
n459_call_builtin_prolog_β:
                                                                              jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n461_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n462_lit_integer_α
.Lx528_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n463_call_builtin_prolog_α
.Lx529_0:               .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n463_call_builtin_prolog_α:
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
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n466_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_call_builtin_prolog_α
n463_call_builtin_prolog_β:
                                                                              jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    n466_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n465_suspend_α
n464_call_builtin_prolog_β:
                                                                              jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx533_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1552];         jmp   rax
.Lx533_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n465_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n465_suspend_β]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   income$2F2_γ
n465_suspend_β:                                                               jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    income$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n467_var_ref_α
n466_call_builtin_prolog_β:
                                                                              jmp   income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n469_call_builtin_prolog_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              rsi, qword ptr [rip + .Lx538_2];     jmp   .Lx538_3
.Lx538_2:               .quad            .Lx538_2_s
.Lx538_2_s:             .string          "grocer"
.Lx538_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n479_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_var_ref_α
n469_call_builtin_prolog_β:
                                                                              jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n471_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n472_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lx543_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              esi, 1;                              jne   .Lx543_55
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_55:              cmp              esi, 2;                              jne   .Lx543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_56:              cmp              eax, 72;                             jne   .Lx543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              rax, r8;                             je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_41:              lea              r9, [rsp + 320]
.Lx543_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              esi, 1;                              jne   .Lx543_57
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_57:              cmp              esi, 2;                              jne   .Lx543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_58:              cmp              eax, 72;                             jne   .Lx543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              rax, r9;                             je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_43:              cmp              r8, r9;                              je    .Lx543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx543_44
                        cmp              eax, 104;                            je    .Lx543_44
                        cmp              eax, 72;                             jne   .Lx543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx543_44
                                                                              jmp   .Lx543_45
.Lx543_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx543_53
                        cmp              eax, 104;                            je    .Lx543_53
                        cmp              eax, 72;                             jne   .Lx543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_53
                                                                              jmp   .Lx543_46
.Lx543_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx543_51
.Lx543_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx543_47
                        cmp              eax, 104;                            je    .Lx543_47
                        cmp              eax, 72;                             jne   .Lx543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_47
                                                                              jmp   .Lx543_48
.Lx543_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx543_51
.Lx543_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx543_49
                        cmp              edx, 80;                             je    .Lx543_53
                                                                              jmp   .Lx543_52
.Lx543_49:              cmp              edx, 80;                             je    .Lx543_52
                        cmp              ecx, 5;                              je    .Lx543_53
                        cmp              edx, 5;                              je    .Lx543_53
                        cmp              ecx, 3;                              jne   .Lx543_50
                        cmp              edx, 3;                              jne   .Lx543_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx543_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx543_51
                                                                              jmp   .Lx543_52
.Lx543_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx543_53
.Lx543_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx543_54
.Lx543_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx543_54
.Lx543_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx543_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n479_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_var_ref_α
n472_call_builtin_prolog_β:
                                                                              jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n475_lit_integer_α
.Lx546_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n476_call_builtin_prolog_α
.Lx547_0:               .quad            944
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n479_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n477_call_builtin_prolog_α
n476_call_builtin_prolog_β:
                                                                              jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n479_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_suspend_α
n477_call_builtin_prolog_β:
                                                                              jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx551_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1552];         jmp   rax
.Lx551_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n478_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n478_suspend_β]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   income$2F2_γ
n478_suspend_β:                                                               jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    income$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   income$2F2_ω
n479_call_builtin_prolog_β:
                                                                              jmp   income$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
income$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
income$2F2_β:
                                                                              jmp   n439_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
income$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx552_50
                        mov              qword ptr [rsp + 1552], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1552];         jmp   rax
.Lx552_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1608]
                        add              rsp, 1632;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
income$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1616]
                        add              rsp, 1632;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__member$2F2:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
member$2F2_α_body:
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n553_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx575_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx575_101
.Lx575_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx575_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx575_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx575_101
.Lx575_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx575_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n554_var_ref_α
n553_call_builtin_prolog_β:
                                                                              jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n555_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n556_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lx580_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx580_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx580_41
                        cmp              esi, 1;                              jne   .Lx580_55
                        mov              r8, rax;                             jmp   .Lx580_40
.Lx580_55:              cmp              esi, 2;                              jne   .Lx580_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx580_41
                        mov              r8, rax;                             jmp   .Lx580_40
.Lx580_56:              cmp              eax, 72;                             jne   .Lx580_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx580_41
                        cmp              rax, r8;                             je    .Lx580_41
                        mov              r8, rax;                             jmp   .Lx580_40
.Lx580_41:              lea              r9, [rsp + 608]
.Lx580_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx580_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx580_43
                        cmp              esi, 1;                              jne   .Lx580_57
                        mov              r9, rax;                             jmp   .Lx580_42
.Lx580_57:              cmp              esi, 2;                              jne   .Lx580_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx580_43
                        mov              r9, rax;                             jmp   .Lx580_42
.Lx580_58:              cmp              eax, 72;                             jne   .Lx580_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx580_43
                        cmp              rax, r9;                             je    .Lx580_43
                        mov              r9, rax;                             jmp   .Lx580_42
.Lx580_43:              cmp              r8, r9;                              je    .Lx580_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx580_44
                        cmp              eax, 104;                            je    .Lx580_44
                        cmp              eax, 72;                             jne   .Lx580_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx580_44
                                                                              jmp   .Lx580_45
.Lx580_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx580_53
                        cmp              eax, 104;                            je    .Lx580_53
                        cmp              eax, 72;                             jne   .Lx580_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx580_53
                                                                              jmp   .Lx580_46
.Lx580_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx580_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx580_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx580_51
.Lx580_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx580_47
                        cmp              eax, 104;                            je    .Lx580_47
                        cmp              eax, 72;                             jne   .Lx580_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx580_47
                                                                              jmp   .Lx580_48
.Lx580_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx580_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx580_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx580_51
.Lx580_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx580_49
                        cmp              edx, 80;                             je    .Lx580_53
                                                                              jmp   .Lx580_52
.Lx580_49:              cmp              edx, 80;                             je    .Lx580_52
                        cmp              ecx, 5;                              je    .Lx580_53
                        cmp              edx, 5;                              je    .Lx580_53
                        cmp              ecx, 3;                              jne   .Lx580_50
                        cmp              edx, 3;                              jne   .Lx580_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx580_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx580_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx580_51
                                                                              jmp   .Lx580_52
.Lx580_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx580_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx580_53
.Lx580_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx580_54
.Lx580_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx580_54
.Lx580_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_54:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n557_var_ref_α
n556_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n558_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n560_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_prolog_α:
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
.Lx587_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx587_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_61
                        cmp              esi, 1;                              jne   .Lx587_62
                        mov              r8, rax;                             jmp   .Lx587_60
.Lx587_62:              cmp              esi, 2;                              jne   .Lx587_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_61
                        mov              r8, rax;                             jmp   .Lx587_60
.Lx587_63:              cmp              eax, 72;                             jne   .Lx587_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_61
                        cmp              rax, r8;                             je    .Lx587_61
                        mov              r8, rax;                             jmp   .Lx587_60
.Lx587_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx587_80
                        cmp              eax, 104;                            je    .Lx587_80
                        cmp              eax, 72;                             jne   .Lx587_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx587_80
                                                                              jmp   .Lx587_74
.Lx587_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80;                             jne   .Lx587_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx587_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx587_73
                        lea              r9, [rsp + 512]
.Lx587_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx587_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_65
                        cmp              esi, 1;                              jne   .Lx587_66
                        mov              r9, rax;                             jmp   .Lx587_64
.Lx587_66:              cmp              esi, 2;                              jne   .Lx587_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_65
                        mov              r9, rax;                             jmp   .Lx587_64
.Lx587_67:              cmp              eax, 72;                             jne   .Lx587_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_65
                        cmp              rax, r9;                             je    .Lx587_65
                        mov              r9, rax;                             jmp   .Lx587_64
.Lx587_65:              lea              rcx, [rsp + 528]
.Lx587_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40;                             jne   .Lx587_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx587_69
                        cmp              esi, 1;                              jne   .Lx587_70
                        mov              rcx, rax;                            jmp   .Lx587_68
.Lx587_70:              cmp              esi, 2;                              jne   .Lx587_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_69
                        mov              rcx, rax;                            jmp   .Lx587_68
.Lx587_71:              cmp              eax, 72;                             jne   .Lx587_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx587_69
                        cmp              rax, rcx;                            je    .Lx587_69
                        mov              rcx, rax;                            jmp   .Lx587_68
.Lx587_69:              cmp              r9, rcx;                             je    .Lx587_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx587_75
                        cmp              eax, 104;                            je    .Lx587_75
                        cmp              eax, 72;                             jne   .Lx587_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_75
                                                                              jmp   .Lx587_72
.Lx587_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0;                              je    .Lx587_76
                        cmp              eax, 104;                            je    .Lx587_76
                        cmp              eax, 72;                             jne   .Lx587_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx587_76
                                                                              jmp   .Lx587_72
.Lx587_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx587_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx587_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx587_77
.Lx587_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx587_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx587_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx587_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx587_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx587_72
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
                        lea              r9, [rsp + 512]
.Lx587_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx587_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_82
                        cmp              esi, 1;                              jne   .Lx587_83
                        mov              r9, rax;                             jmp   .Lx587_81
.Lx587_83:              cmp              esi, 2;                              jne   .Lx587_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_82
                        mov              r9, rax;                             jmp   .Lx587_81
.Lx587_84:              cmp              eax, 72;                             jne   .Lx587_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_82
                        cmp              rax, r9;                             je    .Lx587_82
                        mov              r9, rax;                             jmp   .Lx587_81
.Lx587_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx587_85
                        cmp              eax, 104;                            je    .Lx587_85
                        cmp              eax, 72;                             jne   .Lx587_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_85
                                                                              jmp   .Lx587_86
.Lx587_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx587_87
.Lx587_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx587_87:              lea              rcx, [rsp + 528]
.Lx587_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40;                             jne   .Lx587_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx587_89
                        cmp              esi, 1;                              jne   .Lx587_90
                        mov              rcx, rax;                            jmp   .Lx587_88
.Lx587_90:              cmp              esi, 2;                              jne   .Lx587_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_89
                        mov              rcx, rax;                            jmp   .Lx587_88
.Lx587_91:              cmp              eax, 72;                             jne   .Lx587_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx587_89
                        cmp              rax, rcx;                            je    .Lx587_89
                        mov              rcx, rax;                            jmp   .Lx587_88
.Lx587_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0;                              je    .Lx587_92
                        cmp              eax, 104;                            je    .Lx587_92
                        cmp              eax, 72;                             jne   .Lx587_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx587_92
                                                                              jmp   .Lx587_93
.Lx587_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx587_94
.Lx587_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx587_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx587_77
.Lx587_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx587_77
.Lx587_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx587_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n562_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n561_suspend_α
n560_call_builtin_prolog_β:
                                                                              jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n561_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx589_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx589_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n561_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n561_suspend_β:                                                               jmp   n562_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n563_var_ref_α
n562_call_builtin_prolog_β:
                                                                              jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n564_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n565_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n565_call_builtin_prolog_α:
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
.Lx595_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx595_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx595_41
                        cmp              esi, 1;                              jne   .Lx595_55
                        mov              r8, rax;                             jmp   .Lx595_40
.Lx595_55:              cmp              esi, 2;                              jne   .Lx595_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx595_41
                        mov              r8, rax;                             jmp   .Lx595_40
.Lx595_56:              cmp              eax, 72;                             jne   .Lx595_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx595_41
                        cmp              rax, r8;                             je    .Lx595_41
                        mov              r8, rax;                             jmp   .Lx595_40
.Lx595_41:              lea              r9, [rsp + 368]
.Lx595_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx595_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx595_43
                        cmp              esi, 1;                              jne   .Lx595_57
                        mov              r9, rax;                             jmp   .Lx595_42
.Lx595_57:              cmp              esi, 2;                              jne   .Lx595_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx595_43
                        mov              r9, rax;                             jmp   .Lx595_42
.Lx595_58:              cmp              eax, 72;                             jne   .Lx595_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx595_43
                        cmp              rax, r9;                             je    .Lx595_43
                        mov              r9, rax;                             jmp   .Lx595_42
.Lx595_43:              cmp              r8, r9;                              je    .Lx595_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx595_44
                        cmp              eax, 104;                            je    .Lx595_44
                        cmp              eax, 72;                             jne   .Lx595_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx595_44
                                                                              jmp   .Lx595_45
.Lx595_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx595_53
                        cmp              eax, 104;                            je    .Lx595_53
                        cmp              eax, 72;                             jne   .Lx595_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx595_53
                                                                              jmp   .Lx595_46
.Lx595_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx595_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx595_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx595_51
.Lx595_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx595_47
                        cmp              eax, 104;                            je    .Lx595_47
                        cmp              eax, 72;                             jne   .Lx595_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx595_47
                                                                              jmp   .Lx595_48
.Lx595_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx595_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx595_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx595_51
.Lx595_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx595_49
                        cmp              edx, 80;                             je    .Lx595_53
                                                                              jmp   .Lx595_52
.Lx595_49:              cmp              edx, 80;                             je    .Lx595_52
                        cmp              ecx, 5;                              je    .Lx595_53
                        cmp              edx, 5;                              je    .Lx595_53
                        cmp              ecx, 3;                              jne   .Lx595_50
                        cmp              edx, 3;                              jne   .Lx595_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx595_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx595_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx595_51
                                                                              jmp   .Lx595_52
.Lx595_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx595_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx595_53
.Lx595_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx595_54
.Lx595_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx595_54
.Lx595_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx595_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n574_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_var_ref_α
n565_call_builtin_prolog_β:
                                                                              jmp   n574_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n567_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n569_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n569_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx602_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx602_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_61
                        cmp              esi, 1;                              jne   .Lx602_62
                        mov              r8, rax;                             jmp   .Lx602_60
.Lx602_62:              cmp              esi, 2;                              jne   .Lx602_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_61
                        mov              r8, rax;                             jmp   .Lx602_60
.Lx602_63:              cmp              eax, 72;                             jne   .Lx602_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_61
                        cmp              rax, r8;                             je    .Lx602_61
                        mov              r8, rax;                             jmp   .Lx602_60
.Lx602_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx602_80
                        cmp              eax, 104;                            je    .Lx602_80
                        cmp              eax, 72;                             jne   .Lx602_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx602_80
                                                                              jmp   .Lx602_74
.Lx602_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80;                             jne   .Lx602_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx602_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx602_73
                        lea              r9, [rsp + 272]
.Lx602_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx602_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_65
                        cmp              esi, 1;                              jne   .Lx602_66
                        mov              r9, rax;                             jmp   .Lx602_64
.Lx602_66:              cmp              esi, 2;                              jne   .Lx602_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_65
                        mov              r9, rax;                             jmp   .Lx602_64
.Lx602_67:              cmp              eax, 72;                             jne   .Lx602_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_65
                        cmp              rax, r9;                             je    .Lx602_65
                        mov              r9, rax;                             jmp   .Lx602_64
.Lx602_65:              lea              rcx, [rsp + 288]
.Lx602_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40;                             jne   .Lx602_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx602_69
                        cmp              esi, 1;                              jne   .Lx602_70
                        mov              rcx, rax;                            jmp   .Lx602_68
.Lx602_70:              cmp              esi, 2;                              jne   .Lx602_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_69
                        mov              rcx, rax;                            jmp   .Lx602_68
.Lx602_71:              cmp              eax, 72;                             jne   .Lx602_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx602_69
                        cmp              rax, rcx;                            je    .Lx602_69
                        mov              rcx, rax;                            jmp   .Lx602_68
.Lx602_69:              cmp              r9, rcx;                             je    .Lx602_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx602_75
                        cmp              eax, 104;                            je    .Lx602_75
                        cmp              eax, 72;                             jne   .Lx602_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_75
                                                                              jmp   .Lx602_72
.Lx602_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0;                              je    .Lx602_76
                        cmp              eax, 104;                            je    .Lx602_76
                        cmp              eax, 72;                             jne   .Lx602_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx602_76
                                                                              jmp   .Lx602_72
.Lx602_76:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx602_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx602_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx602_77
.Lx602_80:              lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx602_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx602_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx602_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx602_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx602_72
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
                        lea              r9, [rsp + 272]
.Lx602_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx602_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_82
                        cmp              esi, 1;                              jne   .Lx602_83
                        mov              r9, rax;                             jmp   .Lx602_81
.Lx602_83:              cmp              esi, 2;                              jne   .Lx602_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_82
                        mov              r9, rax;                             jmp   .Lx602_81
.Lx602_84:              cmp              eax, 72;                             jne   .Lx602_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_82
                        cmp              rax, r9;                             je    .Lx602_82
                        mov              r9, rax;                             jmp   .Lx602_81
.Lx602_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx602_85
                        cmp              eax, 104;                            je    .Lx602_85
                        cmp              eax, 72;                             jne   .Lx602_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_85
                                                                              jmp   .Lx602_86
.Lx602_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx602_87
.Lx602_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx602_87:              lea              rcx, [rsp + 288]
.Lx602_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40;                             jne   .Lx602_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx602_89
                        cmp              esi, 1;                              jne   .Lx602_90
                        mov              rcx, rax;                            jmp   .Lx602_88
.Lx602_90:              cmp              esi, 2;                              jne   .Lx602_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_89
                        mov              rcx, rax;                            jmp   .Lx602_88
.Lx602_91:              cmp              eax, 72;                             jne   .Lx602_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx602_89
                        cmp              rax, rcx;                            je    .Lx602_89
                        mov              rcx, rax;                            jmp   .Lx602_88
.Lx602_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0;                              je    .Lx602_92
                        cmp              eax, 104;                            je    .Lx602_92
                        cmp              eax, 72;                             jne   .Lx602_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx602_92
                                                                              jmp   .Lx602_93
.Lx602_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx602_94
.Lx602_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx602_94:              lea              r10, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx602_77
.Lx602_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx602_77
.Lx602_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx602_77:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n574_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n570_var_ref_α
n569_call_builtin_prolog_β:
                                                                              jmp   n574_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n572_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_proc_staged_α:
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx608_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx608_21
.Lx608_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx608_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx608_22
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx608_23
.Lx608_22:              mov              edi, 1
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
.Lx608_23:              lea              rax, [rip + .Lx608_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx608_1
                        lea              rcx, [rip + .Lx608_3]
                        lea              rdx, [rip + .Lx608_4];               jmp   rax
.Lx608_3:               mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx608_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx608_2
.Lx608_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx608_2
.Lx608_4:               mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx608_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx608_2
.Lx608_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx608_2
.Lx608_1:               call             rt_faildescr@PLT
.Lx608_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx608_29
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
.Lx608_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n574_call_builtin_prolog_α
                                                                              jmp   n573_suspend_α
n572_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n574_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n574_call_builtin_prolog_α
                        lea              r11, [rip + .Lx608_7]
                        push             r11
                        lea              rcx, [rip + .Lx608_3]
                        lea              rdx, [rip + .Lx608_4];               jmp   rax
.Lx608_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n574_call_builtin_prolog_α
                                                                              jmp   n573_suspend_α
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n573_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx610_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx610_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n573_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n573_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n573_suspend_β:                                                               jmp   n572_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   member$2F2_ω
n574_call_builtin_prolog_β:
                                                                              jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_β:
                                                                              jmp   n561_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx611_50
                        mov              qword ptr [rsp + 656], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx611_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__display$2F4:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1008
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
display$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx646_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx646_101
.Lx646_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx646_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx646_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx646_101
.Lx646_100:             lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx646_101:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_var_ref_α
n612_call_builtin_prolog_β:
                                                                              jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n614_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n615_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        lea              r8, [rsp + 864]
.Lx651_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx651_41
                        cmp              esi, 1;                              jne   .Lx651_55
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_55:              cmp              esi, 2;                              jne   .Lx651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx651_41
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_56:              cmp              eax, 72;                             jne   .Lx651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx651_41
                        cmp              rax, r8;                             je    .Lx651_41
                        mov              r8, rax;                             jmp   .Lx651_40
.Lx651_41:              lea              r9, [rsp + 880]
.Lx651_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx651_43
                        cmp              esi, 1;                              jne   .Lx651_57
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_57:              cmp              esi, 2;                              jne   .Lx651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx651_43
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_58:              cmp              eax, 72;                             jne   .Lx651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx651_43
                        cmp              rax, r9;                             je    .Lx651_43
                        mov              r9, rax;                             jmp   .Lx651_42
.Lx651_43:              cmp              r8, r9;                              je    .Lx651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx651_44
                        cmp              eax, 104;                            je    .Lx651_44
                        cmp              eax, 72;                             jne   .Lx651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx651_44
                                                                              jmp   .Lx651_45
.Lx651_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx651_53
                        cmp              eax, 104;                            je    .Lx651_53
                        cmp              eax, 72;                             jne   .Lx651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx651_53
                                                                              jmp   .Lx651_46
.Lx651_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx651_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx651_51
.Lx651_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx651_47
                        cmp              eax, 104;                            je    .Lx651_47
                        cmp              eax, 72;                             jne   .Lx651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx651_47
                                                                              jmp   .Lx651_48
.Lx651_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx651_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx651_51
.Lx651_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx651_49
                        cmp              edx, 80;                             je    .Lx651_53
                                                                              jmp   .Lx651_52
.Lx651_49:              cmp              edx, 80;                             je    .Lx651_52
                        cmp              ecx, 5;                              je    .Lx651_53
                        cmp              edx, 5;                              je    .Lx651_53
                        cmp              ecx, 3;                              jne   .Lx651_50
                        cmp              edx, 3;                              jne   .Lx651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx651_51
                                                                              jmp   .Lx651_52
.Lx651_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx651_53
.Lx651_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx651_54
.Lx651_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx651_54
.Lx651_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx651_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_var_ref_α
n615_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n618_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n618_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        lea              r8, [rsp + 784]
.Lx656_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx656_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx656_41
                        cmp              esi, 1;                              jne   .Lx656_55
                        mov              r8, rax;                             jmp   .Lx656_40
.Lx656_55:              cmp              esi, 2;                              jne   .Lx656_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx656_41
                        mov              r8, rax;                             jmp   .Lx656_40
.Lx656_56:              cmp              eax, 72;                             jne   .Lx656_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx656_41
                        cmp              rax, r8;                             je    .Lx656_41
                        mov              r8, rax;                             jmp   .Lx656_40
.Lx656_41:              lea              r9, [rsp + 800]
.Lx656_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx656_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx656_43
                        cmp              esi, 1;                              jne   .Lx656_57
                        mov              r9, rax;                             jmp   .Lx656_42
.Lx656_57:              cmp              esi, 2;                              jne   .Lx656_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx656_43
                        mov              r9, rax;                             jmp   .Lx656_42
.Lx656_58:              cmp              eax, 72;                             jne   .Lx656_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx656_43
                        cmp              rax, r9;                             je    .Lx656_43
                        mov              r9, rax;                             jmp   .Lx656_42
.Lx656_43:              cmp              r8, r9;                              je    .Lx656_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx656_44
                        cmp              eax, 104;                            je    .Lx656_44
                        cmp              eax, 72;                             jne   .Lx656_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx656_44
                                                                              jmp   .Lx656_45
.Lx656_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx656_53
                        cmp              eax, 104;                            je    .Lx656_53
                        cmp              eax, 72;                             jne   .Lx656_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx656_53
                                                                              jmp   .Lx656_46
.Lx656_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx656_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx656_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx656_51
.Lx656_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx656_47
                        cmp              eax, 104;                            je    .Lx656_47
                        cmp              eax, 72;                             jne   .Lx656_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx656_47
                                                                              jmp   .Lx656_48
.Lx656_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx656_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx656_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx656_51
.Lx656_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx656_49
                        cmp              edx, 80;                             je    .Lx656_53
                                                                              jmp   .Lx656_52
.Lx656_49:              cmp              edx, 80;                             je    .Lx656_52
                        cmp              ecx, 5;                              je    .Lx656_53
                        cmp              edx, 5;                              je    .Lx656_53
                        cmp              ecx, 3;                              jne   .Lx656_50
                        cmp              edx, 3;                              jne   .Lx656_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx656_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx656_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx656_51
                                                                              jmp   .Lx656_52
.Lx656_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx656_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx656_53
.Lx656_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx656_54
.Lx656_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx656_54
.Lx656_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx656_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n619_var_ref_α
n618_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n620_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n621_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        lea              r8, [rsp + 704]
.Lx661_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              esi, 1;                              jne   .Lx661_55
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_55:              cmp              esi, 2;                              jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_56:              cmp              eax, 72;                             jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              rax, r8;                             je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_41:              lea              r9, [rsp + 720]
.Lx661_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              esi, 1;                              jne   .Lx661_57
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_57:              cmp              esi, 2;                              jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_58:              cmp              eax, 72;                             jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              rax, r9;                             je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_43:              cmp              r8, r9;                              je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx661_44
                        cmp              eax, 104;                            je    .Lx661_44
                        cmp              eax, 72;                             jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx661_44
                                                                              jmp   .Lx661_45
.Lx661_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx661_53
                        cmp              eax, 104;                            je    .Lx661_53
                        cmp              eax, 72;                             jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_53
                                                                              jmp   .Lx661_46
.Lx661_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx661_51
.Lx661_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx661_47
                        cmp              eax, 104;                            je    .Lx661_47
                        cmp              eax, 72;                             jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_47
                                                                              jmp   .Lx661_48
.Lx661_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx661_51
.Lx661_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx661_49
                        cmp              edx, 80;                             je    .Lx661_53
                                                                              jmp   .Lx661_52
.Lx661_49:              cmp              edx, 80;                             je    .Lx661_52
                        cmp              ecx, 5;                              je    .Lx661_53
                        cmp              edx, 5;                              je    .Lx661_53
                        cmp              ecx, 3;                              jne   .Lx661_50
                        cmp              edx, 3;                              jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx661_51
                                                                              jmp   .Lx661_52
.Lx661_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx661_53
.Lx661_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx661_54
.Lx661_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx661_54
.Lx661_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx661_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n622_var_ref_α
n621_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n623_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n624_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n624_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx666_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx666_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx666_41
                        cmp              esi, 1;                              jne   .Lx666_55
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_55:              cmp              esi, 2;                              jne   .Lx666_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx666_41
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_56:              cmp              eax, 72;                             jne   .Lx666_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx666_41
                        cmp              rax, r8;                             je    .Lx666_41
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_41:              lea              r9, [rsp + 640]
.Lx666_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx666_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx666_43
                        cmp              esi, 1;                              jne   .Lx666_57
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_57:              cmp              esi, 2;                              jne   .Lx666_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx666_43
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_58:              cmp              eax, 72;                             jne   .Lx666_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx666_43
                        cmp              rax, r9;                             je    .Lx666_43
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_43:              cmp              r8, r9;                              je    .Lx666_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx666_44
                        cmp              eax, 104;                            je    .Lx666_44
                        cmp              eax, 72;                             jne   .Lx666_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx666_44
                                                                              jmp   .Lx666_45
.Lx666_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx666_53
                        cmp              eax, 104;                            je    .Lx666_53
                        cmp              eax, 72;                             jne   .Lx666_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx666_53
                                                                              jmp   .Lx666_46
.Lx666_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx666_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx666_51
.Lx666_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx666_47
                        cmp              eax, 104;                            je    .Lx666_47
                        cmp              eax, 72;                             jne   .Lx666_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx666_47
                                                                              jmp   .Lx666_48
.Lx666_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx666_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx666_51
.Lx666_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx666_49
                        cmp              edx, 80;                             je    .Lx666_53
                                                                              jmp   .Lx666_52
.Lx666_49:              cmp              edx, 80;                             je    .Lx666_52
                        cmp              ecx, 5;                              je    .Lx666_53
                        cmp              edx, 5;                              je    .Lx666_53
                        cmp              ecx, 3;                              jne   .Lx666_50
                        cmp              edx, 3;                              jne   .Lx666_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx666_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx666_51
                                                                              jmp   .Lx666_52
.Lx666_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx666_53
.Lx666_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx666_54
.Lx666_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx666_54
.Lx666_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx666_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_lit_string_α
n624_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 7
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n626_call_builtin_prolog_α
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "Carter="
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn669:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n627_var_α
n626_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_α:             mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n628_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn673:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn673]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_lit_string_α
n628_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 7
                        mov              rax, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n630_call_builtin_prolog_α
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          " Flynn="
#-----------------------------------------------------------------------------------------------------------------------
n630_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn676:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn676]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n631_var_α
n630_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n631_var_α:             mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 456], rax;          jmp   n632_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn680:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n633_lit_string_α
n632_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 7
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n634_call_builtin_prolog_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          " Milne="
#-----------------------------------------------------------------------------------------------------------------------
n634_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn683:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_var_α
n634_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 360], rax;          jmp   n636_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn687:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n637_lit_string_α
n636_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 8
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n638_call_builtin_prolog_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          " Savage="
#-----------------------------------------------------------------------------------------------------------------------
n638_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn690:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn690]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n639_var_α
n638_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:             mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 264], rax;          jmp   n640_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n640_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn694:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn694]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n641_lit_string_α
n640_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n642_call_builtin_prolog_α
.Lx695_0:               .quad            .Lx695_0_s
.Lx695_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn697:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn697]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n645_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_move_label_α
n642_call_builtin_prolog_β:
                                                                              jmp   n645_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n643_move_label_α:      lea              rax, [rip + n645_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   display$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n644_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    display$2F4_ω
                                                                              jmp   rax
n644_disjunction_β:                                                           jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n645_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   display$2F4_ω
n645_call_builtin_prolog_β:
                                                                              jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_β:
                                                                              jmp   n644_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r8
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx703_2]
                        lea              rdx, [rip + .Lx703_3];               jmp   FN__display$2F4
.Lx703_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx703_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 160
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx709_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx709_101
.Lx709_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx709_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx709_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx709_101
.Lx709_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx709_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n705_call_proc_staged_α
n704_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n705_call_proc_staged_α:
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx711_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx711_1
                        lea              rcx, [rip + .Lx711_3]
                        lea              rdx, [rip + .Lx711_4];               jmp   rax
.Lx711_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx711_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx711_2
.Lx711_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx711_2
.Lx711_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx711_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx711_2
.Lx711_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx711_2
.Lx711_1:               call             rt_faildescr@PLT
.Lx711_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx711_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx711_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n708_call_builtin_prolog_α
                                                                              jmp   n706_move_label_α
n705_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n708_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 16
                        mov              r8d, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n708_call_builtin_prolog_α
                        lea              r11, [rip + .Lx711_7]
                        push             r11
                        lea              rcx, [rip + .Lx711_3]
                        lea              rdx, [rip + .Lx711_4];               jmp   rax
.Lx711_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n708_call_builtin_prolog_α
                                                                              jmp   n706_move_label_α
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n706_move_label_α:      lea              rax, [rip + n705_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n707_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n707_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n708_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n708_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n707_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "differ/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__differ$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "puzzle/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__puzzle$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1472
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "occupation/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__occupation$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            768
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__$disj0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "income/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__income$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1584
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "member/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__member$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "display/4"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__display$2F4
                        .quad            display$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            992
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
