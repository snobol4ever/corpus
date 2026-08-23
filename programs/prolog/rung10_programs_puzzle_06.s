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
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
differ$2F4_α_body:
                        lea              rax, [rip + n97_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx99_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx99_101
.Lx99_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx99_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx99_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx99_101
.Lx99_100:              lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx99_101:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
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
.Lx104_41:              lea              r9, [rsp + 2640]
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx104_47
                        cmp              al, 104;                             je    .Lx104_47
                        cmp              al, 72;                              jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx104_47
                                                                              jmp   .Lx104_48
.Lx104_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
                        add              rdi, rsi
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx104_54:              mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
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
                        cmp              al, 40;                              jne   .Lx109_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx109_41
                        cmp              esi, 1;                              jne   .Lx109_55
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_55:              cmp              esi, 2;                              jne   .Lx109_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx109_41
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_56:              cmp              al, 72;                              jne   .Lx109_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx109_41
                        cmp              rax, r8;                             je    .Lx109_41
                        mov              r8, rax;                             jmp   .Lx109_40
.Lx109_41:              lea              r9, [rsp + 2560]
.Lx109_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx109_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx109_43
                        cmp              esi, 1;                              jne   .Lx109_57
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_57:              cmp              esi, 2;                              jne   .Lx109_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx109_43
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_58:              cmp              al, 72;                              jne   .Lx109_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx109_43
                        cmp              rax, r9;                             je    .Lx109_43
                        mov              r9, rax;                             jmp   .Lx109_42
.Lx109_43:              cmp              r8, r9;                              je    .Lx109_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx109_44
                        cmp              al, 104;                             je    .Lx109_44
                        cmp              al, 72;                              jne   .Lx109_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx109_44
                                                                              jmp   .Lx109_45
.Lx109_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx109_53
                        cmp              al, 104;                             je    .Lx109_53
                        cmp              al, 72;                              jne   .Lx109_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx109_53
                                                                              jmp   .Lx109_46
.Lx109_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx109_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx109_47
                        cmp              al, 104;                             je    .Lx109_47
                        cmp              al, 72;                              jne   .Lx109_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx109_47
                                                                              jmp   .Lx109_48
.Lx109_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx109_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx109_49
                        cmp              dl, 80;                              je    .Lx109_53
                                                                              jmp   .Lx109_52
.Lx109_49:              cmp              dl, 80;                              je    .Lx109_52
                        cmp              cl, 5;                               je    .Lx109_53
                        cmp              dl, 5;                               je    .Lx109_53
                        cmp              cl, 3;                               jne   .Lx109_50
                        cmp              dl, 3;                               jne   .Lx109_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx109_54:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
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
                        cmp              al, 40;                              jne   .Lx114_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx114_41
                        cmp              esi, 1;                              jne   .Lx114_55
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_55:              cmp              esi, 2;                              jne   .Lx114_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx114_41
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_56:              cmp              al, 72;                              jne   .Lx114_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx114_41
                        cmp              rax, r8;                             je    .Lx114_41
                        mov              r8, rax;                             jmp   .Lx114_40
.Lx114_41:              lea              r9, [rsp + 2480]
.Lx114_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx114_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx114_43
                        cmp              esi, 1;                              jne   .Lx114_57
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_57:              cmp              esi, 2;                              jne   .Lx114_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx114_43
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_58:              cmp              al, 72;                              jne   .Lx114_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx114_43
                        cmp              rax, r9;                             je    .Lx114_43
                        mov              r9, rax;                             jmp   .Lx114_42
.Lx114_43:              cmp              r8, r9;                              je    .Lx114_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx114_44
                        cmp              al, 104;                             je    .Lx114_44
                        cmp              al, 72;                              jne   .Lx114_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx114_44
                                                                              jmp   .Lx114_45
.Lx114_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx114_53
                        cmp              al, 104;                             je    .Lx114_53
                        cmp              al, 72;                              jne   .Lx114_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx114_53
                                                                              jmp   .Lx114_46
.Lx114_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx114_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx114_47
                        cmp              al, 104;                             je    .Lx114_47
                        cmp              al, 72;                              jne   .Lx114_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx114_47
                                                                              jmp   .Lx114_48
.Lx114_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx114_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx114_49
                        cmp              dl, 80;                              je    .Lx114_53
                                                                              jmp   .Lx114_52
.Lx114_49:              cmp              dl, 80;                              je    .Lx114_52
                        cmp              cl, 5;                               je    .Lx114_53
                        cmp              dl, 5;                               je    .Lx114_53
                        cmp              cl, 3;                               jne   .Lx114_50
                        cmp              dl, 3;                               jne   .Lx114_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx114_54:              mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
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
                        cmp              al, 40;                              jne   .Lx119_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx119_41
                        cmp              esi, 1;                              jne   .Lx119_55
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_55:              cmp              esi, 2;                              jne   .Lx119_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx119_41
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_56:              cmp              al, 72;                              jne   .Lx119_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx119_41
                        cmp              rax, r8;                             je    .Lx119_41
                        mov              r8, rax;                             jmp   .Lx119_40
.Lx119_41:              lea              r9, [rsp + 2400]
.Lx119_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx119_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx119_43
                        cmp              esi, 1;                              jne   .Lx119_57
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_57:              cmp              esi, 2;                              jne   .Lx119_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx119_43
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_58:              cmp              al, 72;                              jne   .Lx119_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx119_43
                        cmp              rax, r9;                             je    .Lx119_43
                        mov              r9, rax;                             jmp   .Lx119_42
.Lx119_43:              cmp              r8, r9;                              je    .Lx119_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx119_44
                        cmp              al, 104;                             je    .Lx119_44
                        cmp              al, 72;                              jne   .Lx119_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx119_44
                                                                              jmp   .Lx119_45
.Lx119_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx119_53
                        cmp              al, 104;                             je    .Lx119_53
                        cmp              al, 72;                              jne   .Lx119_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx119_53
                                                                              jmp   .Lx119_46
.Lx119_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx119_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx119_47
                        cmp              al, 104;                             je    .Lx119_47
                        cmp              al, 72;                              jne   .Lx119_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx119_47
                                                                              jmp   .Lx119_48
.Lx119_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx119_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx119_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx119_49
                        cmp              dl, 80;                              je    .Lx119_53
                                                                              jmp   .Lx119_52
.Lx119_49:              cmp              dl, 80;                              je    .Lx119_52
                        cmp              cl, 5;                               je    .Lx119_53
                        cmp              dl, 5;                               je    .Lx119_53
                        cmp              cl, 3;                               jne   .Lx119_50
                        cmp              dl, 3;                               jne   .Lx119_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx119_54:              mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n14_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_cut_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cut_α:              mov              r11, 14;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
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
                        cmp              al, 40;                              jne   .Lx126_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx126_41
                        cmp              esi, 1;                              jne   .Lx126_55
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_55:              cmp              esi, 2;                              jne   .Lx126_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx126_41
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_56:              cmp              al, 72;                              jne   .Lx126_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx126_41
                        cmp              rax, r8;                             je    .Lx126_41
                        mov              r8, rax;                             jmp   .Lx126_40
.Lx126_41:              lea              r9, [rsp + 2272]
.Lx126_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx126_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx126_43
                        cmp              esi, 1;                              jne   .Lx126_57
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_57:              cmp              esi, 2;                              jne   .Lx126_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx126_43
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_58:              cmp              al, 72;                              jne   .Lx126_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx126_43
                        cmp              rax, r9;                             je    .Lx126_43
                        mov              r9, rax;                             jmp   .Lx126_42
.Lx126_43:              cmp              r8, r9;                              je    .Lx126_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx126_44
                        cmp              al, 104;                             je    .Lx126_44
                        cmp              al, 72;                              jne   .Lx126_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx126_44
                                                                              jmp   .Lx126_45
.Lx126_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx126_53
                        cmp              al, 104;                             je    .Lx126_53
                        cmp              al, 72;                              jne   .Lx126_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx126_53
                                                                              jmp   .Lx126_46
.Lx126_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx126_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx126_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx126_47
                        cmp              al, 104;                             je    .Lx126_47
                        cmp              al, 72;                              jne   .Lx126_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx126_47
                                                                              jmp   .Lx126_48
.Lx126_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx126_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx126_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx126_49
                        cmp              dl, 80;                              je    .Lx126_53
                                                                              jmp   .Lx126_52
.Lx126_49:              cmp              dl, 80;                              je    .Lx126_52
                        cmp              cl, 5;                               je    .Lx126_53
                        cmp              dl, 5;                               je    .Lx126_53
                        cmp              cl, 3;                               jne   .Lx126_50
                        cmp              dl, 3;                               jne   .Lx126_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx126_54:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
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
                        cmp              al, 40;                              jne   .Lx131_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx131_41
                        cmp              esi, 1;                              jne   .Lx131_55
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_55:              cmp              esi, 2;                              jne   .Lx131_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx131_41
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_56:              cmp              al, 72;                              jne   .Lx131_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx131_41
                        cmp              rax, r8;                             je    .Lx131_41
                        mov              r8, rax;                             jmp   .Lx131_40
.Lx131_41:              lea              r9, [rsp + 2192]
.Lx131_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx131_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx131_43
                        cmp              esi, 1;                              jne   .Lx131_57
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_57:              cmp              esi, 2;                              jne   .Lx131_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx131_43
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_58:              cmp              al, 72;                              jne   .Lx131_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx131_43
                        cmp              rax, r9;                             je    .Lx131_43
                        mov              r9, rax;                             jmp   .Lx131_42
.Lx131_43:              cmp              r8, r9;                              je    .Lx131_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx131_44
                        cmp              al, 104;                             je    .Lx131_44
                        cmp              al, 72;                              jne   .Lx131_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx131_44
                                                                              jmp   .Lx131_45
.Lx131_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx131_53
                        cmp              al, 104;                             je    .Lx131_53
                        cmp              al, 72;                              jne   .Lx131_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx131_53
                                                                              jmp   .Lx131_46
.Lx131_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx131_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx131_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx131_47
                        cmp              al, 104;                             je    .Lx131_47
                        cmp              al, 72;                              jne   .Lx131_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx131_47
                                                                              jmp   .Lx131_48
.Lx131_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx131_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx131_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx131_49
                        cmp              dl, 80;                              je    .Lx131_53
                                                                              jmp   .Lx131_52
.Lx131_49:              cmp              dl, 80;                              je    .Lx131_52
                        cmp              cl, 5;                               je    .Lx131_53
                        cmp              dl, 5;                               je    .Lx131_53
                        cmp              cl, 3;                               jne   .Lx131_50
                        cmp              dl, 3;                               jne   .Lx131_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx131_54:              mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
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
                        cmp              al, 40;                              jne   .Lx136_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              esi, 1;                              jne   .Lx136_55
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_55:              cmp              esi, 2;                              jne   .Lx136_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_56:              cmp              al, 72;                              jne   .Lx136_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx136_41
                        cmp              rax, r8;                             je    .Lx136_41
                        mov              r8, rax;                             jmp   .Lx136_40
.Lx136_41:              lea              r9, [rsp + 2112]
.Lx136_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx136_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              esi, 1;                              jne   .Lx136_57
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_57:              cmp              esi, 2;                              jne   .Lx136_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_58:              cmp              al, 72;                              jne   .Lx136_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx136_43
                        cmp              rax, r9;                             je    .Lx136_43
                        mov              r9, rax;                             jmp   .Lx136_42
.Lx136_43:              cmp              r8, r9;                              je    .Lx136_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx136_44
                        cmp              al, 104;                             je    .Lx136_44
                        cmp              al, 72;                              jne   .Lx136_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx136_44
                                                                              jmp   .Lx136_45
.Lx136_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx136_53
                        cmp              al, 104;                             je    .Lx136_53
                        cmp              al, 72;                              jne   .Lx136_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_53
                                                                              jmp   .Lx136_46
.Lx136_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx136_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx136_47
                        cmp              al, 104;                             je    .Lx136_47
                        cmp              al, 72;                              jne   .Lx136_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx136_47
                                                                              jmp   .Lx136_48
.Lx136_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx136_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx136_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx136_49
                        cmp              dl, 80;                              je    .Lx136_53
                                                                              jmp   .Lx136_52
.Lx136_49:              cmp              dl, 80;                              je    .Lx136_52
                        cmp              cl, 5;                               je    .Lx136_53
                        cmp              dl, 5;                               je    .Lx136_53
                        cmp              cl, 3;                               jne   .Lx136_50
                        cmp              dl, 3;                               jne   .Lx136_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx136_54:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
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
                        cmp              al, 40;                              jne   .Lx141_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_41
                        cmp              esi, 1;                              jne   .Lx141_55
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_55:              cmp              esi, 2;                              jne   .Lx141_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_41
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_56:              cmp              al, 72;                              jne   .Lx141_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx141_41
                        cmp              rax, r8;                             je    .Lx141_41
                        mov              r8, rax;                             jmp   .Lx141_40
.Lx141_41:              lea              r9, [rsp + 2032]
.Lx141_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx141_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_43
                        cmp              esi, 1;                              jne   .Lx141_57
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_57:              cmp              esi, 2;                              jne   .Lx141_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx141_43
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_58:              cmp              al, 72;                              jne   .Lx141_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx141_43
                        cmp              rax, r9;                             je    .Lx141_43
                        mov              r9, rax;                             jmp   .Lx141_42
.Lx141_43:              cmp              r8, r9;                              je    .Lx141_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx141_44
                        cmp              al, 104;                             je    .Lx141_44
                        cmp              al, 72;                              jne   .Lx141_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx141_44
                                                                              jmp   .Lx141_45
.Lx141_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx141_53
                        cmp              al, 104;                             je    .Lx141_53
                        cmp              al, 72;                              jne   .Lx141_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_53
                                                                              jmp   .Lx141_46
.Lx141_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx141_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx141_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx141_47
                        cmp              al, 104;                             je    .Lx141_47
                        cmp              al, 72;                              jne   .Lx141_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx141_47
                                                                              jmp   .Lx141_48
.Lx141_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx141_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx141_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx141_49
                        cmp              dl, 80;                              je    .Lx141_53
                                                                              jmp   .Lx141_52
.Lx141_49:              cmp              dl, 80;                              je    .Lx141_52
                        cmp              cl, 5;                               je    .Lx141_53
                        cmp              dl, 5;                               je    .Lx141_53
                        cmp              cl, 3;                               jne   .Lx141_50
                        cmp              dl, 3;                               jne   .Lx141_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx141_54:              mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_cut_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_cut_α:              mov              r11, 28;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
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
                        cmp              al, 40;                              jne   .Lx148_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx148_41
                        cmp              esi, 1;                              jne   .Lx148_55
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_55:              cmp              esi, 2;                              jne   .Lx148_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx148_41
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_56:              cmp              al, 72;                              jne   .Lx148_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx148_41
                        cmp              rax, r8;                             je    .Lx148_41
                        mov              r8, rax;                             jmp   .Lx148_40
.Lx148_41:              lea              r9, [rsp + 1904]
.Lx148_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx148_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx148_43
                        cmp              esi, 1;                              jne   .Lx148_57
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_57:              cmp              esi, 2;                              jne   .Lx148_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx148_43
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_58:              cmp              al, 72;                              jne   .Lx148_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx148_43
                        cmp              rax, r9;                             je    .Lx148_43
                        mov              r9, rax;                             jmp   .Lx148_42
.Lx148_43:              cmp              r8, r9;                              je    .Lx148_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx148_44
                        cmp              al, 104;                             je    .Lx148_44
                        cmp              al, 72;                              jne   .Lx148_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx148_44
                                                                              jmp   .Lx148_45
.Lx148_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx148_53
                        cmp              al, 104;                             je    .Lx148_53
                        cmp              al, 72;                              jne   .Lx148_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx148_53
                                                                              jmp   .Lx148_46
.Lx148_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx148_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx148_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx148_47
                        cmp              al, 104;                             je    .Lx148_47
                        cmp              al, 72;                              jne   .Lx148_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx148_47
                                                                              jmp   .Lx148_48
.Lx148_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx148_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx148_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx148_49
                        cmp              dl, 80;                              je    .Lx148_53
                                                                              jmp   .Lx148_52
.Lx148_49:              cmp              dl, 80;                              je    .Lx148_52
                        cmp              cl, 5;                               je    .Lx148_53
                        cmp              dl, 5;                               je    .Lx148_53
                        cmp              cl, 3;                               jne   .Lx148_50
                        cmp              dl, 3;                               jne   .Lx148_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx148_54:              mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
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
                        cmp              al, 40;                              jne   .Lx153_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx153_41
                        cmp              esi, 1;                              jne   .Lx153_55
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_55:              cmp              esi, 2;                              jne   .Lx153_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx153_41
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_56:              cmp              al, 72;                              jne   .Lx153_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx153_41
                        cmp              rax, r8;                             je    .Lx153_41
                        mov              r8, rax;                             jmp   .Lx153_40
.Lx153_41:              lea              r9, [rsp + 1824]
.Lx153_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx153_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx153_43
                        cmp              esi, 1;                              jne   .Lx153_57
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_57:              cmp              esi, 2;                              jne   .Lx153_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx153_43
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_58:              cmp              al, 72;                              jne   .Lx153_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx153_43
                        cmp              rax, r9;                             je    .Lx153_43
                        mov              r9, rax;                             jmp   .Lx153_42
.Lx153_43:              cmp              r8, r9;                              je    .Lx153_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx153_44
                        cmp              al, 104;                             je    .Lx153_44
                        cmp              al, 72;                              jne   .Lx153_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx153_44
                                                                              jmp   .Lx153_45
.Lx153_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx153_53
                        cmp              al, 104;                             je    .Lx153_53
                        cmp              al, 72;                              jne   .Lx153_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx153_53
                                                                              jmp   .Lx153_46
.Lx153_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx153_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx153_47
                        cmp              al, 104;                             je    .Lx153_47
                        cmp              al, 72;                              jne   .Lx153_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx153_47
                                                                              jmp   .Lx153_48
.Lx153_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx153_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx153_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx153_49
                        cmp              dl, 80;                              je    .Lx153_53
                                                                              jmp   .Lx153_52
.Lx153_49:              cmp              dl, 80;                              je    .Lx153_52
                        cmp              cl, 5;                               je    .Lx153_53
                        cmp              dl, 5;                               je    .Lx153_53
                        cmp              cl, 3;                               jne   .Lx153_50
                        cmp              dl, 3;                               jne   .Lx153_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx153_54:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 38
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
                        cmp              al, 40;                              jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              esi, 1;                              jne   .Lx158_55
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_55:              cmp              esi, 2;                              jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_56:              cmp              al, 72;                              jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx158_41
                        cmp              rax, r8;                             je    .Lx158_41
                        mov              r8, rax;                             jmp   .Lx158_40
.Lx158_41:              lea              r9, [rsp + 1744]
.Lx158_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              esi, 1;                              jne   .Lx158_57
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_57:              cmp              esi, 2;                              jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_58:              cmp              al, 72;                              jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx158_43
                        cmp              rax, r9;                             je    .Lx158_43
                        mov              r9, rax;                             jmp   .Lx158_42
.Lx158_43:              cmp              r8, r9;                              je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx158_44
                        cmp              al, 104;                             je    .Lx158_44
                        cmp              al, 72;                              jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx158_44
                                                                              jmp   .Lx158_45
.Lx158_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx158_53
                        cmp              al, 104;                             je    .Lx158_53
                        cmp              al, 72;                              jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_53
                                                                              jmp   .Lx158_46
.Lx158_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx158_47
                        cmp              al, 104;                             je    .Lx158_47
                        cmp              al, 72;                              jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx158_47
                                                                              jmp   .Lx158_48
.Lx158_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx158_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx158_49
                        cmp              dl, 80;                              je    .Lx158_53
                                                                              jmp   .Lx158_52
.Lx158_49:              cmp              dl, 80;                              je    .Lx158_52
                        cmp              cl, 5;                               je    .Lx158_53
                        cmp              dl, 5;                               je    .Lx158_53
                        cmp              cl, 3;                               jne   .Lx158_50
                        cmp              dl, 3;                               jne   .Lx158_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx158_54:              mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_var_ref_α
n37_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
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
                        cmp              al, 40;                              jne   .Lx163_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx163_41
                        cmp              esi, 1;                              jne   .Lx163_55
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_55:              cmp              esi, 2;                              jne   .Lx163_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx163_41
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_56:              cmp              al, 72;                              jne   .Lx163_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx163_41
                        cmp              rax, r8;                             je    .Lx163_41
                        mov              r8, rax;                             jmp   .Lx163_40
.Lx163_41:              lea              r9, [rsp + 1664]
.Lx163_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx163_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx163_43
                        cmp              esi, 1;                              jne   .Lx163_57
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_57:              cmp              esi, 2;                              jne   .Lx163_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx163_43
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_58:              cmp              al, 72;                              jne   .Lx163_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx163_43
                        cmp              rax, r9;                             je    .Lx163_43
                        mov              r9, rax;                             jmp   .Lx163_42
.Lx163_43:              cmp              r8, r9;                              je    .Lx163_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx163_44
                        cmp              al, 104;                             je    .Lx163_44
                        cmp              al, 72;                              jne   .Lx163_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx163_44
                                                                              jmp   .Lx163_45
.Lx163_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx163_53
                        cmp              al, 104;                             je    .Lx163_53
                        cmp              al, 72;                              jne   .Lx163_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx163_53
                                                                              jmp   .Lx163_46
.Lx163_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx163_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx163_47
                        cmp              al, 104;                             je    .Lx163_47
                        cmp              al, 72;                              jne   .Lx163_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx163_47
                                                                              jmp   .Lx163_48
.Lx163_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx163_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx163_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx163_49
                        cmp              dl, 80;                              je    .Lx163_53
                                                                              jmp   .Lx163_52
.Lx163_49:              cmp              dl, 80;                              je    .Lx163_52
                        cmp              cl, 5;                               je    .Lx163_53
                        cmp              dl, 5;                               je    .Lx163_53
                        cmp              cl, 3;                               jne   .Lx163_50
                        cmp              dl, 3;                               jne   .Lx163_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx163_54:              mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n42_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_cut_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_cut_α:              mov              r11, 42;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_var_ref_α
n42_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
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
                        cmp              al, 40;                              jne   .Lx170_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx170_41
                        cmp              esi, 1;                              jne   .Lx170_55
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_55:              cmp              esi, 2;                              jne   .Lx170_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx170_41
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_56:              cmp              al, 72;                              jne   .Lx170_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx170_41
                        cmp              rax, r8;                             je    .Lx170_41
                        mov              r8, rax;                             jmp   .Lx170_40
.Lx170_41:              lea              r9, [rsp + 1536]
.Lx170_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx170_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx170_43
                        cmp              esi, 1;                              jne   .Lx170_57
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_57:              cmp              esi, 2;                              jne   .Lx170_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx170_43
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_58:              cmp              al, 72;                              jne   .Lx170_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx170_43
                        cmp              rax, r9;                             je    .Lx170_43
                        mov              r9, rax;                             jmp   .Lx170_42
.Lx170_43:              cmp              r8, r9;                              je    .Lx170_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx170_44
                        cmp              al, 104;                             je    .Lx170_44
                        cmp              al, 72;                              jne   .Lx170_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx170_44
                                                                              jmp   .Lx170_45
.Lx170_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx170_53
                        cmp              al, 104;                             je    .Lx170_53
                        cmp              al, 72;                              jne   .Lx170_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx170_53
                                                                              jmp   .Lx170_46
.Lx170_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx170_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx170_47
                        cmp              al, 104;                             je    .Lx170_47
                        cmp              al, 72;                              jne   .Lx170_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx170_47
                                                                              jmp   .Lx170_48
.Lx170_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx170_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx170_49
                        cmp              dl, 80;                              je    .Lx170_53
                                                                              jmp   .Lx170_52
.Lx170_49:              cmp              dl, 80;                              je    .Lx170_52
                        cmp              cl, 5;                               je    .Lx170_53
                        cmp              dl, 5;                               je    .Lx170_53
                        cmp              cl, 3;                               jne   .Lx170_50
                        cmp              dl, 3;                               jne   .Lx170_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx170_54:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
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
                        cmp              al, 40;                              jne   .Lx175_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_41
                        cmp              esi, 1;                              jne   .Lx175_55
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_55:              cmp              esi, 2;                              jne   .Lx175_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx175_41
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_56:              cmp              al, 72;                              jne   .Lx175_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_41
                        cmp              rax, r8;                             je    .Lx175_41
                        mov              r8, rax;                             jmp   .Lx175_40
.Lx175_41:              lea              r9, [rsp + 1456]
.Lx175_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx175_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx175_43
                        cmp              esi, 1;                              jne   .Lx175_57
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_57:              cmp              esi, 2;                              jne   .Lx175_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx175_43
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_58:              cmp              al, 72;                              jne   .Lx175_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx175_43
                        cmp              rax, r9;                             je    .Lx175_43
                        mov              r9, rax;                             jmp   .Lx175_42
.Lx175_43:              cmp              r8, r9;                              je    .Lx175_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx175_44
                        cmp              al, 104;                             je    .Lx175_44
                        cmp              al, 72;                              jne   .Lx175_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx175_44
                                                                              jmp   .Lx175_45
.Lx175_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx175_53
                        cmp              al, 104;                             je    .Lx175_53
                        cmp              al, 72;                              jne   .Lx175_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx175_53
                                                                              jmp   .Lx175_46
.Lx175_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx175_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx175_47
                        cmp              al, 104;                             je    .Lx175_47
                        cmp              al, 72;                              jne   .Lx175_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx175_47
                                                                              jmp   .Lx175_48
.Lx175_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx175_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx175_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx175_49
                        cmp              dl, 80;                              je    .Lx175_53
                                                                              jmp   .Lx175_52
.Lx175_49:              cmp              dl, 80;                              je    .Lx175_52
                        cmp              cl, 5;                               je    .Lx175_53
                        cmp              dl, 5;                               je    .Lx175_53
                        cmp              cl, 3;                               jne   .Lx175_50
                        cmp              dl, 3;                               jne   .Lx175_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx175_54:              mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
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
                        cmp              al, 40;                              jne   .Lx180_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              esi, 1;                              jne   .Lx180_55
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_55:              cmp              esi, 2;                              jne   .Lx180_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_56:              cmp              al, 72;                              jne   .Lx180_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx180_41
                        cmp              rax, r8;                             je    .Lx180_41
                        mov              r8, rax;                             jmp   .Lx180_40
.Lx180_41:              lea              r9, [rsp + 1376]
.Lx180_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx180_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              esi, 1;                              jne   .Lx180_57
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_57:              cmp              esi, 2;                              jne   .Lx180_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_58:              cmp              al, 72;                              jne   .Lx180_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx180_43
                        cmp              rax, r9;                             je    .Lx180_43
                        mov              r9, rax;                             jmp   .Lx180_42
.Lx180_43:              cmp              r8, r9;                              je    .Lx180_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx180_44
                        cmp              al, 104;                             je    .Lx180_44
                        cmp              al, 72;                              jne   .Lx180_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx180_44
                                                                              jmp   .Lx180_45
.Lx180_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx180_53
                        cmp              al, 104;                             je    .Lx180_53
                        cmp              al, 72;                              jne   .Lx180_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_53
                                                                              jmp   .Lx180_46
.Lx180_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx180_47
                        cmp              al, 104;                             je    .Lx180_47
                        cmp              al, 72;                              jne   .Lx180_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx180_47
                                                                              jmp   .Lx180_48
.Lx180_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx180_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx180_49
                        cmp              dl, 80;                              je    .Lx180_53
                                                                              jmp   .Lx180_52
.Lx180_49:              cmp              dl, 80;                              je    .Lx180_52
                        cmp              cl, 5;                               je    .Lx180_53
                        cmp              dl, 5;                               je    .Lx180_53
                        cmp              cl, 3;                               jne   .Lx180_50
                        cmp              dl, 3;                               jne   .Lx180_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx180_54:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              r11, 55
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
                        cmp              al, 40;                              jne   .Lx185_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx185_41
                        cmp              esi, 1;                              jne   .Lx185_55
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_55:              cmp              esi, 2;                              jne   .Lx185_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx185_41
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_56:              cmp              al, 72;                              jne   .Lx185_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx185_41
                        cmp              rax, r8;                             je    .Lx185_41
                        mov              r8, rax;                             jmp   .Lx185_40
.Lx185_41:              lea              r9, [rsp + 1296]
.Lx185_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx185_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx185_43
                        cmp              esi, 1;                              jne   .Lx185_57
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_57:              cmp              esi, 2;                              jne   .Lx185_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx185_43
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_58:              cmp              al, 72;                              jne   .Lx185_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx185_43
                        cmp              rax, r9;                             je    .Lx185_43
                        mov              r9, rax;                             jmp   .Lx185_42
.Lx185_43:              cmp              r8, r9;                              je    .Lx185_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx185_44
                        cmp              al, 104;                             je    .Lx185_44
                        cmp              al, 72;                              jne   .Lx185_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx185_44
                                                                              jmp   .Lx185_45
.Lx185_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx185_53
                        cmp              al, 104;                             je    .Lx185_53
                        cmp              al, 72;                              jne   .Lx185_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx185_53
                                                                              jmp   .Lx185_46
.Lx185_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx185_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx185_47
                        cmp              al, 104;                             je    .Lx185_47
                        cmp              al, 72;                              jne   .Lx185_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx185_47
                                                                              jmp   .Lx185_48
.Lx185_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx185_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx185_49
                        cmp              dl, 80;                              je    .Lx185_53
                                                                              jmp   .Lx185_52
.Lx185_49:              cmp              dl, 80;                              je    .Lx185_52
                        cmp              cl, 5;                               je    .Lx185_53
                        cmp              dl, 5;                               je    .Lx185_53
                        cmp              cl, 3;                               jne   .Lx185_50
                        cmp              dl, 3;                               jne   .Lx185_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx185_54:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n56_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_cut_α
n54_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_cut_α:              mov              r11, 56;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_var_ref_α
n56_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 60
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
                        cmp              al, 40;                              jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              esi, 1;                              jne   .Lx192_55
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_55:              cmp              esi, 2;                              jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_56:              cmp              al, 72;                              jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx192_41
                        cmp              rax, r8;                             je    .Lx192_41
                        mov              r8, rax;                             jmp   .Lx192_40
.Lx192_41:              lea              r9, [rsp + 1168]
.Lx192_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              esi, 1;                              jne   .Lx192_57
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_57:              cmp              esi, 2;                              jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_58:              cmp              al, 72;                              jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx192_43
                        cmp              rax, r9;                             je    .Lx192_43
                        mov              r9, rax;                             jmp   .Lx192_42
.Lx192_43:              cmp              r8, r9;                              je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx192_44
                        cmp              al, 104;                             je    .Lx192_44
                        cmp              al, 72;                              jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx192_44
                                                                              jmp   .Lx192_45
.Lx192_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx192_53
                        cmp              al, 104;                             je    .Lx192_53
                        cmp              al, 72;                              jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_53
                                                                              jmp   .Lx192_46
.Lx192_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx192_47
                        cmp              al, 104;                             je    .Lx192_47
                        cmp              al, 72;                              jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx192_47
                                                                              jmp   .Lx192_48
.Lx192_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx192_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx192_49
                        cmp              dl, 80;                              je    .Lx192_53
                                                                              jmp   .Lx192_52
.Lx192_49:              cmp              dl, 80;                              je    .Lx192_52
                        cmp              cl, 5;                               je    .Lx192_53
                        cmp              dl, 5;                               je    .Lx192_53
                        cmp              cl, 3;                               jne   .Lx192_50
                        cmp              dl, 3;                               jne   .Lx192_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx192_54:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n62_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
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
                        cmp              al, 40;                              jne   .Lx197_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_41
                        cmp              esi, 1;                              jne   .Lx197_55
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_55:              cmp              esi, 2;                              jne   .Lx197_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx197_41
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_56:              cmp              al, 72;                              jne   .Lx197_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_41
                        cmp              rax, r8;                             je    .Lx197_41
                        mov              r8, rax;                             jmp   .Lx197_40
.Lx197_41:              lea              r9, [rsp + 1088]
.Lx197_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx197_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx197_43
                        cmp              esi, 1;                              jne   .Lx197_57
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_57:              cmp              esi, 2;                              jne   .Lx197_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx197_43
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_58:              cmp              al, 72;                              jne   .Lx197_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx197_43
                        cmp              rax, r9;                             je    .Lx197_43
                        mov              r9, rax;                             jmp   .Lx197_42
.Lx197_43:              cmp              r8, r9;                              je    .Lx197_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx197_44
                        cmp              al, 104;                             je    .Lx197_44
                        cmp              al, 72;                              jne   .Lx197_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx197_44
                                                                              jmp   .Lx197_45
.Lx197_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx197_53
                        cmp              al, 104;                             je    .Lx197_53
                        cmp              al, 72;                              jne   .Lx197_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx197_53
                                                                              jmp   .Lx197_46
.Lx197_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx197_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx197_47
                        cmp              al, 104;                             je    .Lx197_47
                        cmp              al, 72;                              jne   .Lx197_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx197_47
                                                                              jmp   .Lx197_48
.Lx197_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx197_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx197_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx197_49
                        cmp              dl, 80;                              je    .Lx197_53
                                                                              jmp   .Lx197_52
.Lx197_49:              cmp              dl, 80;                              je    .Lx197_52
                        cmp              cl, 5;                               je    .Lx197_53
                        cmp              dl, 5;                               je    .Lx197_53
                        cmp              cl, 3;                               jne   .Lx197_50
                        cmp              dl, 3;                               jne   .Lx197_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx197_54:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_var_ref_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 66
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
                        cmp              al, 40;                              jne   .Lx202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_41
                        cmp              esi, 1;                              jne   .Lx202_55
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_55:              cmp              esi, 2;                              jne   .Lx202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx202_41
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_56:              cmp              al, 72;                              jne   .Lx202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_41
                        cmp              rax, r8;                             je    .Lx202_41
                        mov              r8, rax;                             jmp   .Lx202_40
.Lx202_41:              lea              r9, [rsp + 1008]
.Lx202_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx202_43
                        cmp              esi, 1;                              jne   .Lx202_57
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_57:              cmp              esi, 2;                              jne   .Lx202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx202_43
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_58:              cmp              al, 72;                              jne   .Lx202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx202_43
                        cmp              rax, r9;                             je    .Lx202_43
                        mov              r9, rax;                             jmp   .Lx202_42
.Lx202_43:              cmp              r8, r9;                              je    .Lx202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx202_44
                        cmp              al, 104;                             je    .Lx202_44
                        cmp              al, 72;                              jne   .Lx202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx202_44
                                                                              jmp   .Lx202_45
.Lx202_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx202_53
                        cmp              al, 104;                             je    .Lx202_53
                        cmp              al, 72;                              jne   .Lx202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx202_53
                                                                              jmp   .Lx202_46
.Lx202_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx202_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx202_47
                        cmp              al, 104;                             je    .Lx202_47
                        cmp              al, 72;                              jne   .Lx202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx202_47
                                                                              jmp   .Lx202_48
.Lx202_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx202_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx202_49
                        cmp              dl, 80;                              je    .Lx202_53
                                                                              jmp   .Lx202_52
.Lx202_49:              cmp              dl, 80;                              je    .Lx202_52
                        cmp              cl, 5;                               je    .Lx202_53
                        cmp              dl, 5;                               je    .Lx202_53
                        cmp              cl, 3;                               jne   .Lx202_50
                        cmp              dl, 3;                               jne   .Lx202_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx202_54:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 69
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
                        cmp              al, 40;                              jne   .Lx207_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_41
                        cmp              esi, 1;                              jne   .Lx207_55
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_55:              cmp              esi, 2;                              jne   .Lx207_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_41
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_56:              cmp              al, 72;                              jne   .Lx207_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx207_41
                        cmp              rax, r8;                             je    .Lx207_41
                        mov              r8, rax;                             jmp   .Lx207_40
.Lx207_41:              lea              r9, [rsp + 928]
.Lx207_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx207_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_43
                        cmp              esi, 1;                              jne   .Lx207_57
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_57:              cmp              esi, 2;                              jne   .Lx207_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx207_43
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_58:              cmp              al, 72;                              jne   .Lx207_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx207_43
                        cmp              rax, r9;                             je    .Lx207_43
                        mov              r9, rax;                             jmp   .Lx207_42
.Lx207_43:              cmp              r8, r9;                              je    .Lx207_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx207_44
                        cmp              al, 104;                             je    .Lx207_44
                        cmp              al, 72;                              jne   .Lx207_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx207_44
                                                                              jmp   .Lx207_45
.Lx207_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx207_53
                        cmp              al, 104;                             je    .Lx207_53
                        cmp              al, 72;                              jne   .Lx207_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_53
                                                                              jmp   .Lx207_46
.Lx207_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx207_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx207_47
                        cmp              al, 104;                             je    .Lx207_47
                        cmp              al, 72;                              jne   .Lx207_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx207_47
                                                                              jmp   .Lx207_48
.Lx207_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx207_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx207_49
                        cmp              dl, 80;                              je    .Lx207_53
                                                                              jmp   .Lx207_52
.Lx207_49:              cmp              dl, 80;                              je    .Lx207_52
                        cmp              cl, 5;                               je    .Lx207_53
                        cmp              dl, 5;                               je    .Lx207_53
                        cmp              cl, 3;                               jne   .Lx207_50
                        cmp              dl, 3;                               jne   .Lx207_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx207_54:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n70_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_cut_α
n68_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_cut_α:              mov              r11, 70;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              r11, 74
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
                        cmp              al, 40;                              jne   .Lx214_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_41
                        cmp              esi, 1;                              jne   .Lx214_55
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_55:              cmp              esi, 2;                              jne   .Lx214_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx214_41
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_56:              cmp              al, 72;                              jne   .Lx214_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_41
                        cmp              rax, r8;                             je    .Lx214_41
                        mov              r8, rax;                             jmp   .Lx214_40
.Lx214_41:              lea              r9, [rsp + 800]
.Lx214_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx214_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx214_43
                        cmp              esi, 1;                              jne   .Lx214_57
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_57:              cmp              esi, 2;                              jne   .Lx214_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx214_43
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_58:              cmp              al, 72;                              jne   .Lx214_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx214_43
                        cmp              rax, r9;                             je    .Lx214_43
                        mov              r9, rax;                             jmp   .Lx214_42
.Lx214_43:              cmp              r8, r9;                              je    .Lx214_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx214_44
                        cmp              al, 104;                             je    .Lx214_44
                        cmp              al, 72;                              jne   .Lx214_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx214_44
                                                                              jmp   .Lx214_45
.Lx214_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx214_53
                        cmp              al, 104;                             je    .Lx214_53
                        cmp              al, 72;                              jne   .Lx214_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx214_53
                                                                              jmp   .Lx214_46
.Lx214_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx214_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx214_47
                        cmp              al, 104;                             je    .Lx214_47
                        cmp              al, 72;                              jne   .Lx214_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx214_47
                                                                              jmp   .Lx214_48
.Lx214_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx214_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx214_49
                        cmp              dl, 80;                              je    .Lx214_53
                                                                              jmp   .Lx214_52
.Lx214_49:              cmp              dl, 80;                              je    .Lx214_52
                        cmp              cl, 5;                               je    .Lx214_53
                        cmp              dl, 5;                               je    .Lx214_53
                        cmp              cl, 3;                               jne   .Lx214_50
                        cmp              dl, 3;                               jne   .Lx214_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx214_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 77
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
                        cmp              al, 40;                              jne   .Lx219_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_41
                        cmp              esi, 1;                              jne   .Lx219_55
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_55:              cmp              esi, 2;                              jne   .Lx219_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_41
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_56:              cmp              al, 72;                              jne   .Lx219_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx219_41
                        cmp              rax, r8;                             je    .Lx219_41
                        mov              r8, rax;                             jmp   .Lx219_40
.Lx219_41:              lea              r9, [rsp + 720]
.Lx219_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx219_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_43
                        cmp              esi, 1;                              jne   .Lx219_57
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_57:              cmp              esi, 2;                              jne   .Lx219_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx219_43
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_58:              cmp              al, 72;                              jne   .Lx219_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx219_43
                        cmp              rax, r9;                             je    .Lx219_43
                        mov              r9, rax;                             jmp   .Lx219_42
.Lx219_43:              cmp              r8, r9;                              je    .Lx219_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx219_44
                        cmp              al, 104;                             je    .Lx219_44
                        cmp              al, 72;                              jne   .Lx219_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx219_44
                                                                              jmp   .Lx219_45
.Lx219_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx219_53
                        cmp              al, 104;                             je    .Lx219_53
                        cmp              al, 72;                              jne   .Lx219_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_53
                                                                              jmp   .Lx219_46
.Lx219_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx219_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx219_47
                        cmp              al, 104;                             je    .Lx219_47
                        cmp              al, 72;                              jne   .Lx219_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx219_47
                                                                              jmp   .Lx219_48
.Lx219_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx219_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx219_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx219_49
                        cmp              dl, 80;                              je    .Lx219_53
                                                                              jmp   .Lx219_52
.Lx219_49:              cmp              dl, 80;                              je    .Lx219_52
                        cmp              cl, 5;                               je    .Lx219_53
                        cmp              dl, 5;                               je    .Lx219_53
                        cmp              cl, 3;                               jne   .Lx219_50
                        cmp              dl, 3;                               jne   .Lx219_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx219_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 80
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
                        cmp              al, 40;                              jne   .Lx224_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              esi, 1;                              jne   .Lx224_55
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_55:              cmp              esi, 2;                              jne   .Lx224_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_56:              cmp              al, 72;                              jne   .Lx224_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx224_41
                        cmp              rax, r8;                             je    .Lx224_41
                        mov              r8, rax;                             jmp   .Lx224_40
.Lx224_41:              lea              r9, [rsp + 640]
.Lx224_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx224_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              esi, 1;                              jne   .Lx224_57
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_57:              cmp              esi, 2;                              jne   .Lx224_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_58:              cmp              al, 72;                              jne   .Lx224_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx224_43
                        cmp              rax, r9;                             je    .Lx224_43
                        mov              r9, rax;                             jmp   .Lx224_42
.Lx224_43:              cmp              r8, r9;                              je    .Lx224_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx224_44
                        cmp              al, 104;                             je    .Lx224_44
                        cmp              al, 72;                              jne   .Lx224_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx224_44
                                                                              jmp   .Lx224_45
.Lx224_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx224_53
                        cmp              al, 104;                             je    .Lx224_53
                        cmp              al, 72;                              jne   .Lx224_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_53
                                                                              jmp   .Lx224_46
.Lx224_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx224_47
                        cmp              al, 104;                             je    .Lx224_47
                        cmp              al, 72;                              jne   .Lx224_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx224_47
                                                                              jmp   .Lx224_48
.Lx224_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx224_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx224_49
                        cmp              dl, 80;                              je    .Lx224_53
                                                                              jmp   .Lx224_52
.Lx224_49:              cmp              dl, 80;                              je    .Lx224_52
                        cmp              cl, 5;                               je    .Lx224_53
                        cmp              dl, 5;                               je    .Lx224_53
                        cmp              cl, 3;                               jne   .Lx224_50
                        cmp              dl, 3;                               jne   .Lx224_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx224_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n82_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              r11, 83
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
.Lx229_41:              lea              r9, [rsp + 560]
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx229_47
                        cmp              al, 104;                             je    .Lx229_47
                        cmp              al, 72;                              jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx229_47
                                                                              jmp   .Lx229_48
.Lx229_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
                        add              rdi, rsi
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx229_54:              mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n84_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_cut_α
n82_call_builtin_prolog_β:
                        mov              r11, 83;                             jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_cut_α:              mov              r11, 84;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              r11, 88
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
                        cmp              al, 40;                              jne   .Lx236_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx236_41
                        cmp              esi, 1;                              jne   .Lx236_55
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_55:              cmp              esi, 2;                              jne   .Lx236_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx236_41
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_56:              cmp              al, 72;                              jne   .Lx236_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx236_41
                        cmp              rax, r8;                             je    .Lx236_41
                        mov              r8, rax;                             jmp   .Lx236_40
.Lx236_41:              lea              r9, [rsp + 432]
.Lx236_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx236_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx236_43
                        cmp              esi, 1;                              jne   .Lx236_57
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_57:              cmp              esi, 2;                              jne   .Lx236_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx236_43
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_58:              cmp              al, 72;                              jne   .Lx236_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx236_43
                        cmp              rax, r9;                             je    .Lx236_43
                        mov              r9, rax;                             jmp   .Lx236_42
.Lx236_43:              cmp              r8, r9;                              je    .Lx236_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx236_44
                        cmp              al, 104;                             je    .Lx236_44
                        cmp              al, 72;                              jne   .Lx236_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx236_44
                                                                              jmp   .Lx236_45
.Lx236_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx236_53
                        cmp              al, 104;                             je    .Lx236_53
                        cmp              al, 72;                              jne   .Lx236_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx236_53
                                                                              jmp   .Lx236_46
.Lx236_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx236_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx236_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx236_47
                        cmp              al, 104;                             je    .Lx236_47
                        cmp              al, 72;                              jne   .Lx236_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx236_47
                                                                              jmp   .Lx236_48
.Lx236_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx236_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx236_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx236_49
                        cmp              dl, 80;                              je    .Lx236_53
                                                                              jmp   .Lx236_52
.Lx236_49:              cmp              dl, 80;                              je    .Lx236_52
                        cmp              cl, 5;                               je    .Lx236_53
                        cmp              dl, 5;                               je    .Lx236_53
                        cmp              cl, 3;                               jne   .Lx236_50
                        cmp              dl, 3;                               jne   .Lx236_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx236_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n90_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              r11, 91
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
                        cmp              al, 40;                              jne   .Lx241_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_41
                        cmp              esi, 1;                              jne   .Lx241_55
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_55:              cmp              esi, 2;                              jne   .Lx241_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_41
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_56:              cmp              al, 72;                              jne   .Lx241_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_41
                        cmp              rax, r8;                             je    .Lx241_41
                        mov              r8, rax;                             jmp   .Lx241_40
.Lx241_41:              lea              r9, [rsp + 352]
.Lx241_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx241_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_43
                        cmp              esi, 1;                              jne   .Lx241_57
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_57:              cmp              esi, 2;                              jne   .Lx241_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_43
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_58:              cmp              al, 72;                              jne   .Lx241_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_43
                        cmp              rax, r9;                             je    .Lx241_43
                        mov              r9, rax;                             jmp   .Lx241_42
.Lx241_43:              cmp              r8, r9;                              je    .Lx241_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx241_44
                        cmp              al, 104;                             je    .Lx241_44
                        cmp              al, 72;                              jne   .Lx241_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx241_44
                                                                              jmp   .Lx241_45
.Lx241_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx241_53
                        cmp              al, 104;                             je    .Lx241_53
                        cmp              al, 72;                              jne   .Lx241_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_53
                                                                              jmp   .Lx241_46
.Lx241_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx241_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx241_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx241_47
                        cmp              al, 104;                             je    .Lx241_47
                        cmp              al, 72;                              jne   .Lx241_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_47
                                                                              jmp   .Lx241_48
.Lx241_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx241_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx241_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx241_49
                        cmp              dl, 80;                              je    .Lx241_53
                                                                              jmp   .Lx241_52
.Lx241_49:              cmp              dl, 80;                              je    .Lx241_52
                        cmp              cl, 5;                               je    .Lx241_53
                        cmp              dl, 5;                               je    .Lx241_53
                        cmp              cl, 3;                               jne   .Lx241_50
                        cmp              dl, 3;                               jne   .Lx241_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx241_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2720]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 94
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
                        cmp              al, 40;                              jne   .Lx246_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx246_41
                        cmp              esi, 1;                              jne   .Lx246_55
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_55:              cmp              esi, 2;                              jne   .Lx246_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx246_41
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_56:              cmp              al, 72;                              jne   .Lx246_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx246_41
                        cmp              rax, r8;                             je    .Lx246_41
                        mov              r8, rax;                             jmp   .Lx246_40
