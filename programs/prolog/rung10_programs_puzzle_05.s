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
FN__doesLiveNear$2F2:
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1120
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
doesLiveNear$2F2_α_body:
                        lea              rax, [rip + n265_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx292_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx292_101
.Lx292_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx292_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx292_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx292_101
.Lx292_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx292_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    doesLiveNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_var_ref_α
n255_call_builtin_prolog_β:
                                                                              jmp   doesLiveNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n258_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        lea              r8, [rsp + 976]
.Lx297_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx297_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx297_41
                        cmp              esi, 1;                              jne   .Lx297_55
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_55:              cmp              esi, 2;                              jne   .Lx297_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx297_41
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_56:              cmp              eax, 72;                             jne   .Lx297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx297_41
                        cmp              rax, r8;                             je    .Lx297_41
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_41:              lea              r9, [rsp + 992]
.Lx297_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx297_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx297_43
                        cmp              esi, 1;                              jne   .Lx297_57
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_57:              cmp              esi, 2;                              jne   .Lx297_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx297_43
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_58:              cmp              eax, 72;                             jne   .Lx297_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx297_43
                        cmp              rax, r9;                             je    .Lx297_43
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_43:              cmp              r8, r9;                              je    .Lx297_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx297_44
                        cmp              eax, 104;                            je    .Lx297_44
                        cmp              eax, 72;                             jne   .Lx297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx297_44
                                                                              jmp   .Lx297_45
.Lx297_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx297_53
                        cmp              eax, 104;                            je    .Lx297_53
                        cmp              eax, 72;                             jne   .Lx297_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx297_53
                                                                              jmp   .Lx297_46
.Lx297_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx297_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx297_51
.Lx297_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx297_47
                        cmp              eax, 104;                            je    .Lx297_47
                        cmp              eax, 72;                             jne   .Lx297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx297_47
                                                                              jmp   .Lx297_48
.Lx297_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx297_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx297_51
.Lx297_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx297_49
                        cmp              edx, 80;                             je    .Lx297_53
                                                                              jmp   .Lx297_52
.Lx297_49:              cmp              edx, 80;                             je    .Lx297_52
                        cmp              ecx, 5;                              je    .Lx297_53
                        cmp              edx, 5;                              je    .Lx297_53
                        cmp              ecx, 3;                              jne   .Lx297_50
                        cmp              edx, 3;                              jne   .Lx297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx297_51
                                                                              jmp   .Lx297_52
.Lx297_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx297_53
.Lx297_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx297_54
.Lx297_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx297_54
.Lx297_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx297_54:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n266_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_var_ref_α
n258_call_builtin_prolog_β:
                                                                              jmp   n266_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n261_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        lea              r8, [rsp + 896]
.Lx302_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx302_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx302_41
                        cmp              esi, 1;                              jne   .Lx302_55
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_55:              cmp              esi, 2;                              jne   .Lx302_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx302_41
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_56:              cmp              eax, 72;                             jne   .Lx302_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx302_41
                        cmp              rax, r8;                             je    .Lx302_41
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_41:              lea              r9, [rsp + 912]
.Lx302_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx302_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx302_43
                        cmp              esi, 1;                              jne   .Lx302_57
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_57:              cmp              esi, 2;                              jne   .Lx302_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx302_43
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_58:              cmp              eax, 72;                             jne   .Lx302_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx302_43
                        cmp              rax, r9;                             je    .Lx302_43
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_43:              cmp              r8, r9;                              je    .Lx302_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx302_44
                        cmp              eax, 104;                            je    .Lx302_44
                        cmp              eax, 72;                             jne   .Lx302_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx302_44
                                                                              jmp   .Lx302_45
.Lx302_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx302_53
                        cmp              eax, 104;                            je    .Lx302_53
                        cmp              eax, 72;                             jne   .Lx302_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx302_53
                                                                              jmp   .Lx302_46
.Lx302_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx302_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx302_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx302_51
.Lx302_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx302_47
                        cmp              eax, 104;                            je    .Lx302_47
                        cmp              eax, 72;                             jne   .Lx302_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx302_47
                                                                              jmp   .Lx302_48
.Lx302_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx302_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx302_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx302_51
.Lx302_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx302_49
                        cmp              edx, 80;                             je    .Lx302_53
                                                                              jmp   .Lx302_52
.Lx302_49:              cmp              edx, 80;                             je    .Lx302_52
                        cmp              ecx, 5;                              je    .Lx302_53
                        cmp              edx, 5;                              je    .Lx302_53
                        cmp              ecx, 3;                              jne   .Lx302_50
                        cmp              edx, 3;                              jne   .Lx302_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx302_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx302_51
                                                                              jmp   .Lx302_52
.Lx302_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx302_53
.Lx302_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx302_54
.Lx302_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx302_54
.Lx302_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx302_54:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n266_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_var_ref_α
n261_call_builtin_prolog_β:
                                                                              jmp   n266_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n264_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 864]
                        call             livesNear$2F2_dcα;                   jmp   .Lx308_2
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
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
.Lx308_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n266_call_builtin_prolog_α
                                                                              jmp   n265_suspend_α
n264_call_proc_staged_β:
                                                                              jmp   n266_call_builtin_prolog_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "livesNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n265_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx310_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040];         jmp   rax
.Lx310_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n265_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n265_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   doesLiveNear$2F2_γ
n265_suspend_β:                                                               jmp   n264_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    doesLiveNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_var_ref_α
n266_call_builtin_prolog_β:
                                                                              jmp   doesLiveNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n269_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx316_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx316_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx316_41
                        cmp              esi, 1;                              jne   .Lx316_55
                        mov              r8, rax;                             jmp   .Lx316_40
.Lx316_55:              cmp              esi, 2;                              jne   .Lx316_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx316_41
                        mov              r8, rax;                             jmp   .Lx316_40
.Lx316_56:              cmp              eax, 72;                             jne   .Lx316_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx316_41
                        cmp              rax, r8;                             je    .Lx316_41
                        mov              r8, rax;                             jmp   .Lx316_40
.Lx316_41:              lea              r9, [rsp + 704]
.Lx316_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx316_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx316_43
                        cmp              esi, 1;                              jne   .Lx316_57
                        mov              r9, rax;                             jmp   .Lx316_42
.Lx316_57:              cmp              esi, 2;                              jne   .Lx316_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx316_43
                        mov              r9, rax;                             jmp   .Lx316_42
.Lx316_58:              cmp              eax, 72;                             jne   .Lx316_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx316_43
                        cmp              rax, r9;                             je    .Lx316_43
                        mov              r9, rax;                             jmp   .Lx316_42
.Lx316_43:              cmp              r8, r9;                              je    .Lx316_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx316_44
                        cmp              eax, 104;                            je    .Lx316_44
                        cmp              eax, 72;                             jne   .Lx316_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx316_44
                                                                              jmp   .Lx316_45
.Lx316_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx316_53
                        cmp              eax, 104;                            je    .Lx316_53
                        cmp              eax, 72;                             jne   .Lx316_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx316_53
                                                                              jmp   .Lx316_46
.Lx316_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx316_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx316_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx316_51
.Lx316_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx316_47
                        cmp              eax, 104;                            je    .Lx316_47
                        cmp              eax, 72;                             jne   .Lx316_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx316_47
                                                                              jmp   .Lx316_48
.Lx316_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx316_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx316_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx316_51
.Lx316_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx316_49
                        cmp              edx, 80;                             je    .Lx316_53
                                                                              jmp   .Lx316_52
.Lx316_49:              cmp              edx, 80;                             je    .Lx316_52
                        cmp              ecx, 5;                              je    .Lx316_53
                        cmp              edx, 5;                              je    .Lx316_53
                        cmp              ecx, 3;                              jne   .Lx316_50
                        cmp              edx, 3;                              jne   .Lx316_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx316_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx316_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx316_51
                                                                              jmp   .Lx316_52
.Lx316_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx316_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx316_53
.Lx316_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx316_54
.Lx316_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx316_54
.Lx316_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx316_54:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    n277_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_var_ref_α
n269_call_builtin_prolog_β:
                                                                              jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lx321_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx321_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx321_41
                        cmp              esi, 1;                              jne   .Lx321_55
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_55:              cmp              esi, 2;                              jne   .Lx321_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx321_41
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_56:              cmp              eax, 72;                             jne   .Lx321_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx321_41
                        cmp              rax, r8;                             je    .Lx321_41
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_41:              lea              r9, [rsp + 624]
.Lx321_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx321_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx321_43
                        cmp              esi, 1;                              jne   .Lx321_57
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_57:              cmp              esi, 2;                              jne   .Lx321_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx321_43
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_58:              cmp              eax, 72;                             jne   .Lx321_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx321_43
                        cmp              rax, r9;                             je    .Lx321_43
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_43:              cmp              r8, r9;                              je    .Lx321_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx321_44
                        cmp              eax, 104;                            je    .Lx321_44
                        cmp              eax, 72;                             jne   .Lx321_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx321_44
                                                                              jmp   .Lx321_45
.Lx321_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx321_53
                        cmp              eax, 104;                            je    .Lx321_53
                        cmp              eax, 72;                             jne   .Lx321_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx321_53
                                                                              jmp   .Lx321_46
.Lx321_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx321_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx321_51
.Lx321_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx321_47
                        cmp              eax, 104;                            je    .Lx321_47
                        cmp              eax, 72;                             jne   .Lx321_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx321_47
                                                                              jmp   .Lx321_48
.Lx321_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx321_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx321_51
.Lx321_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx321_49
                        cmp              edx, 80;                             je    .Lx321_53
                                                                              jmp   .Lx321_52
.Lx321_49:              cmp              edx, 80;                             je    .Lx321_52
                        cmp              ecx, 5;                              je    .Lx321_53
                        cmp              edx, 5;                              je    .Lx321_53
                        cmp              ecx, 3;                              jne   .Lx321_50
                        cmp              edx, 3;                              jne   .Lx321_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx321_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx321_51
                                                                              jmp   .Lx321_52
.Lx321_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx321_53
.Lx321_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx321_54
.Lx321_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx321_54
.Lx321_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx321_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n277_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n273_var_ref_α
n272_call_builtin_prolog_β:
                                                                              jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n274_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n275_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_proc_staged_α:
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 576]
                        call             livesNear$2F2_dcα;                   jmp   .Lx327_2
.Lx327_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx327_29
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
.Lx327_29:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n277_call_builtin_prolog_α
                                                                              jmp   n276_suspend_α
n275_call_proc_staged_β:
                                                                              jmp   n277_call_builtin_prolog_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "livesNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n276_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx329_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040];         jmp   rax
.Lx329_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n276_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n276_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   doesLiveNear$2F2_γ
n276_suspend_β:                                                               jmp   n275_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    doesLiveNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_var_ref_α
n277_call_builtin_prolog_β:
                                                                              jmp   doesLiveNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n279_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n280_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
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
.Lx335_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx335_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx335_41
                        cmp              esi, 1;                              jne   .Lx335_55
                        mov              r8, rax;                             jmp   .Lx335_40
.Lx335_55:              cmp              esi, 2;                              jne   .Lx335_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx335_41
                        mov              r8, rax;                             jmp   .Lx335_40
.Lx335_56:              cmp              eax, 72;                             jne   .Lx335_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx335_41
                        cmp              rax, r8;                             je    .Lx335_41
                        mov              r8, rax;                             jmp   .Lx335_40
.Lx335_41:              lea              r9, [rsp + 416]
.Lx335_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx335_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx335_43
                        cmp              esi, 1;                              jne   .Lx335_57
                        mov              r9, rax;                             jmp   .Lx335_42
.Lx335_57:              cmp              esi, 2;                              jne   .Lx335_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx335_43
                        mov              r9, rax;                             jmp   .Lx335_42
.Lx335_58:              cmp              eax, 72;                             jne   .Lx335_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx335_43
                        cmp              rax, r9;                             je    .Lx335_43
                        mov              r9, rax;                             jmp   .Lx335_42
.Lx335_43:              cmp              r8, r9;                              je    .Lx335_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx335_44
                        cmp              eax, 104;                            je    .Lx335_44
                        cmp              eax, 72;                             jne   .Lx335_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx335_44
                                                                              jmp   .Lx335_45
.Lx335_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx335_53
                        cmp              eax, 104;                            je    .Lx335_53
                        cmp              eax, 72;                             jne   .Lx335_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx335_53
                                                                              jmp   .Lx335_46
.Lx335_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx335_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx335_51
.Lx335_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx335_47
                        cmp              eax, 104;                            je    .Lx335_47
                        cmp              eax, 72;                             jne   .Lx335_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx335_47
                                                                              jmp   .Lx335_48
.Lx335_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx335_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx335_51
.Lx335_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx335_49
                        cmp              edx, 80;                             je    .Lx335_53
                                                                              jmp   .Lx335_52
.Lx335_49:              cmp              edx, 80;                             je    .Lx335_52
                        cmp              ecx, 5;                              je    .Lx335_53
                        cmp              edx, 5;                              je    .Lx335_53
                        cmp              ecx, 3;                              jne   .Lx335_50
                        cmp              edx, 3;                              jne   .Lx335_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx335_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx335_51
                                                                              jmp   .Lx335_52
.Lx335_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx335_53
.Lx335_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx335_54
.Lx335_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx335_54
.Lx335_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx335_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n282_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n283_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        lea              r8, [rsp + 320]
.Lx340_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx340_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx340_41
                        cmp              esi, 1;                              jne   .Lx340_55
                        mov              r8, rax;                             jmp   .Lx340_40
.Lx340_55:              cmp              esi, 2;                              jne   .Lx340_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx340_41
                        mov              r8, rax;                             jmp   .Lx340_40