.Lx246_41:              lea              r9, [rsp + 272]
.Lx246_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx246_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx246_43
                        cmp              esi, 1;                              jne   .Lx246_57
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_57:              cmp              esi, 2;                              jne   .Lx246_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx246_43
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_58:              cmp              al, 72;                              jne   .Lx246_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx246_43
                        cmp              rax, r9;                             je    .Lx246_43
                        mov              r9, rax;                             jmp   .Lx246_42
.Lx246_43:              cmp              r8, r9;                              je    .Lx246_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx246_44
                        cmp              al, 104;                             je    .Lx246_44
                        cmp              al, 72;                              jne   .Lx246_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx246_44
                                                                              jmp   .Lx246_45
.Lx246_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx246_53
                        cmp              al, 104;                             je    .Lx246_53
                        cmp              al, 72;                              jne   .Lx246_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx246_53
                                                                              jmp   .Lx246_46
.Lx246_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx246_47
                        cmp              al, 104;                             je    .Lx246_47
                        cmp              al, 72;                              jne   .Lx246_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx246_47
                                                                              jmp   .Lx246_48
.Lx246_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx246_49
                        cmp              dl, 80;                              je    .Lx246_53
                                                                              jmp   .Lx246_52
.Lx246_49:              cmp              dl, 80;                              je    .Lx246_52
                        cmp              cl, 5;                               je    .Lx246_53
                        cmp              dl, 5;                               je    .Lx246_53
                        cmp              cl, 3;                               jne   .Lx246_50
                        cmp              dl, 3;                               jne   .Lx246_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx246_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2704]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              r11, 97
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
                        cmp              al, 40;                              jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              esi, 1;                              jne   .Lx251_55
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_55:              cmp              esi, 2;                              jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_56:              cmp              al, 72;                              jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx251_41
                        cmp              rax, r8;                             je    .Lx251_41
                        mov              r8, rax;                             jmp   .Lx251_40