.Lx340_56:              cmp              eax, 72;                             jne   .Lx340_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx340_41
                        cmp              rax, r8;                             je    .Lx340_41
                        mov              r8, rax;                             jmp   .Lx340_40
.Lx340_41:              lea              r9, [rsp + 336]
.Lx340_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx340_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx340_43
                        cmp              esi, 1;                              jne   .Lx340_57
                        mov              r9, rax;                             jmp   .Lx340_42
.Lx340_57:              cmp              esi, 2;                              jne   .Lx340_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx340_43
                        mov              r9, rax;                             jmp   .Lx340_42
.Lx340_58:              cmp              eax, 72;                             jne   .Lx340_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx340_43
                        cmp              rax, r9;                             je    .Lx340_43
                        mov              r9, rax;                             jmp   .Lx340_42
.Lx340_43:              cmp              r8, r9;                              je    .Lx340_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx340_44
                        cmp              eax, 104;                            je    .Lx340_44
                        cmp              eax, 72;                             jne   .Lx340_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx340_44
                                                                              jmp   .Lx340_45
.Lx340_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx340_53
                        cmp              eax, 104;                            je    .Lx340_53
                        cmp              eax, 72;                             jne   .Lx340_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx340_53
                                                                              jmp   .Lx340_46
.Lx340_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx340_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx340_51
.Lx340_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx340_47
                        cmp              eax, 104;                            je    .Lx340_47
                        cmp              eax, 72;                             jne   .Lx340_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx340_47
                                                                              jmp   .Lx340_48
.Lx340_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx340_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx340_51
.Lx340_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx340_49
                        cmp              edx, 80;                             je    .Lx340_53
                                                                              jmp   .Lx340_52
.Lx340_49:              cmp              edx, 80;                             je    .Lx340_52
                        cmp              ecx, 5;                              je    .Lx340_53
                        cmp              edx, 5;                              je    .Lx340_53
                        cmp              ecx, 3;                              jne   .Lx340_50
                        cmp              edx, 3;                              jne   .Lx340_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx340_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx340_51
                                                                              jmp   .Lx340_52
.Lx340_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx340_53
.Lx340_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx340_54
.Lx340_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx340_54
.Lx340_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx340_54:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n284_var_ref_α
n283_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n285_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 288]
                        call             livesNear$2F2_dcα;                   jmp   .Lx346_2
.Lx346_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx346_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx346_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                                                                              jmp   n287_var_ref_α
n286_call_proc_staged_β:
                                                                              jmp   n291_call_builtin_prolog_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "livesNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        call             livesNear$2F2_dcα;                   jmp   .Lx352_2
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
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx352_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n286_call_proc_staged_β
                                                                              jmp   n290_suspend_α
n289_call_proc_staged_β:
                                                                              jmp   n286_call_proc_staged_β
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "livesNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n290_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx354_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040];         jmp   rax
.Lx354_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n290_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n290_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   doesLiveNear$2F2_γ
n290_suspend_β:                                                               jmp   n289_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    doesLiveNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   doesLiveNear$2F2_ω
n291_call_builtin_prolog_β:
                                                                              jmp   doesLiveNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
doesLiveNear$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
doesLiveNear$2F2_β:
                                                                              jmp   n265_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
doesLiveNear$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx355_50
                        mov              qword ptr [rsp + 1040], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040];         jmp   rax
.Lx355_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1128]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
doesLiveNear$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1136]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__person$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 608
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
person$2F1_α_body:
                        lea              rax, [rip + n360_suspend_β]
                        mov              qword ptr [rsp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx377_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx377_101
.Lx377_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx377_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx377_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx377_101
.Lx377_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx377_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    person$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_var_ref_α
n356_call_builtin_prolog_β:
                                                                              jmp   person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n358_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n359_call_builtin_prolog_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n359_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              rsi, qword ptr [rip + .Lx381_2];     jmp   .Lx381_3
.Lx381_2:               .quad            .Lx381_2_s
.Lx381_2_s:             .string          "brown"
.Lx381_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n361_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_suspend_α
n359_call_builtin_prolog_β:
                                                                              jmp   n361_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx383_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx383_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n360_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n360_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F1_γ
n360_suspend_β:                                                               jmp   n361_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n361_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
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
                        cmp              eax, 104;                            je    person$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_var_ref_α
n361_call_builtin_prolog_β:
                                                                              jmp   person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n364_call_builtin_prolog_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              rsi, qword ptr [rip + .Lx388_2];     jmp   .Lx388_3
.Lx388_2:               .quad            .Lx388_2_s
.Lx388_2_s:             .string          "clark"
.Lx388_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n366_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_suspend_α
n364_call_builtin_prolog_β:
                                                                              jmp   n366_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx390_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx390_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n365_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n365_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F1_γ
n365_suspend_β:                                                               jmp   n366_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    person$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_var_ref_α
n366_call_builtin_prolog_β:
                                                                              jmp   person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 5
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n369_call_builtin_prolog_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx395_2];     jmp   .Lx395_3
.Lx395_2:               .quad            .Lx395_2_s
.Lx395_2_s:             .string          "jones"
.Lx395_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n371_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_suspend_α
n369_call_builtin_prolog_β:
                                                                              jmp   n371_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n370_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx397_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx397_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
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
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F1_γ
n370_suspend_β:                                                               jmp   n371_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    person$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_var_ref_α
n371_call_builtin_prolog_β:
                                                                              jmp   person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 5
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n374_call_builtin_prolog_α
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              rsi, qword ptr [rip + .Lx402_2];     jmp   .Lx402_3
.Lx402_2:               .quad            .Lx402_2_s
.Lx402_2_s:             .string          "smith"
.Lx402_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n375_suspend_α
n374_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n375_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx404_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx404_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n375_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n375_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   person$2F1_γ
n375_suspend_β:                                                               jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    person$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   person$2F1_ω
n376_call_builtin_prolog_β:
                                                                              jmp   person$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
person$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
person$2F1_β:
                                                                              jmp   n360_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
person$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx405_50
                        mov              qword ptr [rsp + 576], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx405_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 616]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
person$2F1_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__playsChess$2F2:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 320
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
playsChess$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx416_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx416_101
.Lx416_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx416_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx416_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx416_101
.Lx416_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx416_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    playsChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n407_var_ref_α
n406_call_builtin_prolog_β:
                                                                              jmp   playsChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n408_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 5
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n409_call_builtin_prolog_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              rsi, qword ptr [rip + .Lx420_2];     jmp   .Lx420_3
.Lx420_2:               .quad            .Lx420_2_s
.Lx420_2_s:             .string          "jones"
.Lx420_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n415_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n410_var_ref_α
n409_call_builtin_prolog_β:
                                                                              jmp   n415_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n412_call_builtin_prolog_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx424_2];     jmp   .Lx424_3
.Lx424_2:               .quad            .Lx424_2_s
.Lx424_2_s:             .string          "smith"
.Lx424_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n415_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n413_move_label_α
n412_call_builtin_prolog_β:
                                                                              jmp   n415_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_move_label_α:      lea              rax, [rip + n415_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   playsChess$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n414_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    playsChess$2F2_ω
                                                                              jmp   rax
n414_disjunction_β:                                                           jmp   playsChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    playsChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   playsChess$2F2_ω
n415_call_builtin_prolog_β:
                                                                              jmp   playsChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
playsChess$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
playsChess$2F2_β:
                                                                              jmp   n414_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
playsChess$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
playsChess$2F2_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
playsChess$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx430_2]
                        lea              rdx, [rip + .Lx430_3];               jmp   FN__playsChess$2F2
.Lx430_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx430_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
n431_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx465_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx465_101
.Lx465_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx465_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx465_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx465_101
.Lx465_100:             lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx465_101:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                                                                              jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n433_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n434_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
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
.Lx470_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx470_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx470_41
                        cmp              esi, 1;                              jne   .Lx470_55
                        mov              r8, rax;                             jmp   .Lx470_40
.Lx470_55:              cmp              esi, 2;                              jne   .Lx470_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx470_41
                        mov              r8, rax;                             jmp   .Lx470_40
.Lx470_56:              cmp              eax, 72;                             jne   .Lx470_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx470_41
                        cmp              rax, r8;                             je    .Lx470_41
                        mov              r8, rax;                             jmp   .Lx470_40
.Lx470_41:              lea              r9, [rsp + 880]
.Lx470_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx470_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx470_43
                        cmp              esi, 1;                              jne   .Lx470_57
                        mov              r9, rax;                             jmp   .Lx470_42
.Lx470_57:              cmp              esi, 2;                              jne   .Lx470_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx470_43
                        mov              r9, rax;                             jmp   .Lx470_42
.Lx470_58:              cmp              eax, 72;                             jne   .Lx470_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx470_43
                        cmp              rax, r9;                             je    .Lx470_43
                        mov              r9, rax;                             jmp   .Lx470_42
.Lx470_43:              cmp              r8, r9;                              je    .Lx470_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx470_44
                        cmp              eax, 104;                            je    .Lx470_44
                        cmp              eax, 72;                             jne   .Lx470_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx470_44
                                                                              jmp   .Lx470_45
.Lx470_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx470_53
                        cmp              eax, 104;                            je    .Lx470_53
                        cmp              eax, 72;                             jne   .Lx470_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx470_53
                                                                              jmp   .Lx470_46
.Lx470_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx470_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx470_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx470_51
.Lx470_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx470_47
                        cmp              eax, 104;                            je    .Lx470_47
                        cmp              eax, 72;                             jne   .Lx470_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx470_47
                                                                              jmp   .Lx470_48
.Lx470_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx470_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx470_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx470_51
.Lx470_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx470_49
                        cmp              edx, 80;                             je    .Lx470_53
                                                                              jmp   .Lx470_52
.Lx470_49:              cmp              edx, 80;                             je    .Lx470_52
                        cmp              ecx, 5;                              je    .Lx470_53
                        cmp              edx, 5;                              je    .Lx470_53
                        cmp              ecx, 3;                              jne   .Lx470_50
                        cmp              edx, 3;                              jne   .Lx470_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx470_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx470_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx470_51
                                                                              jmp   .Lx470_52
.Lx470_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx470_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx470_53
.Lx470_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx470_54
.Lx470_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx470_54
.Lx470_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx470_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_var_ref_α
n434_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n436_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n437_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
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
.Lx475_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx475_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx475_41
                        cmp              esi, 1;                              jne   .Lx475_55
                        mov              r8, rax;                             jmp   .Lx475_40
.Lx475_55:              cmp              esi, 2;                              jne   .Lx475_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx475_41
                        mov              r8, rax;                             jmp   .Lx475_40
.Lx475_56:              cmp              eax, 72;                             jne   .Lx475_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx475_41
                        cmp              rax, r8;                             je    .Lx475_41
                        mov              r8, rax;                             jmp   .Lx475_40
.Lx475_41:              lea              r9, [rsp + 800]
.Lx475_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx475_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx475_43
                        cmp              esi, 1;                              jne   .Lx475_57
                        mov              r9, rax;                             jmp   .Lx475_42
.Lx475_57:              cmp              esi, 2;                              jne   .Lx475_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx475_43
                        mov              r9, rax;                             jmp   .Lx475_42
.Lx475_58:              cmp              eax, 72;                             jne   .Lx475_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx475_43
                        cmp              rax, r9;                             je    .Lx475_43
                        mov              r9, rax;                             jmp   .Lx475_42
.Lx475_43:              cmp              r8, r9;                              je    .Lx475_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx475_44
                        cmp              eax, 104;                            je    .Lx475_44
                        cmp              eax, 72;                             jne   .Lx475_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx475_44
                                                                              jmp   .Lx475_45
.Lx475_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx475_53
                        cmp              eax, 104;                            je    .Lx475_53
                        cmp              eax, 72;                             jne   .Lx475_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx475_53
                                                                              jmp   .Lx475_46
.Lx475_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx475_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx475_51
.Lx475_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx475_47
                        cmp              eax, 104;                            je    .Lx475_47
                        cmp              eax, 72;                             jne   .Lx475_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx475_47
                                                                              jmp   .Lx475_48
.Lx475_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx475_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx475_51
.Lx475_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx475_49
                        cmp              edx, 80;                             je    .Lx475_53
                                                                              jmp   .Lx475_52
.Lx475_49:              cmp              edx, 80;                             je    .Lx475_52
                        cmp              ecx, 5;                              je    .Lx475_53
                        cmp              edx, 5;                              je    .Lx475_53
                        cmp              ecx, 3;                              jne   .Lx475_50
                        cmp              edx, 3;                              jne   .Lx475_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx475_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx475_51
                                                                              jmp   .Lx475_52
.Lx475_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx475_53
.Lx475_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx475_54
.Lx475_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx475_54
.Lx475_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx475_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n438_var_ref_α
n437_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
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
.Lx480_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx480_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx480_41
                        cmp              esi, 1;                              jne   .Lx480_55
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_55:              cmp              esi, 2;                              jne   .Lx480_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx480_41
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_56:              cmp              eax, 72;                             jne   .Lx480_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx480_41
                        cmp              rax, r8;                             je    .Lx480_41
                        mov              r8, rax;                             jmp   .Lx480_40
.Lx480_41:              lea              r9, [rsp + 720]
.Lx480_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx480_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx480_43
                        cmp              esi, 1;                              jne   .Lx480_57
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_57:              cmp              esi, 2;                              jne   .Lx480_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx480_43
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_58:              cmp              eax, 72;                             jne   .Lx480_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx480_43
                        cmp              rax, r9;                             je    .Lx480_43
                        mov              r9, rax;                             jmp   .Lx480_42