.Lx251_41:              lea              r9, [rsp + 192]
.Lx251_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              esi, 1;                              jne   .Lx251_57
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_57:              cmp              esi, 2;                              jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_58:              cmp              al, 72;                              jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx251_43
                        cmp              rax, r9;                             je    .Lx251_43
                        mov              r9, rax;                             jmp   .Lx251_42
.Lx251_43:              cmp              r8, r9;                              je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx251_44
                        cmp              al, 104;                             je    .Lx251_44
                        cmp              al, 72;                              jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx251_44
                                                                              jmp   .Lx251_45
.Lx251_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx251_53
                        cmp              al, 104;                             je    .Lx251_53
                        cmp              al, 72;                              jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_53
                                                                              jmp   .Lx251_46
.Lx251_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
                        add              rdi, rsi
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
                        cmp              al, 0;                               je    .Lx251_47
                        cmp              al, 104;                             je    .Lx251_47
                        cmp              al, 72;                              jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx251_47
                                                                              jmp   .Lx251_48
.Lx251_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx251_53
                        add              rdi, rsi
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
                        cmp              cl, 80;                              jne   .Lx251_49
                        cmp              dl, 80;                              je    .Lx251_53
                                                                              jmp   .Lx251_52
.Lx251_49:              cmp              dl, 80;                              je    .Lx251_52
                        cmp              cl, 5;                               je    .Lx251_53
                        cmp              dl, 5;                               je    .Lx251_53
                        cmp              cl, 3;                               jne   .Lx251_50
                        cmp              dl, 3;                               jne   .Lx251_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx251_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n98_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_suspend_α
n96_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_suspend_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx253_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2688];         jmp   rax
.Lx253_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n97_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n97_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   differ$2F4_γ
n97_suspend_β:          mov              r11, 98;                             jmp   n98_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   differ$2F4_ω
n98_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_β:
                                                                              jmp   n97_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx254_50
                        mov              qword ptr [rsp + 2688], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
FN__drives$2F1:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rcx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 368
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
drives$2F1_α_body:
                        lea              rax, [rip + n264_suspend_β]
                        mov              qword ptr [rsp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        mov              r11, 100
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx266_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx266_101
.Lx266_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx266_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx266_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx266_101
.Lx266_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx266_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    drives$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n256_var_ref_α
n255_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   drives$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n257_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n258_call_builtin_prolog_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "butcher"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              r11, 103
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx270_2];     jmp   .Lx270_3
.Lx270_2:               .quad            .Lx270_2_s
.Lx270_2_s:             .string          "butcher"
.Lx270_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n260_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n259_cut_α
n258_call_builtin_prolog_β:
                        mov              r11, 103;                            jmp   n260_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_cut_α:             mov              r11, 104;                            jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    drives$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n261_var_ref_α
n260_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   drives$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n262_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 336]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        lea              r8, [rsp + 128]
.Lx277_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx277_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx277_41
                        cmp              esi, 1;                              jne   .Lx277_55
                        mov              r8, rax;                             jmp   .Lx277_40
.Lx277_55:              cmp              esi, 2;                              jne   .Lx277_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx277_41
                        mov              r8, rax;                             jmp   .Lx277_40
.Lx277_56:              cmp              al, 72;                              jne   .Lx277_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx277_41
                        cmp              rax, r8;                             je    .Lx277_41
                        mov              r8, rax;                             jmp   .Lx277_40
.Lx277_41:              lea              r9, [rsp + 144]
.Lx277_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx277_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx277_43
                        cmp              esi, 1;                              jne   .Lx277_57
                        mov              r9, rax;                             jmp   .Lx277_42
.Lx277_57:              cmp              esi, 2;                              jne   .Lx277_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx277_43
                        mov              r9, rax;                             jmp   .Lx277_42
.Lx277_58:              cmp              al, 72;                              jne   .Lx277_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx277_43
                        cmp              rax, r9;                             je    .Lx277_43
                        mov              r9, rax;                             jmp   .Lx277_42
.Lx277_43:              cmp              r8, r9;                              je    .Lx277_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx277_44
                        cmp              al, 104;                             je    .Lx277_44
                        cmp              al, 72;                              jne   .Lx277_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx277_44
                                                                              jmp   .Lx277_45
.Lx277_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx277_53
                        cmp              al, 104;                             je    .Lx277_53
                        cmp              al, 72;                              jne   .Lx277_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx277_53
                                                                              jmp   .Lx277_46
.Lx277_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx277_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx277_51
.Lx277_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx277_47
                        cmp              al, 104;                             je    .Lx277_47
                        cmp              al, 72;                              jne   .Lx277_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx277_47
                                                                              jmp   .Lx277_48
.Lx277_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx277_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx277_51
.Lx277_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx277_49
                        cmp              dl, 80;                              je    .Lx277_53
                                                                              jmp   .Lx277_52
.Lx277_49:              cmp              dl, 80;                              je    .Lx277_52
                        cmp              cl, 5;                               je    .Lx277_53
                        cmp              dl, 5;                               je    .Lx277_53
                        cmp              cl, 3;                               jne   .Lx277_50
                        cmp              dl, 3;                               jne   .Lx277_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx277_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx277_51
                                                                              jmp   .Lx277_52
.Lx277_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx277_53
.Lx277_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx277_54
.Lx277_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx277_54
.Lx277_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx277_54:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n265_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_suspend_α
n263_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_suspend_α:         mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx279_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx279_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n264_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n264_suspend_β]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   drives$2F1_γ
n264_suspend_β:         mov              r11, 109;                            jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    drives$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   drives$2F1_ω
n265_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   drives$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
drives$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
drives$2F1_β:
                                                                              jmp   n264_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
drives$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx280_50
                        mov              qword ptr [rsp + 320], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320];          jmp   rax
.Lx280_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 376]
                        add              rsp, 400;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