.Lx480_43:              cmp              r8, r9;                              je    .Lx480_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx480_44
                        cmp              eax, 104;                            je    .Lx480_44
                        cmp              eax, 72;                             jne   .Lx480_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx480_44
                                                                              jmp   .Lx480_45
.Lx480_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx480_53
                        cmp              eax, 104;                            je    .Lx480_53
                        cmp              eax, 72;                             jne   .Lx480_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx480_53
                                                                              jmp   .Lx480_46
.Lx480_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx480_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx480_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx480_51
.Lx480_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx480_47
                        cmp              eax, 104;                            je    .Lx480_47
                        cmp              eax, 72;                             jne   .Lx480_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx480_47
                                                                              jmp   .Lx480_48
.Lx480_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx480_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx480_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx480_51
.Lx480_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx480_49
                        cmp              edx, 80;                             je    .Lx480_53
                                                                              jmp   .Lx480_52
.Lx480_49:              cmp              edx, 80;                             je    .Lx480_52
                        cmp              ecx, 5;                              je    .Lx480_53
                        cmp              edx, 5;                              je    .Lx480_53
                        cmp              ecx, 3;                              jne   .Lx480_50
                        cmp              edx, 3;                              jne   .Lx480_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx480_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx480_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx480_51
                                                                              jmp   .Lx480_52
.Lx480_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx480_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx480_53
.Lx480_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx480_54
.Lx480_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx480_54
.Lx480_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx480_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_var_ref_α
n440_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n442_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
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
.Lx485_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx485_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx485_41
                        cmp              esi, 1;                              jne   .Lx485_55
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_55:              cmp              esi, 2;                              jne   .Lx485_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx485_41
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_56:              cmp              eax, 72;                             jne   .Lx485_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx485_41
                        cmp              rax, r8;                             je    .Lx485_41
                        mov              r8, rax;                             jmp   .Lx485_40
.Lx485_41:              lea              r9, [rsp + 640]
.Lx485_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx485_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx485_43
                        cmp              esi, 1;                              jne   .Lx485_57
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_57:              cmp              esi, 2;                              jne   .Lx485_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx485_43
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_58:              cmp              eax, 72;                             jne   .Lx485_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx485_43
                        cmp              rax, r9;                             je    .Lx485_43
                        mov              r9, rax;                             jmp   .Lx485_42
.Lx485_43:              cmp              r8, r9;                              je    .Lx485_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx485_44
                        cmp              eax, 104;                            je    .Lx485_44
                        cmp              eax, 72;                             jne   .Lx485_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx485_44
                                                                              jmp   .Lx485_45
.Lx485_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx485_53
                        cmp              eax, 104;                            je    .Lx485_53
                        cmp              eax, 72;                             jne   .Lx485_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx485_53
                                                                              jmp   .Lx485_46
.Lx485_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx485_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx485_51
.Lx485_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx485_47
                        cmp              eax, 104;                            je    .Lx485_47
                        cmp              eax, 72;                             jne   .Lx485_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx485_47
                                                                              jmp   .Lx485_48
.Lx485_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx485_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx485_51
.Lx485_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx485_49
                        cmp              edx, 80;                             je    .Lx485_53
                                                                              jmp   .Lx485_52
.Lx485_49:              cmp              edx, 80;                             je    .Lx485_52
                        cmp              ecx, 5;                              je    .Lx485_53
                        cmp              edx, 5;                              je    .Lx485_53
                        cmp              ecx, 3;                              jne   .Lx485_50
                        cmp              edx, 3;                              jne   .Lx485_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx485_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx485_51
                                                                              jmp   .Lx485_52
.Lx485_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx485_53
.Lx485_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx485_54
.Lx485_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx485_54
.Lx485_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx485_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_lit_string_α
n443_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 11
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n445_call_builtin_prolog_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "Accountant="
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn488:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_var_α
n445_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n447_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn492:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n448_lit_string_α
n447_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 9
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n449_call_builtin_prolog_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          " Cashier="
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn495:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn495]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n450_var_α
n449_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 456], rax;          jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn499:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn499]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_lit_string_α
n451_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 9
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n453_call_builtin_prolog_α
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          " Manager="
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn502:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_var_α
n453_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 360], rax;          jmp   n455_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn506:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_lit_string_α
n455_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 11
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n457_call_builtin_prolog_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          " President="
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn509:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n458_var_α
n457_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 264], rax;          jmp   n459_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn513:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn513]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_lit_string_α
n459_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n461_call_builtin_prolog_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn516:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n462_move_label_α
n461_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_move_label_α:      lea              rax, [rip + n464_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   display$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n463_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    display$2F4_ω
                                                                              jmp   rax
n463_disjunction_β:                                                           jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
n464_call_builtin_prolog_β:
                                                                              jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_β:
                                                                              jmp   n463_disjunction_α
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
                        lea              rcx, [rip + .Lx522_2]
                        lea              rdx, [rip + .Lx522_3];               jmp   FN__display$2F4
.Lx522_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx522_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__livesNear$2F2:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 320
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
livesNear$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx533_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx533_101
.Lx533_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx533_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx533_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx533_101
.Lx533_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx533_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n524_var_ref_α
n523_call_builtin_prolog_β:
                                                                              jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 5
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n526_call_builtin_prolog_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              rsi, qword ptr [rip + .Lx537_2];     jmp   .Lx537_3
.Lx537_2:               .quad            .Lx537_2_s
.Lx537_2_s:             .string          "jones"
.Lx537_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n532_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_var_ref_α
n526_call_builtin_prolog_β:
                                                                              jmp   n532_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n529_call_builtin_prolog_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              rsi, qword ptr [rip + .Lx541_2];     jmp   .Lx541_3
.Lx541_2:               .quad            .Lx541_2_s
.Lx541_2_s:             .string          "smith"
.Lx541_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n532_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n530_move_label_α
n529_call_builtin_prolog_β:
                                                                              jmp   n532_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n530_move_label_α:      lea              rax, [rip + n532_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   livesNear$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n531_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    livesNear$2F2_ω
                                                                              jmp   rax
n531_disjunction_β:                                                           jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   livesNear$2F2_ω
n532_call_builtin_prolog_β:
                                                                              jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_β:
                                                                              jmp   n531_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx547_2]
                        lea              rdx, [rip + .Lx547_3];               jmp   FN__livesNear$2F2
.Lx547_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx547_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__betterAtChess$2F2:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
betterAtChess$2F2_α_body:
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx573_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx573_101
.Lx573_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx573_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx573_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx573_101
.Lx573_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx573_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    betterAtChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n549_var_ref_α
n548_call_builtin_prolog_β:
                                                                              jmp   betterAtChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n550_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 5
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n551_call_builtin_prolog_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx577_2];     jmp   .Lx577_3
.Lx577_2:               .quad            .Lx577_2_s
.Lx577_2_s:             .string          "clark"
.Lx577_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n556_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_var_ref_α
n551_call_builtin_prolog_β:
                                                                              jmp   n556_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 5
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n554_call_builtin_prolog_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx581_2];     jmp   .Lx581_3
.Lx581_2:               .quad            .Lx581_2_s
.Lx581_2_s:             .string          "jones"
.Lx581_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n556_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n555_suspend_α
n554_call_builtin_prolog_β:
                                                                              jmp   n556_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx583_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx583_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n555_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterAtChess$2F2_γ
n555_suspend_β:                                                               jmp   n556_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
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
                        cmp              eax, 104;                            je    betterAtChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n557_var_ref_α
n556_call_builtin_prolog_β:
                                                                              jmp   betterAtChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 5
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n559_call_builtin_prolog_α
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n559_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx588_2];     jmp   .Lx588_3
.Lx588_2:               .quad            .Lx588_2_s
.Lx588_2_s:             .string          "brown"
.Lx588_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n564_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n560_var_ref_α
n559_call_builtin_prolog_β:
                                                                              jmp   n564_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n562_call_builtin_prolog_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx592_2];     jmp   .Lx592_3
.Lx592_2:               .quad            .Lx592_2_s
.Lx592_2_s:             .string          "smith"
.Lx592_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n564_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n563_suspend_α
n562_call_builtin_prolog_β:
                                                                              jmp   n564_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n563_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx594_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx594_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n563_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n563_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterAtChess$2F2_γ
n563_suspend_β:                                                               jmp   n564_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n564_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    betterAtChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n565_var_ref_α
n564_call_builtin_prolog_β:
                                                                              jmp   betterAtChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n566_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n567_call_builtin_prolog_α
.Lx598_0:               .quad            .Lx598_0_s
.Lx598_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n567_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx599_2];     jmp   .Lx599_3
.Lx599_2:               .quad            .Lx599_2_s
.Lx599_2_s:             .string          "brown"
.Lx599_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n572_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n568_var_ref_α
n567_call_builtin_prolog_β:
                                                                              jmp   n572_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n569_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 5
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n570_call_builtin_prolog_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx603_2];     jmp   .Lx603_3
.Lx603_2:               .quad            .Lx603_2_s
.Lx603_2_s:             .string          "jones"
.Lx603_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n572_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n571_suspend_α
n570_call_builtin_prolog_β:
                                                                              jmp   n572_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n571_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx605_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx605_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n571_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n571_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterAtChess$2F2_γ
n571_suspend_β:                                                               jmp   n572_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    betterAtChess$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   betterAtChess$2F2_ω
n572_call_builtin_prolog_β:
                                                                              jmp   betterAtChess$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
betterAtChess$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
betterAtChess$2F2_β:
                                                                              jmp   n555_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
betterAtChess$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx606_50
                        mov              qword ptr [rsp + 704], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx606_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
betterAtChess$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
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
                        sub              rsp, 1728
                        mov              qword ptr [rsp + 1704], rcx
                        mov              qword ptr [rsp + 1712], rdx
                        mov              qword ptr [rsp + 1720], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1696
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
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
n607_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx651_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx651_101
.Lx651_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx651_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx651_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx651_101
.Lx651_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx651_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n608_var_ref_α
n607_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n609_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_proc_staged_α:
                        mov              qword ptr [rsp + 1568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx655_20
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx655_21
.Lx655_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx655_21:              lea              rax, [rip + .Lx655_7]
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
                        test             rax, rax;                            je    .Lx655_1
                        lea              rcx, [rip + .Lx655_3]
                        lea              rdx, [rip + .Lx655_4];               jmp   rax
.Lx655_3:               mov              qword ptr [rsp + 1576], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx655_5
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx655_2
.Lx655_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx655_2
.Lx655_4:               mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx655_6
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx655_2
.Lx655_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx655_2
.Lx655_1:               call             rt_faildescr@PLT
.Lx655_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx655_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
.Lx655_29:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n650_call_builtin_prolog_α
                                                                              jmp   n610_var_ref_α
n609_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1568], 0
                        lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n650_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
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
                        test             rax, rax;                            je    n650_call_builtin_prolog_α
                        lea              r11, [rip + .Lx655_7]
                        push             r11
                        lea              rcx, [rip + .Lx655_3]
                        lea              rdx, [rip + .Lx655_4];               jmp   rax
.Lx655_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n650_call_builtin_prolog_α
                                                                              jmp   n610_var_ref_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n611_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n611_call_proc_staged_α:
                        mov              qword ptr [rsp + 1488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx659_20
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx659_21
.Lx659_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx659_21:              lea              rax, [rip + .Lx659_7]
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
                        test             rax, rax;                            je    .Lx659_1
                        lea              rcx, [rip + .Lx659_3]
                        lea              rdx, [rip + .Lx659_4];               jmp   rax
.Lx659_3:               mov              qword ptr [rsp + 1496], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1488]
                        test             rax, rax;                            jne   .Lx659_5
                        mov              qword ptr [rsp + 1488], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx659_2
.Lx659_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx659_2
.Lx659_4:               mov              rax, qword ptr [rsp + 1488]
                        test             rax, rax;                            jne   .Lx659_6
                        mov              qword ptr [rsp + 1488], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx659_2
.Lx659_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx659_2
.Lx659_1:               call             rt_faildescr@PLT
.Lx659_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx659_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
.Lx659_29:              mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n609_call_proc_staged_β
                                                                              jmp   n612_var_ref_α