drives$2F1_ω:
                        mov              rcx, qword ptr [rsp + 384]
                        add              rsp, 400;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__puzzle$2F0:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1440
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
                        mov              r11, 111
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx317_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx317_101
.Lx317_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx317_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx317_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx317_101
.Lx317_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx317_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_var_ref_α
n281_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n283_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_proc_staged_α:
                        mov              r11, 113
                        mov              qword ptr [rsp + 1296], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx321_20
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx321_21
.Lx321_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx321_21:              lea              rax, [rip + .Lx321_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx321_1
                        lea              rcx, [rip + .Lx321_3]
                        lea              rdx, [rip + .Lx321_4];               jmp   rax
.Lx321_3:               mov              qword ptr [rsp + 1304], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx321_5
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx321_2
.Lx321_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx321_2
.Lx321_4:               mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx321_6
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx321_2
.Lx321_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx321_2
.Lx321_1:               call             rt_faildescr@PLT
.Lx321_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx321_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
.Lx321_29:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n316_call_builtin_prolog_α
                                                                              jmp   n284_var_ref_α
n283_call_proc_staged_β:
                        mov              r11, 113
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1296], 0
                        lea              rdi, [rsp + 1312]
                        lea              rsi, [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n316_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n316_call_builtin_prolog_α
                        lea              r8, [rip + .Lx321_7]
                        push             r8
                        lea              rcx, [rip + .Lx321_3]
                        lea              rdx, [rip + .Lx321_4];               jmp   rax
.Lx321_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n316_call_builtin_prolog_α
                                                                              jmp   n284_var_ref_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n285_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_proc_staged_α:
                        mov              r11, 115
                        mov              qword ptr [rsp + 1216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx325_20
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx325_21
.Lx325_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx325_21:              lea              rax, [rip + .Lx325_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx325_1
                        lea              rcx, [rip + .Lx325_3]
                        lea              rdx, [rip + .Lx325_4];               jmp   rax
.Lx325_3:               mov              qword ptr [rsp + 1224], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1216]
                        test             rax, rax;                            jne   .Lx325_5
                        mov              qword ptr [rsp + 1216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx325_2
.Lx325_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx325_2
.Lx325_4:               mov              rax, qword ptr [rsp + 1216]
                        test             rax, rax;                            jne   .Lx325_6
                        mov              qword ptr [rsp + 1216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx325_2
.Lx325_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx325_2
.Lx325_1:               call             rt_faildescr@PLT
.Lx325_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx325_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
.Lx325_29:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n283_call_proc_staged_β
                                                                              jmp   n286_var_ref_α
n285_call_proc_staged_β:
                        mov              r11, 115
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1216], 0
                        lea              rdi, [rsp + 1232]
                        lea              rsi, [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n283_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n283_call_proc_staged_β
                        lea              r8, [rip + .Lx325_7]
                        push             r8
                        lea              rcx, [rip + .Lx325_3]
                        lea              rdx, [rip + .Lx325_4];               jmp   rax
.Lx325_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n283_call_proc_staged_β
                                                                              jmp   n286_var_ref_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n287_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        mov              r11, 117
                        mov              qword ptr [rsp + 1136], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx329_20
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx329_21
.Lx329_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx329_21:              lea              rax, [rip + .Lx329_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx329_1
                        lea              rcx, [rip + .Lx329_3]
                        lea              rdx, [rip + .Lx329_4];               jmp   rax
.Lx329_3:               mov              qword ptr [rsp + 1144], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1136]
                        test             rax, rax;                            jne   .Lx329_5
                        mov              qword ptr [rsp + 1136], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx329_2
.Lx329_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx329_2
.Lx329_4:               mov              rax, qword ptr [rsp + 1136]
                        test             rax, rax;                            jne   .Lx329_6
                        mov              qword ptr [rsp + 1136], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx329_2
.Lx329_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx329_2
.Lx329_1:               call             rt_faildescr@PLT
.Lx329_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx329_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
.Lx329_29:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n285_call_proc_staged_β
                                                                              jmp   n288_var_ref_α
n287_call_proc_staged_β:
                        mov              r11, 117
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1136], 0
                        lea              rdi, [rsp + 1152]
                        lea              rsi, [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n285_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n285_call_proc_staged_β
                        lea              r8, [rip + .Lx329_7]
                        push             r8
                        lea              rcx, [rip + .Lx329_3]
                        lea              rdx, [rip + .Lx329_4];               jmp   rax
.Lx329_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n285_call_proc_staged_β
                                                                              jmp   n288_var_ref_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        mov              r11, 119
                        mov              qword ptr [rsp + 1056], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx333_20
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx333_21
.Lx333_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx333_21:              lea              rax, [rip + .Lx333_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx333_1
                        lea              rcx, [rip + .Lx333_3]
                        lea              rdx, [rip + .Lx333_4];               jmp   rax
.Lx333_3:               mov              qword ptr [rsp + 1064], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1056]
                        test             rax, rax;                            jne   .Lx333_5
                        mov              qword ptr [rsp + 1056], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx333_2
.Lx333_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx333_2
.Lx333_4:               mov              rax, qword ptr [rsp + 1056]
                        test             rax, rax;                            jne   .Lx333_6
                        mov              qword ptr [rsp + 1056], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx333_2
.Lx333_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx333_2
.Lx333_1:               call             rt_faildescr@PLT
.Lx333_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx333_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx333_29:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n287_call_proc_staged_β
                                                                              jmp   n290_var_ref_α
n289_call_proc_staged_β:
                        mov              r11, 119
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1056], 0
                        lea              rdi, [rsp + 1072]
                        lea              rsi, [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n287_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              ecx, 32
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n287_call_proc_staged_β
                        lea              r8, [rip + .Lx333_7]
                        push             r8
                        lea              rcx, [rip + .Lx333_3]
                        lea              rdx, [rip + .Lx333_4];               jmp   rax
.Lx333_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n287_call_proc_staged_β
                                                                              jmp   n290_var_ref_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n294_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_proc_staged_α:
                        mov              r11, 124
                        mov              qword ptr [rsp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx343_20
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx343_21
.Lx343_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx343_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx343_22
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx343_23
.Lx343_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx343_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx343_24
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx343_25
.Lx343_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx343_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx343_26
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx343_27
.Lx343_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx343_27:              lea              rax, [rip + .Lx343_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx343_1
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4];               jmp   rax
.Lx343_3:               mov              qword ptr [rsp + 936], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx343_5
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx343_2
.Lx343_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx343_2
.Lx343_4:               mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx343_6
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx343_2
.Lx343_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx343_2
.Lx343_1:               call             rt_faildescr@PLT
.Lx343_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx343_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
.Lx343_29:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n289_call_proc_staged_β
                                                                              jmp   n295_var_ref_α
n294_call_proc_staged_β:
                        mov              r11, 124
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 928], 0
                        lea              rdi, [rsp + 944]
                        lea              rsi, [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n289_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              ecx, 80
                        mov              r8d, 2688
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n289_call_proc_staged_β
                        lea              r8, [rip + .Lx343_7]
                        push             r8
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4];               jmp   rax
.Lx343_7:               add              rsp, 8
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n289_call_proc_staged_β
                                                                              jmp   n295_var_ref_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "differ/4"
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_proc_staged_α:
                        mov              r11, 127
                        mov              qword ptr [rsp + 784], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx349_20
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx349_21
.Lx349_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx349_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx349_22
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx349_23
.Lx349_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx349_23:              lea              rax, [rip + .Lx349_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx349_1
                        lea              rcx, [rip + .Lx349_3]
                        lea              rdx, [rip + .Lx349_4];               jmp   rax
.Lx349_3:               mov              qword ptr [rsp + 792], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 784]
                        test             rax, rax;                            jne   .Lx349_5
                        mov              qword ptr [rsp + 784], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx349_2
.Lx349_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx349_2
.Lx349_4:               mov              rax, qword ptr [rsp + 784]
                        test             rax, rax;                            jne   .Lx349_6
                        mov              qword ptr [rsp + 784], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx349_2
.Lx349_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx349_2
.Lx349_1:               call             rt_faildescr@PLT
.Lx349_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx349_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
.Lx349_29:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n294_call_proc_staged_β
                                                                              jmp   n298_var_ref_α
n297_call_proc_staged_β:
                        mov              r11, 127
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 784], 0
                        lea              rdi, [rsp + 800]
                        lea              rsi, [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n294_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n294_call_proc_staged_β
                        lea              r8, [rip + .Lx349_7]
                        push             r8
                        lea              rcx, [rip + .Lx349_3]
                        lea              rdx, [rip + .Lx349_4];               jmp   rax
.Lx349_7:               add              rsp, 8
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n294_call_proc_staged_β
                                                                              jmp   n298_var_ref_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "livesNear/2"
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n300_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_proc_staged_α:
                        mov              r11, 130
                        mov              qword ptr [rsp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx355_20
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx355_21
.Lx355_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx355_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx355_22
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx355_23
.Lx355_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx355_23:              lea              rax, [rip + .Lx355_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx355_1
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4];               jmp   rax
.Lx355_3:               mov              qword ptr [rsp + 680], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx355_5
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx355_2
.Lx355_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx355_2
.Lx355_4:               mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx355_6
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx355_2
.Lx355_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx355_2
.Lx355_1:               call             rt_faildescr@PLT
.Lx355_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx355_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx355_29:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n297_call_proc_staged_β
                                                                              jmp   n301_var_ref_α
n300_call_proc_staged_β:
                        mov              r11, 130
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 672], 0
                        lea              rdi, [rsp + 688]
                        lea              rsi, [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n297_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n297_call_proc_staged_β
                        lea              r8, [rip + .Lx355_7]
                        push             r8
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4];               jmp   rax
.Lx355_7:               add              rsp, 8
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n297_call_proc_staged_β
                                                                              jmp   n301_var_ref_α
.Lx355_0:               .quad            .Lx355_0_s
.Lx355_0_s:             .string          "knows/2"
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n302_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        mov              r11, 132
                        mov              qword ptr [rsp + 576], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx359_20
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx359_21
.Lx359_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx359_21:              lea              rax, [rip + .Lx359_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx359_1
                        lea              rcx, [rip + .Lx359_3]
                        lea              rdx, [rip + .Lx359_4];               jmp   rax
.Lx359_3:               mov              qword ptr [rsp + 584], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 576]
                        test             rax, rax;                            jne   .Lx359_5
                        mov              qword ptr [rsp + 576], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx359_2
.Lx359_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx359_2
.Lx359_4:               mov              rax, qword ptr [rsp + 576]
                        test             rax, rax;                            jne   .Lx359_6
                        mov              qword ptr [rsp + 576], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx359_2
.Lx359_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx359_2
.Lx359_1:               call             rt_faildescr@PLT
.Lx359_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx359_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
.Lx359_29:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n300_call_proc_staged_β
                                                                              jmp   n303_var_ref_α
n302_call_proc_staged_β:
                        mov              r11, 132
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 576], 0
                        lea              rdi, [rsp + 592]
                        lea              rsi, [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n300_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              ecx, 32
                        mov              r8d, 320
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n300_call_proc_staged_β
                        lea              r8, [rip + .Lx359_7]
                        push             r8
                        lea              rcx, [rip + .Lx359_3]
                        lea              rdx, [rip + .Lx359_4];               jmp   rax
.Lx359_7:               add              rsp, 8
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n300_call_proc_staged_β
                                                                              jmp   n303_var_ref_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "drives/1"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              r11, 134
                        mov              qword ptr [rsp + 496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx363_20
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx363_21
.Lx363_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx363_21:              lea              rax, [rip + .Lx363_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx363_1
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4];               jmp   rax
.Lx363_3:               mov              qword ptr [rsp + 504], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx363_5
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx363_2
.Lx363_4:               mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx363_6
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx363_2
.Lx363_1:               call             rt_faildescr@PLT
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lx363_29:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n302_call_proc_staged_β
                                                                              jmp   n305_var_ref_α
n304_call_proc_staged_β:
                        mov              r11, 134
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 496], 0
                        lea              rdi, [rsp + 512]
                        lea              rsi, [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n302_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              ecx, 32
                        mov              r8d, 320
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n302_call_proc_staged_β
                        lea              r8, [rip + .Lx363_7]
                        push             r8
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4];               jmp   rax
.Lx363_7:               add              rsp, 8
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n302_call_proc_staged_β
                                                                              jmp   n305_var_ref_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "drives/1"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n307_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        mov              r11, 137
                        mov              qword ptr [rsp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx369_20
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx369_21
.Lx369_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx369_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx369_22
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx369_23
.Lx369_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx369_23:              lea              rax, [rip + .Lx369_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx369_1
                        lea              rcx, [rip + .Lx369_3]
                        lea              rdx, [rip + .Lx369_4];               jmp   rax
.Lx369_3:               mov              qword ptr [rsp + 408], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx369_5
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx369_2
.Lx369_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx369_2
.Lx369_4:               mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx369_6
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx369_2
.Lx369_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx369_2
.Lx369_1:               call             rt_faildescr@PLT
.Lx369_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx369_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx369_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n304_call_proc_staged_β
                                                                              jmp   n308_var_ref_α
n307_call_proc_staged_β:
                        mov              r11, 137
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 400], 0
                        lea              rdi, [rsp + 416]
                        lea              rsi, [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n304_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n304_call_proc_staged_β
                        lea              r8, [rip + .Lx369_7]
                        push             r8
                        lea              rcx, [rip + .Lx369_3]
                        lea              rdx, [rip + .Lx369_4];               jmp   rax
.Lx369_7:               add              rsp, 8
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n304_call_proc_staged_β
                                                                              jmp   n308_var_ref_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "earnsMore/2"
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        mov              r11, 140
                        mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx375_20
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx375_21
.Lx375_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx375_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx375_22
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx375_23
.Lx375_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx375_23:              lea              rax, [rip + .Lx375_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx375_1
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4];               jmp   rax
.Lx375_3:               mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx375_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx375_2
.Lx375_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx375_2
.Lx375_4:               mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx375_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx375_2
.Lx375_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx375_2
.Lx375_1:               call             rt_faildescr@PLT
.Lx375_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx375_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx375_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                                                                              jmp   n311_var_ref_α
n310_call_proc_staged_β:
                        mov              r11, 140
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 288], 0
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n307_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              ecx, 48
                        mov              r8d, 704
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n307_call_proc_staged_β
                        lea              r8, [rip + .Lx375_7]
                        push             r8
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4];               jmp   rax
.Lx375_7:               add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                                                                              jmp   n311_var_ref_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "knows/2"
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n313_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n315_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_proc_staged_α:
                        mov              r11, 145
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        lea              rcx, [rsp + 208]
                        lea              r8, [rsp + 224]
                        call             display$2F4_dcα;                     jmp   .Lx385_2
.Lx385_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx385_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx385_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n310_call_proc_staged_β
                                                                              jmp   n315_call_proc_staged_β
n315_call_proc_staged_β:
                        mov              r11, 145;                            jmp   n310_call_proc_staged_β
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "display/4"
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   puzzle$2F0_ω
n316_call_builtin_prolog_β:
                        mov              r11, 146;                            jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_β:
                                                                              jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx386_50
                        mov              qword ptr [rsp + 1344], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1344];         jmp   rax
.Lx386_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1448]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1456]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__earnsMore$2F2:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 768
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
earnsMore$2F2_α_body:
                        lea              rax, [rip + n410_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_prolog_α:
                        mov              r11, 147
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx412_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx412_101
.Lx412_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx412_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx412_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx412_101
.Lx412_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx412_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    earnsMore$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n388_var_ref_α
n387_call_builtin_prolog_β:
                        mov              r11, 147;                            jmp   earnsMore$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 8
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n390_call_builtin_prolog_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_prolog_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx416_2];     jmp   .Lx416_3
.Lx416_2:               .quad            .Lx416_2_s
.Lx416_2_s:             .string          "druggist"
.Lx416_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n395_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n391_var_ref_α
n390_call_builtin_prolog_β:
                        mov              r11, 150;                            jmp   n395_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 9
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n393_call_builtin_prolog_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx420_2];     jmp   .Lx420_3
.Lx420_2:               .quad            .Lx420_2_s
.Lx420_2_s:             .string          "policeman"
.Lx420_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n395_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n394_cut_α
n393_call_builtin_prolog_β:
                        mov              r11, 153;                            jmp   n395_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_cut_α:             mov              r11, 154;                            jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_prolog_α:
                        mov              r11, 155
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    earnsMore$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n396_var_ref_α
n395_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   earnsMore$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n397_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 6
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n398_call_builtin_prolog_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx426_2];     jmp   .Lx426_3
.Lx426_2:               .quad            .Lx426_2_s
.Lx426_2_s:             .string          "grocer"
.Lx426_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n403_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n399_var_ref_α
n398_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   n403_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 9
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n401_call_builtin_prolog_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_prolog_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx430_2];     jmp   .Lx430_3
.Lx430_2:               .quad            .Lx430_2_s
.Lx430_2_s:             .string          "policeman"
.Lx430_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n403_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n402_cut_α
n401_call_builtin_prolog_β:
                        mov              r11, 161;                            jmp   n403_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n402_cut_α:             mov              r11, 162;                            jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    earnsMore$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n404_var_ref_α
n403_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   earnsMore$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n405_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n406_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        mov              r11, 166
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
.Lx437_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx437_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx437_41
                        cmp              esi, 1;                              jne   .Lx437_55
                        mov              r8, rax;                             jmp   .Lx437_40
.Lx437_55:              cmp              esi, 2;                              jne   .Lx437_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx437_41
                        mov              r8, rax;                             jmp   .Lx437_40
.Lx437_56:              cmp              al, 72;                              jne   .Lx437_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx437_41
                        cmp              rax, r8;                             je    .Lx437_41
                        mov              r8, rax;                             jmp   .Lx437_40
.Lx437_41:              lea              r9, [rsp + 240]
.Lx437_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx437_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx437_43
                        cmp              esi, 1;                              jne   .Lx437_57
                        mov              r9, rax;                             jmp   .Lx437_42
.Lx437_57:              cmp              esi, 2;                              jne   .Lx437_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx437_43
                        mov              r9, rax;                             jmp   .Lx437_42
.Lx437_58:              cmp              al, 72;                              jne   .Lx437_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx437_43
                        cmp              rax, r9;                             je    .Lx437_43
                        mov              r9, rax;                             jmp   .Lx437_42
.Lx437_43:              cmp              r8, r9;                              je    .Lx437_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx437_44
                        cmp              al, 104;                             je    .Lx437_44
                        cmp              al, 72;                              jne   .Lx437_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx437_44
                                                                              jmp   .Lx437_45
.Lx437_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx437_53
                        cmp              al, 104;                             je    .Lx437_53
                        cmp              al, 72;                              jne   .Lx437_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx437_53
                                                                              jmp   .Lx437_46
.Lx437_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx437_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx437_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx437_51
.Lx437_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx437_47
                        cmp              al, 104;                             je    .Lx437_47
                        cmp              al, 72;                              jne   .Lx437_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx437_47
                                                                              jmp   .Lx437_48
.Lx437_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx437_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx437_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx437_51
.Lx437_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx437_49
                        cmp              dl, 80;                              je    .Lx437_53
                                                                              jmp   .Lx437_52
.Lx437_49:              cmp              dl, 80;                              je    .Lx437_52
                        cmp              cl, 5;                               je    .Lx437_53
                        cmp              dl, 5;                               je    .Lx437_53
                        cmp              cl, 3;                               jne   .Lx437_50
                        cmp              dl, 3;                               jne   .Lx437_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx437_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx437_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx437_51
                                                                              jmp   .Lx437_52
.Lx437_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx437_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx437_53
.Lx437_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx437_54
.Lx437_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx437_54
.Lx437_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx437_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n411_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n407_var_ref_α
n406_call_builtin_prolog_β:
                        mov              r11, 166;                            jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n408_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n409_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
                        mov              r11, 169
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx442_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx442_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx442_41
                        cmp              esi, 1;                              jne   .Lx442_55
                        mov              r8, rax;                             jmp   .Lx442_40
.Lx442_55:              cmp              esi, 2;                              jne   .Lx442_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx442_41
                        mov              r8, rax;                             jmp   .Lx442_40
.Lx442_56:              cmp              al, 72;                              jne   .Lx442_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx442_41
                        cmp              rax, r8;                             je    .Lx442_41
                        mov              r8, rax;                             jmp   .Lx442_40
.Lx442_41:              lea              r9, [rsp + 160]
.Lx442_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx442_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx442_43
                        cmp              esi, 1;                              jne   .Lx442_57
                        mov              r9, rax;                             jmp   .Lx442_42
.Lx442_57:              cmp              esi, 2;                              jne   .Lx442_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx442_43
                        mov              r9, rax;                             jmp   .Lx442_42
.Lx442_58:              cmp              al, 72;                              jne   .Lx442_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx442_43
                        cmp              rax, r9;                             je    .Lx442_43
                        mov              r9, rax;                             jmp   .Lx442_42
.Lx442_43:              cmp              r8, r9;                              je    .Lx442_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx442_44
                        cmp              al, 104;                             je    .Lx442_44
                        cmp              al, 72;                              jne   .Lx442_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx442_44
                                                                              jmp   .Lx442_45
.Lx442_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx442_53
                        cmp              al, 104;                             je    .Lx442_53
                        cmp              al, 72;                              jne   .Lx442_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx442_53
                                                                              jmp   .Lx442_46
.Lx442_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx442_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx442_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx442_51
.Lx442_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx442_47
                        cmp              al, 104;                             je    .Lx442_47
                        cmp              al, 72;                              jne   .Lx442_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx442_47
                                                                              jmp   .Lx442_48
.Lx442_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx442_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx442_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx442_51
.Lx442_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx442_49
                        cmp              dl, 80;                              je    .Lx442_53
                                                                              jmp   .Lx442_52
.Lx442_49:              cmp              dl, 80;                              je    .Lx442_52
                        cmp              cl, 5;                               je    .Lx442_53
                        cmp              dl, 5;                               je    .Lx442_53
                        cmp              cl, 3;                               jne   .Lx442_50
                        cmp              dl, 3;                               jne   .Lx442_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx442_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx442_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx442_51
                                                                              jmp   .Lx442_52
.Lx442_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx442_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx442_53
.Lx442_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx442_54
.Lx442_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx442_54
.Lx442_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx442_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n411_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n410_suspend_α
n409_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_suspend_α:         mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx444_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx444_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n410_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n410_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   earnsMore$2F2_γ
n410_suspend_β:         mov              r11, 170;                            jmp   n411_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_prolog_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    earnsMore$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   earnsMore$2F2_ω
n411_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   earnsMore$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
earnsMore$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
earnsMore$2F2_β:
                                                                              jmp   n410_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
earnsMore$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx445_50
                        mov              qword ptr [rsp + 704], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx445_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 776]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
earnsMore$2F2_ω:
                        mov              rcx, qword ptr [rsp + 784]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__occupation$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 608
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
occupation$2F1_α_body:
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rsp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              r11, 172
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx467_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx467_101
.Lx467_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx467_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx467_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx467_101
.Lx467_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx467_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n447_var_ref_α
n446_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n448_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 7
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n449_call_builtin_prolog_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "butcher"
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              rsi, qword ptr [rip + .Lx471_2];     jmp   .Lx471_3
.Lx471_2:               .quad            .Lx471_2_s
.Lx471_2_s:             .string          "butcher"
.Lx471_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n451_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n450_suspend_α
n449_call_builtin_prolog_β:
                        mov              r11, 175;                            jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n450_suspend_α:         mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx473_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx473_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n450_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n450_suspend_β:         mov              r11, 176;                            jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n452_var_ref_α
n451_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n453_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 8
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n454_call_builtin_prolog_α
.Lx477_0:               .quad            .Lx477_0_s
.Lx477_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              rsi, qword ptr [rip + .Lx478_2];     jmp   .Lx478_3
.Lx478_2:               .quad            .Lx478_2_s
.Lx478_2_s:             .string          "druggist"
.Lx478_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n456_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n455_suspend_α
n454_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_suspend_α:         mov              r11, 181
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx480_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx480_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n455_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n455_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n455_suspend_β:         mov              r11, 181;                            jmp   n456_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 6
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n459_call_builtin_prolog_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              r11, 185
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx485_2];     jmp   .Lx485_3
.Lx485_2:               .quad            .Lx485_2_s
.Lx485_2_s:             .string          "grocer"
.Lx485_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n461_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n460_suspend_α
n459_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   n461_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_suspend_α:         mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx487_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx487_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n460_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n460_suspend_β:         mov              r11, 186;                            jmp   n461_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n462_var_ref_α
n461_call_builtin_prolog_β:
                        mov              r11, 187;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 9
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n464_call_builtin_prolog_α
.Lx491_0:               .quad            .Lx491_0_s
.Lx491_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              rsi, qword ptr [rip + .Lx492_2];     jmp   .Lx492_3
.Lx492_2:               .quad            .Lx492_2_s
.Lx492_2_s:             .string          "policeman"
.Lx492_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n466_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n465_suspend_α
n464_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_suspend_α:         mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx494_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx494_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n465_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n465_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n465_suspend_β:         mov              r11, 191;                            jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   occupation$2F1_ω
n466_call_builtin_prolog_β:
                        mov              r11, 192;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_β:
                                                                              jmp   n450_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx495_50
                        mov              qword ptr [rsp + 576], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx495_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 616]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__knows$2F2:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 768
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
knows$2F2_α_body:
                        lea              rax, [rip + n519_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n496_call_builtin_prolog_α:
                        mov              r11, 193
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx521_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx521_101
.Lx521_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx521_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx521_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx521_101
.Lx521_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx521_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    knows$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n497_var_ref_α
n496_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   knows$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n498_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 9
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n499_call_builtin_prolog_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx525_2];     jmp   .Lx525_3
.Lx525_2:               .quad            .Lx525_2_s
.Lx525_2_s:             .string          "policeman"
.Lx525_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n500_var_ref_α
n499_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 6
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n502_call_builtin_prolog_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              r11, 199
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx529_2];     jmp   .Lx529_3
.Lx529_2:               .quad            .Lx529_2_s
.Lx529_2_s:             .string          "grocer"
.Lx529_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n504_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n503_cut_α
n502_call_builtin_prolog_β:
                        mov              r11, 199;                            jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_cut_α:             mov              r11, 200;                            jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    knows$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n505_var_ref_α
n504_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   knows$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 6
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n507_call_builtin_prolog_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "grocer"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx535_2];     jmp   .Lx535_3
.Lx535_2:               .quad            .Lx535_2_s
.Lx535_2_s:             .string          "grocer"
.Lx535_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n508_var_ref_α
n507_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 9
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n510_call_builtin_prolog_α
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx539_2];     jmp   .Lx539_3
.Lx539_2:               .quad            .Lx539_2_s
.Lx539_2_s:             .string          "policeman"
.Lx539_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n511_cut_α
n510_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_cut_α:             mov              r11, 208;                            jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    knows$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n513_var_ref_α
n512_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   knows$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n514_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n515_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_prolog_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
.Lx546_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx546_41
                        cmp              esi, 1;                              jne   .Lx546_55
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_55:              cmp              esi, 2;                              jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx546_41
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_56:              cmp              al, 72;                              jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx546_41
                        cmp              rax, r8;                             je    .Lx546_41
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_41:              lea              r9, [rsp + 240]
.Lx546_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx546_43
                        cmp              esi, 1;                              jne   .Lx546_57
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_57:              cmp              esi, 2;                              jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx546_43
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_58:              cmp              al, 72;                              jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx546_43
                        cmp              rax, r9;                             je    .Lx546_43
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_43:              cmp              r8, r9;                              je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx546_44
                        cmp              al, 104;                             je    .Lx546_44
                        cmp              al, 72;                              jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx546_44
                                                                              jmp   .Lx546_45
.Lx546_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx546_53
                        cmp              al, 104;                             je    .Lx546_53
                        cmp              al, 72;                              jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx546_53
                                                                              jmp   .Lx546_46