n611_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1488], 0
                        lea              rdi, [rsp + 1504]
                        lea              rsi, [rsp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n609_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
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
                        test             rax, rax;                            je    n609_call_proc_staged_β
                        lea              r11, [rip + .Lx659_7]
                        push             r11
                        lea              rcx, [rip + .Lx659_3]
                        lea              rdx, [rip + .Lx659_4];               jmp   rax
.Lx659_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n609_call_proc_staged_β
                                                                              jmp   n612_var_ref_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n613_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n613_call_proc_staged_α:
                        mov              qword ptr [rsp + 1408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_20
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx663_21
.Lx663_20:              mov              edi, 0
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
.Lx663_21:              lea              rax, [rip + .Lx663_7]
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
                        test             rax, rax;                            je    .Lx663_1
                        lea              rcx, [rip + .Lx663_3]
                        lea              rdx, [rip + .Lx663_4];               jmp   rax
.Lx663_3:               mov              qword ptr [rsp + 1416], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1408]
                        test             rax, rax;                            jne   .Lx663_5
                        mov              qword ptr [rsp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx663_2
.Lx663_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx663_2
.Lx663_4:               mov              rax, qword ptr [rsp + 1408]
                        test             rax, rax;                            jne   .Lx663_6
                        mov              qword ptr [rsp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx663_2
.Lx663_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx663_2
.Lx663_1:               call             rt_faildescr@PLT
.Lx663_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx663_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
.Lx663_29:              mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    n611_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
n613_call_proc_staged_β:
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
                        test             rax, rax;                            je    n611_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              ecx, 32
                        mov              r8d, 576
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
                        test             rax, rax;                            je    n611_call_proc_staged_β
                        lea              r11, [rip + .Lx663_7]
                        push             r11
                        lea              rcx, [rip + .Lx663_3]
                        lea              rdx, [rip + .Lx663_4];               jmp   rax
.Lx663_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    n611_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n615_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_proc_staged_α:
                        mov              qword ptr [rsp + 1328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx667_20
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx667_21
.Lx667_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx667_21:              lea              rax, [rip + .Lx667_7]
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
                        test             rax, rax;                            je    .Lx667_1
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4];               jmp   rax
.Lx667_3:               mov              qword ptr [rsp + 1336], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1328]
                        test             rax, rax;                            jne   .Lx667_5
                        mov              qword ptr [rsp + 1328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx667_2
.Lx667_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx667_2
.Lx667_4:               mov              rax, qword ptr [rsp + 1328]
                        test             rax, rax;                            jne   .Lx667_6
                        mov              qword ptr [rsp + 1328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx667_2
.Lx667_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx667_2
.Lx667_1:               call             rt_faildescr@PLT
.Lx667_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx667_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
.Lx667_29:              mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n613_call_proc_staged_β
                                                                              jmp   n616_var_ref_α
n615_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1328], 0
                        lea              rdi, [rsp + 1344]
                        lea              rsi, [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n613_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
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
                        test             rax, rax;                            je    n613_call_proc_staged_β
                        lea              r11, [rip + .Lx667_7]
                        push             r11
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4];               jmp   rax
.Lx667_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n613_call_proc_staged_β
                                                                              jmp   n616_var_ref_α
.Lx667_0:               .quad            .Lx667_0_s
.Lx667_0_s:             .string          "person/1"
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n618_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n619_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n620_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n620_call_proc_staged_α:
                        mov              qword ptr [rsp + 1200], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx677_20
                        mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx677_21
.Lx677_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx677_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx677_22
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx677_23
.Lx677_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx677_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx677_24
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx677_25
.Lx677_24:              mov              edi, 2
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
.Lx677_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx677_26
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx677_27
.Lx677_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx677_27:              lea              rax, [rip + .Lx677_7]
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
                        test             rax, rax;                            je    .Lx677_1
                        lea              rcx, [rip + .Lx677_3]
                        lea              rdx, [rip + .Lx677_4];               jmp   rax
.Lx677_3:               mov              qword ptr [rsp + 1208], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx677_5
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx677_2
.Lx677_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx677_2
.Lx677_4:               mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx677_6
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx677_2
.Lx677_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx677_2
.Lx677_1:               call             rt_faildescr@PLT
.Lx677_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx677_29
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
.Lx677_29:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n615_call_proc_staged_β
                                                                              jmp   n621_var_ref_α
n620_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1200], 0
                        lea              rdi, [rsp + 1216]
                        lea              rsi, [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n615_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
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
                        mov              rsi, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
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
                        test             rax, rax;                            je    n615_call_proc_staged_β
                        lea              r11, [rip + .Lx677_7]
                        push             r11
                        lea              rcx, [rip + .Lx677_3]
                        lea              rdx, [rip + .Lx677_4];               jmp   rax
.Lx677_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n615_call_proc_staged_β
                                                                              jmp   n621_var_ref_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "differ/4"
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n622_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n623_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n623_call_proc_staged_α:
                        mov              qword ptr [rsp + 1056], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_20
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx683_21
.Lx683_20:              mov              edi, 0
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
.Lx683_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_22
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx683_23
.Lx683_22:              mov              edi, 1
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
.Lx683_23:              lea              rax, [rip + .Lx683_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx683_1
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4];               jmp   rax
.Lx683_3:               mov              qword ptr [rsp + 1064], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1056]
                        test             rax, rax;                            jne   .Lx683_5
                        mov              qword ptr [rsp + 1056], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx683_2
.Lx683_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx683_2
.Lx683_4:               mov              rax, qword ptr [rsp + 1056]
                        test             rax, rax;                            jne   .Lx683_6
                        mov              qword ptr [rsp + 1056], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx683_2
.Lx683_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx683_2
.Lx683_1:               call             rt_faildescr@PLT
.Lx683_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx683_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
.Lx683_29:              mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 104;                            je    n620_call_proc_staged_β
                                                                              jmp   n624_var_ref_α
n623_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1056], 0
                        lea              rdi, [rsp + 1072]
                        lea              rsi, [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n620_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
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
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n620_call_proc_staged_β
                        lea              r11, [rip + .Lx683_7]
                        push             r11
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4];               jmp   rax
.Lx683_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 104;                            je    n620_call_proc_staged_β
                                                                              jmp   n624_var_ref_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "betterAtChess/2"
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n625_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n626_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n626_call_proc_staged_α:
                        lea              rsi, [rsp + 976]
                        lea              rdx, [rsp + 992]
                        call             playsChess$2F2_dcα;                  jmp   .Lx689_2
.Lx689_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx689_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
.Lx689_29:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n627_var_ref_α
                                                                              jmp   n623_call_proc_staged_β
n626_call_proc_staged_β:
                                                                              jmp   n627_var_ref_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "playsChess/2"
#-----------------------------------------------------------------------------------------------------------------------
n627_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n628_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n629_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n629_call_proc_staged_α:
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 896]
                        call             playsChess$2F2_dcα;                  jmp   .Lx695_2
.Lx695_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx695_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
.Lx695_29:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    n630_var_ref_α
                                                                              jmp   n623_call_proc_staged_β
n629_call_proc_staged_β:
                                                                              jmp   n630_var_ref_α