.Lx546_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx546_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx546_51
.Lx546_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx546_47
                        cmp              al, 104;                             je    .Lx546_47
                        cmp              al, 72;                              jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx546_47
                                                                              jmp   .Lx546_48
.Lx546_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx546_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx546_51
.Lx546_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx546_49
                        cmp              dl, 80;                              je    .Lx546_53
                                                                              jmp   .Lx546_52
.Lx546_49:              cmp              dl, 80;                              je    .Lx546_52
                        cmp              cl, 5;                               je    .Lx546_53
                        cmp              dl, 5;                               je    .Lx546_53
                        cmp              cl, 3;                               jne   .Lx546_50
                        cmp              dl, 3;                               jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx546_51
                                                                              jmp   .Lx546_52
.Lx546_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx546_53
.Lx546_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx546_54
.Lx546_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx546_54
.Lx546_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx546_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n520_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n516_var_ref_α
n515_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        mov              r11, 215
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx551_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx551_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx551_41
                        cmp              esi, 1;                              jne   .Lx551_55
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_55:              cmp              esi, 2;                              jne   .Lx551_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx551_41
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_56:              cmp              al, 72;                              jne   .Lx551_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx551_41
                        cmp              rax, r8;                             je    .Lx551_41
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_41:              lea              r9, [rsp + 160]
.Lx551_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx551_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx551_43
                        cmp              esi, 1;                              jne   .Lx551_57
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_57:              cmp              esi, 2;                              jne   .Lx551_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx551_43
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_58:              cmp              al, 72;                              jne   .Lx551_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx551_43
                        cmp              rax, r9;                             je    .Lx551_43
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_43:              cmp              r8, r9;                              je    .Lx551_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx551_44
                        cmp              al, 104;                             je    .Lx551_44
                        cmp              al, 72;                              jne   .Lx551_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx551_44
                                                                              jmp   .Lx551_45
.Lx551_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx551_53
                        cmp              al, 104;                             je    .Lx551_53
                        cmp              al, 72;                              jne   .Lx551_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx551_53
                                                                              jmp   .Lx551_46
.Lx551_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx551_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx551_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx551_51
.Lx551_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx551_47
                        cmp              al, 104;                             je    .Lx551_47
                        cmp              al, 72;                              jne   .Lx551_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx551_47
                                                                              jmp   .Lx551_48
.Lx551_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx551_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx551_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx551_51
.Lx551_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx551_49
                        cmp              dl, 80;                              je    .Lx551_53
                                                                              jmp   .Lx551_52
.Lx551_49:              cmp              dl, 80;                              je    .Lx551_52
                        cmp              cl, 5;                               je    .Lx551_53
                        cmp              dl, 5;                               je    .Lx551_53
                        cmp              cl, 3;                               jne   .Lx551_50
                        cmp              dl, 3;                               jne   .Lx551_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx551_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx551_51
                                                                              jmp   .Lx551_52
.Lx551_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx551_53
.Lx551_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx551_54
.Lx551_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx551_54
.Lx551_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx551_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n520_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n519_suspend_α
n518_call_builtin_prolog_β:
                        mov              r11, 215;                            jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n519_suspend_α:         mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx553_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx553_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n519_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n519_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   knows$2F2_γ
n519_suspend_β:         mov              r11, 216;                            jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_prolog_α:
                        mov              r11, 217
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    knows$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   knows$2F2_ω
n520_call_builtin_prolog_β:
                        mov              r11, 217;                            jmp   knows$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
knows$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
knows$2F2_β:
                                                                              jmp   n519_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
knows$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx554_50
                        mov              qword ptr [rsp + 704], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx554_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 776]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
knows$2F2_ω:
                        mov              rcx, qword ptr [rsp + 784]
                        add              rsp, 800;                            jmp   rcx
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
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F0_α_body:
                        lea              rax, [rip + n557_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n555_call_builtin_prolog_α:
                        mov              r11, 218
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx561_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx561_101
.Lx561_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx561_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx561_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx561_101
.Lx561_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx561_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n556_call_proc_staged_α
n555_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_call_proc_staged_α:
                        mov              r11, 219
                        mov              qword ptr [rsp + 144], 0
                        lea              rax, [rip + .Lx563_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx563_1
                        lea              rcx, [rip + .Lx563_3]
                        lea              rdx, [rip + .Lx563_4];               jmp   rax
.Lx563_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx563_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx563_2
.Lx563_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx563_2
.Lx563_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx563_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx563_2
.Lx563_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx563_2
.Lx563_1:               call             rt_faildescr@PLT
.Lx563_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx563_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx563_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n558_call_builtin_prolog_α
                                                                              jmp   n557_suspend_α
n556_call_proc_staged_β:
                        mov              r11, 219
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n558_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 16
                        mov              r8d, 1344
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n558_call_builtin_prolog_α
                        lea              r8, [rip + .Lx563_7]
                        push             r8
                        lea              rcx, [rip + .Lx563_3]
                        lea              rdx, [rip + .Lx563_4];               jmp   rax
.Lx563_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n558_call_builtin_prolog_α
                                                                              jmp   n557_suspend_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n557_suspend_α:         mov              r11, 220
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx565_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx565_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n557_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n557_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n557_suspend_β:         mov              r11, 220;                            jmp   n556_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
                        mov              r11, 221
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n559_suspend_α
n558_call_builtin_prolog_β:
                        mov              r11, 221;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_suspend_α:         mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx568_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx568_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n559_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n559_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n559_suspend_β:         mov              r11, 222;                            jmp   n560_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_prolog_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj0$2F0_ω
n560_call_builtin_prolog_β:
                        mov              r11, 223;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_β:
                                                                              jmp   n557_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx569_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx569_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
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
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
display$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n570_call_builtin_prolog_α:
                        mov              r11, 224
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx604_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx604_101
.Lx604_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx604_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx604_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx604_101
.Lx604_100:             lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx604_101:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n571_var_ref_α
n570_call_builtin_prolog_β:
                        mov              r11, 224;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_prolog_α:
                        mov              r11, 227
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
.Lx609_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              esi, 1;                              jne   .Lx609_55
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_55:              cmp              esi, 2;                              jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_56:              cmp              al, 72;                              jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              rax, r8;                             je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_41:              lea              r9, [rsp + 880]
.Lx609_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              esi, 1;                              jne   .Lx609_57
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_57:              cmp              esi, 2;                              jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_58:              cmp              al, 72;                              jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              rax, r9;                             je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_43:              cmp              r8, r9;                              je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx609_44
                        cmp              al, 104;                             je    .Lx609_44
                        cmp              al, 72;                              jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx609_44
                                                                              jmp   .Lx609_45
.Lx609_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_53
                        cmp              al, 104;                             je    .Lx609_53
                        cmp              al, 72;                              jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_53
                                                                              jmp   .Lx609_46
.Lx609_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx609_51
.Lx609_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_47
                        cmp              al, 104;                             je    .Lx609_47
                        cmp              al, 72;                              jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_47
                                                                              jmp   .Lx609_48
.Lx609_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx609_51
.Lx609_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx609_49
                        cmp              dl, 80;                              je    .Lx609_53
                                                                              jmp   .Lx609_52
.Lx609_49:              cmp              dl, 80;                              je    .Lx609_52
                        cmp              cl, 5;                               je    .Lx609_53
                        cmp              dl, 5;                               je    .Lx609_53
                        cmp              cl, 3;                               jne   .Lx609_50
                        cmp              dl, 3;                               jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx609_51
                                                                              jmp   .Lx609_52
.Lx609_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx609_53
.Lx609_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx609_54
.Lx609_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx609_54
.Lx609_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx609_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n574_var_ref_α
n573_call_builtin_prolog_β:
                        mov              r11, 227;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n576_call_builtin_prolog_α:
                        mov              r11, 230
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
.Lx614_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx614_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx614_41
                        cmp              esi, 1;                              jne   .Lx614_55
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_55:              cmp              esi, 2;                              jne   .Lx614_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx614_41
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_56:              cmp              al, 72;                              jne   .Lx614_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx614_41
                        cmp              rax, r8;                             je    .Lx614_41
                        mov              r8, rax;                             jmp   .Lx614_40
.Lx614_41:              lea              r9, [rsp + 800]
.Lx614_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx614_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx614_43
                        cmp              esi, 1;                              jne   .Lx614_57
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_57:              cmp              esi, 2;                              jne   .Lx614_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx614_43
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_58:              cmp              al, 72;                              jne   .Lx614_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx614_43
                        cmp              rax, r9;                             je    .Lx614_43
                        mov              r9, rax;                             jmp   .Lx614_42
.Lx614_43:              cmp              r8, r9;                              je    .Lx614_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx614_44
                        cmp              al, 104;                             je    .Lx614_44
                        cmp              al, 72;                              jne   .Lx614_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx614_44
                                                                              jmp   .Lx614_45
.Lx614_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx614_53
                        cmp              al, 104;                             je    .Lx614_53
                        cmp              al, 72;                              jne   .Lx614_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx614_53
                                                                              jmp   .Lx614_46
.Lx614_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx614_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx614_51
.Lx614_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx614_47
                        cmp              al, 104;                             je    .Lx614_47
                        cmp              al, 72;                              jne   .Lx614_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx614_47
                                                                              jmp   .Lx614_48
.Lx614_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx614_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx614_51
.Lx614_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx614_49
                        cmp              dl, 80;                              je    .Lx614_53
                                                                              jmp   .Lx614_52
.Lx614_49:              cmp              dl, 80;                              je    .Lx614_52
                        cmp              cl, 5;                               je    .Lx614_53
                        cmp              dl, 5;                               je    .Lx614_53
                        cmp              cl, 3;                               jne   .Lx614_50
                        cmp              dl, 3;                               jne   .Lx614_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx614_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx614_51
                                                                              jmp   .Lx614_52
.Lx614_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx614_53
.Lx614_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx614_54
.Lx614_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx614_54
.Lx614_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx614_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n577_var_ref_α
n576_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n579_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n579_call_builtin_prolog_α:
                        mov              r11, 233
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
.Lx619_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx619_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx619_41
                        cmp              esi, 1;                              jne   .Lx619_55
                        mov              r8, rax;                             jmp   .Lx619_40
.Lx619_55:              cmp              esi, 2;                              jne   .Lx619_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx619_41
                        mov              r8, rax;                             jmp   .Lx619_40
.Lx619_56:              cmp              al, 72;                              jne   .Lx619_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx619_41
                        cmp              rax, r8;                             je    .Lx619_41
                        mov              r8, rax;                             jmp   .Lx619_40
.Lx619_41:              lea              r9, [rsp + 720]
.Lx619_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx619_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx619_43
                        cmp              esi, 1;                              jne   .Lx619_57
                        mov              r9, rax;                             jmp   .Lx619_42
.Lx619_57:              cmp              esi, 2;                              jne   .Lx619_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx619_43
                        mov              r9, rax;                             jmp   .Lx619_42
.Lx619_58:              cmp              al, 72;                              jne   .Lx619_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx619_43
                        cmp              rax, r9;                             je    .Lx619_43
                        mov              r9, rax;                             jmp   .Lx619_42
.Lx619_43:              cmp              r8, r9;                              je    .Lx619_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx619_44
                        cmp              al, 104;                             je    .Lx619_44
                        cmp              al, 72;                              jne   .Lx619_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx619_44
                                                                              jmp   .Lx619_45
.Lx619_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx619_53
                        cmp              al, 104;                             je    .Lx619_53
                        cmp              al, 72;                              jne   .Lx619_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx619_53
                                                                              jmp   .Lx619_46
.Lx619_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx619_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx619_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx619_51
.Lx619_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx619_47
                        cmp              al, 104;                             je    .Lx619_47
                        cmp              al, 72;                              jne   .Lx619_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx619_47
                                                                              jmp   .Lx619_48
.Lx619_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx619_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx619_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx619_51
.Lx619_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx619_49
                        cmp              dl, 80;                              je    .Lx619_53
                                                                              jmp   .Lx619_52
.Lx619_49:              cmp              dl, 80;                              je    .Lx619_52
                        cmp              cl, 5;                               je    .Lx619_53
                        cmp              dl, 5;                               je    .Lx619_53
                        cmp              cl, 3;                               jne   .Lx619_50
                        cmp              dl, 3;                               jne   .Lx619_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx619_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx619_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx619_51
                                                                              jmp   .Lx619_52
.Lx619_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx619_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx619_53
.Lx619_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx619_54
.Lx619_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx619_54
.Lx619_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx619_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n580_var_ref_α
n579_call_builtin_prolog_β:
                        mov              r11, 233;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n581_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n582_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n582_call_builtin_prolog_α:
                        mov              r11, 236
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
.Lx624_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx624_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx624_41
                        cmp              esi, 1;                              jne   .Lx624_55
                        mov              r8, rax;                             jmp   .Lx624_40
.Lx624_55:              cmp              esi, 2;                              jne   .Lx624_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx624_41
                        mov              r8, rax;                             jmp   .Lx624_40
.Lx624_56:              cmp              al, 72;                              jne   .Lx624_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx624_41
                        cmp              rax, r8;                             je    .Lx624_41
                        mov              r8, rax;                             jmp   .Lx624_40
.Lx624_41:              lea              r9, [rsp + 640]
.Lx624_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx624_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx624_43
                        cmp              esi, 1;                              jne   .Lx624_57
                        mov              r9, rax;                             jmp   .Lx624_42
.Lx624_57:              cmp              esi, 2;                              jne   .Lx624_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx624_43
                        mov              r9, rax;                             jmp   .Lx624_42
.Lx624_58:              cmp              al, 72;                              jne   .Lx624_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx624_43
                        cmp              rax, r9;                             je    .Lx624_43
                        mov              r9, rax;                             jmp   .Lx624_42
.Lx624_43:              cmp              r8, r9;                              je    .Lx624_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx624_44
                        cmp              al, 104;                             je    .Lx624_44
                        cmp              al, 72;                              jne   .Lx624_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx624_44
                                                                              jmp   .Lx624_45
.Lx624_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx624_53
                        cmp              al, 104;                             je    .Lx624_53
                        cmp              al, 72;                              jne   .Lx624_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx624_53
                                                                              jmp   .Lx624_46
.Lx624_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx624_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx624_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx624_51
.Lx624_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx624_47
                        cmp              al, 104;                             je    .Lx624_47
                        cmp              al, 72;                              jne   .Lx624_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx624_47
                                                                              jmp   .Lx624_48
.Lx624_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx624_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx624_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx624_51
.Lx624_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx624_49
                        cmp              dl, 80;                              je    .Lx624_53
                                                                              jmp   .Lx624_52
.Lx624_49:              cmp              dl, 80;                              je    .Lx624_52
                        cmp              cl, 5;                               je    .Lx624_53
                        cmp              dl, 5;                               je    .Lx624_53
                        cmp              cl, 3;                               jne   .Lx624_50
                        cmp              dl, 3;                               jne   .Lx624_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx624_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx624_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx624_51
                                                                              jmp   .Lx624_52
.Lx624_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx624_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx624_53
.Lx624_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx624_54
.Lx624_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx624_54
.Lx624_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx624_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n583_lit_string_α
n582_call_builtin_prolog_β:
                        mov              r11, 236;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 6
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n584_call_builtin_prolog_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "Clark="
#-----------------------------------------------------------------------------------------------------------------------
n584_call_builtin_prolog_α:
                        mov              r11, 238
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn627:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn627]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n585_var_α
n584_call_builtin_prolog_β:
                        mov              r11, 238;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:             mov              r11, 239
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n586_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n586_call_builtin_prolog_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn631:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn631]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n587_lit_string_α
n586_call_builtin_prolog_β:
                        mov              r11, 240;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 7
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n588_call_builtin_prolog_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          " Jones="
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_prolog_α:
                        mov              r11, 242
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn634:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn634]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n589_var_α
n588_call_builtin_prolog_β:
                        mov              r11, 242;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 456], rax;          jmp   n590_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_prolog_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn638:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n591_lit_string_α