.Lx695_0:               .quad            .Lx695_0_s
.Lx695_0_s:             .string          "playsChess/2"
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n631_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n632_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_proc_staged_α:
                        mov              qword ptr [rsp + 752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx701_20
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx701_21
.Lx701_20:              mov              edi, 0
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
.Lx701_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx701_22
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx701_23
.Lx701_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx701_23:              lea              rax, [rip + .Lx701_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx701_1
                        lea              rcx, [rip + .Lx701_3]
                        lea              rdx, [rip + .Lx701_4];               jmp   rax
.Lx701_3:               mov              qword ptr [rsp + 760], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 752]
                        test             rax, rax;                            jne   .Lx701_5
                        mov              qword ptr [rsp + 752], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx701_2
.Lx701_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx701_2
.Lx701_4:               mov              rax, qword ptr [rsp + 752]
                        test             rax, rax;                            jne   .Lx701_6
                        mov              qword ptr [rsp + 752], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx701_2
.Lx701_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx701_2
.Lx701_1:               call             rt_faildescr@PLT
.Lx701_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx701_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx701_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n623_call_proc_staged_β
                                                                              jmp   n633_var_ref_α
n632_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 752], 0
                        lea              rdi, [rsp + 768]
                        lea              rsi, [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n623_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n623_call_proc_staged_β
                        lea              r11, [rip + .Lx701_7]
                        push             r11
                        lea              rcx, [rip + .Lx701_3]
                        lea              rdx, [rip + .Lx701_4];               jmp   rax
.Lx701_7:               add              rsp, 8
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n623_call_proc_staged_β
                                                                              jmp   n633_var_ref_α
.Lx701_0:               .quad            .Lx701_0_s
.Lx701_0_s:             .string          "betterAtChess/2"
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n634_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n635_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n635_call_proc_staged_α:
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx707_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx707_21
.Lx707_20:              mov              edi, 0
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
.Lx707_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx707_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx707_23
.Lx707_22:              mov              edi, 1
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
.Lx707_23:              lea              rax, [rip + .Lx707_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx707_1
                        lea              rcx, [rip + .Lx707_3]
                        lea              rdx, [rip + .Lx707_4];               jmp   rax
.Lx707_3:               mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx707_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx707_2
.Lx707_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx707_2
.Lx707_4:               mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx707_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx707_2
.Lx707_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx707_2
.Lx707_1:               call             rt_faildescr@PLT
.Lx707_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx707_29
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
.Lx707_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n632_call_proc_staged_β
                                                                              jmp   n636_var_ref_α
n635_call_proc_staged_β:
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
                        test             rax, rax;                            je    n632_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              ecx, 48
                        mov              r8d, 704
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
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n632_call_proc_staged_β
                        lea              r11, [rip + .Lx707_7]
                        push             r11
                        lea              rcx, [rip + .Lx707_3]
                        lea              rdx, [rip + .Lx707_4];               jmp   rax
.Lx707_7:               add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n632_call_proc_staged_β
                                                                              jmp   n636_var_ref_α
.Lx707_0:               .quad            .Lx707_0_s
.Lx707_0_s:             .string          "betterAtChess/2"
#-----------------------------------------------------------------------------------------------------------------------
n636_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n637_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n638_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n638_call_proc_staged_α:
                        mov              qword ptr [rsp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx713_20
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx713_21
.Lx713_20:              mov              edi, 0
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
.Lx713_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx713_22
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx713_23
.Lx713_22:              mov              edi, 1
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
.Lx713_23:              lea              rax, [rip + .Lx713_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx713_1
                        lea              rcx, [rip + .Lx713_3]
                        lea              rdx, [rip + .Lx713_4];               jmp   rax
.Lx713_3:               mov              qword ptr [rsp + 536], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx713_5
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx713_2
.Lx713_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx713_2
.Lx713_4:               mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx713_6
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx713_2
.Lx713_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx713_2
.Lx713_1:               call             rt_faildescr@PLT
.Lx713_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx713_29
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
.Lx713_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n635_call_proc_staged_β
                                                                              jmp   n639_var_ref_α
n638_call_proc_staged_β:
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
                        test             rax, rax;                            je    n635_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              ecx, 48
                        mov              r8d, 1040
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
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n635_call_proc_staged_β
                        lea              r11, [rip + .Lx713_7]
                        push             r11
                        lea              rcx, [rip + .Lx713_3]
                        lea              rdx, [rip + .Lx713_4];               jmp   rax
.Lx713_7:               add              rsp, 8
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n635_call_proc_staged_β
                                                                              jmp   n639_var_ref_α
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "doesLiveNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n640_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n641_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_proc_staged_α:
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx719_20
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx719_21
.Lx719_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx719_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx719_22
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx719_23
.Lx719_22:              mov              edi, 1
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
.Lx719_23:              lea              rax, [rip + .Lx719_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx719_1
                        lea              rcx, [rip + .Lx719_3]
                        lea              rdx, [rip + .Lx719_4];               jmp   rax
.Lx719_3:               mov              qword ptr [rsp + 424], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx719_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx719_2
.Lx719_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx719_2
.Lx719_4:               mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx719_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx719_2
.Lx719_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx719_2
.Lx719_1:               call             rt_faildescr@PLT
.Lx719_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx719_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lx719_29:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n642_var_ref_α
                                                                              jmp   n638_call_proc_staged_β
n641_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 416], 0
                        lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n642_var_ref_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              ecx, 48
                        mov              r8d, 1040
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n642_var_ref_α
                        lea              r11, [rip + .Lx719_7]
                        push             r11
                        lea              rcx, [rip + .Lx719_3]
                        lea              rdx, [rip + .Lx719_4];               jmp   rax
.Lx719_7:               add              rsp, 8
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n642_var_ref_α
                                                                              jmp   n638_call_proc_staged_β
.Lx719_0:               .quad            .Lx719_0_s
.Lx719_0_s:             .string          "doesLiveNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n643_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n643_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n644_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n644_call_proc_staged_α:
                        mov              qword ptr [rsp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx725_20
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx725_21
.Lx725_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx725_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx725_22
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx725_23
.Lx725_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx725_23:              lea              rax, [rip + .Lx725_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx725_1
                        lea              rcx, [rip + .Lx725_3]
                        lea              rdx, [rip + .Lx725_4];               jmp   rax
.Lx725_3:               mov              qword ptr [rsp + 312], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lx725_5
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx725_2
.Lx725_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx725_2
.Lx725_4:               mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lx725_6
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx725_2
.Lx725_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx725_2
.Lx725_1:               call             rt_faildescr@PLT
.Lx725_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx725_29
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
.Lx725_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n645_var_ref_α
                                                                              jmp   n638_call_proc_staged_β
n644_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 304], 0
                        lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n645_var_ref_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              ecx, 48
                        mov              r8d, 1040
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n645_var_ref_α
                        lea              r11, [rip + .Lx725_7]
                        push             r11
                        lea              rcx, [rip + .Lx725_3]
                        lea              rdx, [rip + .Lx725_4];               jmp   rax
.Lx725_7:               add              rsp, 8
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n645_var_ref_α
                                                                              jmp   n638_call_proc_staged_β
.Lx725_0:               .quad            .Lx725_0_s
.Lx725_0_s:             .string          "doesLiveNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n646_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n646_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1632]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n647_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n647_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1648]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n648_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n649_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n649_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        lea              rcx, [rsp + 224]
                        lea              r8, [rsp + 240]
                        call             display$2F4_dcα;                     jmp   .Lx735_2
.Lx735_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx735_29
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
.Lx735_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n638_call_proc_staged_β
                                                                              jmp   n649_call_proc_staged_β
n649_call_proc_staged_β:
                                                                              jmp   n638_call_proc_staged_β
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "display/4"
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_prolog_α:
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
n650_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1704]
                        add              rsp, 1728;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1712]
                        add              rsp, 1728;                           jmp   rcx
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
.Lstartup_pname1:       .string          "doesLiveNear/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__doesLiveNear$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1104
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "person/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__person$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            592
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "playsChess/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__playsChess$2F2
                        .quad            playsChess$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "display/4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "livesNear/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__livesNear$2F2
                        .quad            livesNear$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "betterAtChess/2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__betterAtChess$2F2
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