n590_call_builtin_prolog_β:
                        mov              r11, 244;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 8
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n592_call_builtin_prolog_α
.Lx639_0:               .quad            .Lx639_0_s
.Lx639_0_s:             .string          " Morgan="
#-----------------------------------------------------------------------------------------------------------------------
n592_call_builtin_prolog_α:
                        mov              r11, 246
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn641:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n593_var_α
n592_call_builtin_prolog_β:
                        mov              r11, 246;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 360], rax;          jmp   n594_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              r11, 248
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn645:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n595_lit_string_α
n594_call_builtin_prolog_β:
                        mov              r11, 248;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n596_call_builtin_prolog_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          " Smith="
#-----------------------------------------------------------------------------------------------------------------------
n596_call_builtin_prolog_α:
                        mov              r11, 250
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn648:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n597_var_α
n596_call_builtin_prolog_β:
                        mov              r11, 250;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n597_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 264], rax;          jmp   n598_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n598_call_builtin_prolog_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn652:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n599_lit_string_α
n598_call_builtin_prolog_β:
                        mov              r11, 252;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n600_call_builtin_prolog_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n600_call_builtin_prolog_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn655:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn655]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n603_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n601_move_label_α
n600_call_builtin_prolog_β:
                        mov              r11, 254;                            jmp   n603_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n601_move_label_α:      mov              r11, 255
                        lea              rax, [rip + n603_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   display$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n602_disjunction_α:     mov              r11, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    display$2F4_ω
                                                                              jmp   rax
n602_disjunction_β:     mov              r11, 256;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_call_builtin_prolog_α:
                        mov              r11, 257
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   display$2F4_ω
n603_call_builtin_prolog_β:
                        mov              r11, 257;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_β:
                                                                              jmp   n602_disjunction_α
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx661_2]
                        lea              rdx, [rip + .Lx661_3];               jmp   FN__display$2F4
.Lx661_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx661_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__livesNear$2F2:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 768
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
livesNear$2F2_α_body:
                        lea              rax, [rip + n685_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n662_call_builtin_prolog_α:
                        mov              r11, 258
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx687_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx687_101
.Lx687_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx687_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx687_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx687_101
.Lx687_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx687_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n663_var_ref_α
n662_call_builtin_prolog_β:
                        mov              r11, 258;                            jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n663_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n664_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 9
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n665_call_builtin_prolog_α
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n665_call_builtin_prolog_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx691_2];     jmp   .Lx691_3
.Lx691_2:               .quad            .Lx691_2_s
.Lx691_2_s:             .string          "policeman"
.Lx691_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n670_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n666_var_ref_α
n665_call_builtin_prolog_β:
                        mov              r11, 261;                            jmp   n670_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n667_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 8
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n668_call_builtin_prolog_α
.Lx694_0:               .quad            .Lx694_0_s
.Lx694_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n668_call_builtin_prolog_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx695_2];     jmp   .Lx695_3
.Lx695_2:               .quad            .Lx695_2_s
.Lx695_2_s:             .string          "druggist"
.Lx695_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n670_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n669_cut_α
n668_call_builtin_prolog_β:
                        mov              r11, 264;                            jmp   n670_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n669_cut_α:             mov              r11, 265;                            jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_builtin_prolog_α:
                        mov              r11, 266
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n671_var_ref_α
n670_call_builtin_prolog_β:
                        mov              r11, 266;                            jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n673_call_builtin_prolog_α
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "druggist"
#-----------------------------------------------------------------------------------------------------------------------
n673_call_builtin_prolog_α:
                        mov              r11, 269
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx701_2];     jmp   .Lx701_3
.Lx701_2:               .quad            .Lx701_2_s
.Lx701_2_s:             .string          "druggist"
.Lx701_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n678_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n674_var_ref_α
n673_call_builtin_prolog_β:
                        mov              r11, 269;                            jmp   n678_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n674_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n675_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 9
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n676_call_builtin_prolog_α
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "policeman"
#-----------------------------------------------------------------------------------------------------------------------
n676_call_builtin_prolog_α:
                        mov              r11, 272
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx705_2];     jmp   .Lx705_3
.Lx705_2:               .quad            .Lx705_2_s
.Lx705_2_s:             .string          "policeman"
.Lx705_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n678_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n677_cut_α
n676_call_builtin_prolog_β:
                        mov              r11, 272;                            jmp   n678_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n677_cut_α:             mov              r11, 273;                            jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n678_call_builtin_prolog_α:
                        mov              r11, 274
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n679_var_ref_α
n678_call_builtin_prolog_β:
                        mov              r11, 274;                            jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n680_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 736]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n681_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n681_call_builtin_prolog_α:
                        mov              r11, 277
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
.Lx712_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx712_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx712_41
                        cmp              esi, 1;                              jne   .Lx712_55
                        mov              r8, rax;                             jmp   .Lx712_40
.Lx712_55:              cmp              esi, 2;                              jne   .Lx712_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx712_41
                        mov              r8, rax;                             jmp   .Lx712_40
.Lx712_56:              cmp              al, 72;                              jne   .Lx712_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx712_41
                        cmp              rax, r8;                             je    .Lx712_41
                        mov              r8, rax;                             jmp   .Lx712_40
.Lx712_41:              lea              r9, [rsp + 240]
.Lx712_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx712_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx712_43
                        cmp              esi, 1;                              jne   .Lx712_57
                        mov              r9, rax;                             jmp   .Lx712_42
.Lx712_57:              cmp              esi, 2;                              jne   .Lx712_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx712_43
                        mov              r9, rax;                             jmp   .Lx712_42
.Lx712_58:              cmp              al, 72;                              jne   .Lx712_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx712_43
                        cmp              rax, r9;                             je    .Lx712_43
                        mov              r9, rax;                             jmp   .Lx712_42
.Lx712_43:              cmp              r8, r9;                              je    .Lx712_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx712_44
                        cmp              al, 104;                             je    .Lx712_44
                        cmp              al, 72;                              jne   .Lx712_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx712_44
                                                                              jmp   .Lx712_45
.Lx712_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx712_53
                        cmp              al, 104;                             je    .Lx712_53
                        cmp              al, 72;                              jne   .Lx712_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx712_53
                                                                              jmp   .Lx712_46
.Lx712_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx712_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx712_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx712_51
.Lx712_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx712_47
                        cmp              al, 104;                             je    .Lx712_47
                        cmp              al, 72;                              jne   .Lx712_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx712_47
                                                                              jmp   .Lx712_48
.Lx712_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx712_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx712_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx712_51
.Lx712_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx712_49
                        cmp              dl, 80;                              je    .Lx712_53
                                                                              jmp   .Lx712_52
.Lx712_49:              cmp              dl, 80;                              je    .Lx712_52
                        cmp              cl, 5;                               je    .Lx712_53
                        cmp              dl, 5;                               je    .Lx712_53
                        cmp              cl, 3;                               jne   .Lx712_50
                        cmp              dl, 3;                               jne   .Lx712_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx712_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx712_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx712_51
                                                                              jmp   .Lx712_52
.Lx712_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx712_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx712_53
.Lx712_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx712_54
.Lx712_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx712_54
.Lx712_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx712_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n686_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n682_var_ref_α
n681_call_builtin_prolog_β:
                        mov              r11, 277;                            jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n683_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n683_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n684_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n684_call_builtin_prolog_α:
                        mov              r11, 280
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
.Lx717_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx717_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx717_41
                        cmp              esi, 1;                              jne   .Lx717_55
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_55:              cmp              esi, 2;                              jne   .Lx717_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx717_41
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_56:              cmp              al, 72;                              jne   .Lx717_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx717_41
                        cmp              rax, r8;                             je    .Lx717_41
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_41:              lea              r9, [rsp + 160]
.Lx717_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx717_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx717_43
                        cmp              esi, 1;                              jne   .Lx717_57
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_57:              cmp              esi, 2;                              jne   .Lx717_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx717_43
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_58:              cmp              al, 72;                              jne   .Lx717_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx717_43
                        cmp              rax, r9;                             je    .Lx717_43
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_43:              cmp              r8, r9;                              je    .Lx717_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx717_44
                        cmp              al, 104;                             je    .Lx717_44
                        cmp              al, 72;                              jne   .Lx717_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx717_44
                                                                              jmp   .Lx717_45
.Lx717_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx717_53
                        cmp              al, 104;                             je    .Lx717_53
                        cmp              al, 72;                              jne   .Lx717_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx717_53
                                                                              jmp   .Lx717_46
.Lx717_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx717_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx717_51
.Lx717_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx717_47
                        cmp              al, 104;                             je    .Lx717_47
                        cmp              al, 72;                              jne   .Lx717_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx717_47
                                                                              jmp   .Lx717_48
.Lx717_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx717_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx717_51
.Lx717_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx717_49
                        cmp              dl, 80;                              je    .Lx717_53
                                                                              jmp   .Lx717_52
.Lx717_49:              cmp              dl, 80;                              je    .Lx717_52
                        cmp              cl, 5;                               je    .Lx717_53
                        cmp              dl, 5;                               je    .Lx717_53
                        cmp              cl, 3;                               jne   .Lx717_50
                        cmp              dl, 3;                               jne   .Lx717_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx717_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx717_51
                                                                              jmp   .Lx717_52
.Lx717_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx717_53
.Lx717_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx717_54
.Lx717_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx717_54
.Lx717_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx717_54:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n686_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n685_suspend_α
n684_call_builtin_prolog_β:
                        mov              r11, 280;                            jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n685_suspend_α:         mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx719_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx719_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n685_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n685_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   livesNear$2F2_γ
n685_suspend_β:         mov              r11, 281;                            jmp   n686_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n686_call_builtin_prolog_α:
                        mov              r11, 282
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    livesNear$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   livesNear$2F2_ω
n686_call_builtin_prolog_β:
                        mov              r11, 282;                            jmp   livesNear$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_β:
                                                                              jmp   n685_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx720_50
                        mov              qword ptr [rsp + 704], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx720_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 776]
                        add              rsp, 800;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
livesNear$2F2_ω:
                        mov              rcx, qword ptr [rsp + 784]
                        add              rsp, 800;                            jmp   rcx
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
n721_call_builtin_prolog_α:
                        mov              r11, 283
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx726_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx726_101
.Lx726_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx726_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx726_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx726_101
.Lx726_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx726_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n722_call_proc_staged_α
n721_call_builtin_prolog_β:
                        mov              r11, 283;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        mov              r11, 284
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx728_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx728_1
                        lea              rcx, [rip + .Lx728_3]
                        lea              rdx, [rip + .Lx728_4];               jmp   rax
.Lx728_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx728_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx728_2
.Lx728_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx728_2
.Lx728_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx728_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx728_2
.Lx728_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx728_2
.Lx728_1:               call             rt_faildescr@PLT
.Lx728_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx728_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx728_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n725_call_builtin_prolog_α
                                                                              jmp   n723_move_label_α
n722_call_proc_staged_β:
                        mov              r11, 284
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n725_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 16
                        mov              r8d, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 6
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n725_call_builtin_prolog_α
                        lea              r8, [rip + .Lx728_7]
                        push             r8
                        lea              rcx, [rip + .Lx728_3]
                        lea              rdx, [rip + .Lx728_4];               jmp   rax
.Lx728_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n725_call_builtin_prolog_α
                                                                              jmp   n723_move_label_α
.Lx728_0:               .quad            .Lx728_0_s
.Lx728_0_s:             .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n723_move_label_α:      mov              r11, 285
                        lea              rax, [rip + n722_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n724_disjunction_α:     mov              r11, 286
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n724_disjunction_β:     mov              r11, 286;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n725_call_builtin_prolog_α:
                        mov              r11, 287
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n725_call_builtin_prolog_β:
                        mov              r11, 287;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n724_disjunction_α
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
.Lstartup_pname1:       .string          "drives/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__drives$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            352
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "puzzle/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__puzzle$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1424
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "earnsMore/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__earnsMore$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            752
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "occupation/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__occupation$2F1
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "knows/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__knows$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            752
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "$disj0/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "display/4"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
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
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "livesNear/2"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__livesNear$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            752
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
