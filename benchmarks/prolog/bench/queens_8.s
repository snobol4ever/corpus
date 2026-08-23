                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 1008
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
sel$2F3_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx30_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx30_101
.Lx30_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx30_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx30_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx30_101
.Lx30_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx30_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
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
.Lx35_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx35_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx35_41
                        cmp              esi, 1;                              jne   .Lx35_55
                        mov              r8, rax;                             jmp   .Lx35_40
.Lx35_55:               cmp              esi, 2;                              jne   .Lx35_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx35_41
                        mov              r8, rax;                             jmp   .Lx35_40
.Lx35_56:               cmp              al, 72;                              jne   .Lx35_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx35_41
                        cmp              rax, r8;                             je    .Lx35_41
                        mov              r8, rax;                             jmp   .Lx35_40
.Lx35_41:               lea              r9, [rsp + 848]
.Lx35_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx35_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx35_43
                        cmp              esi, 1;                              jne   .Lx35_57
                        mov              r9, rax;                             jmp   .Lx35_42
.Lx35_57:               cmp              esi, 2;                              jne   .Lx35_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx35_43
                        mov              r9, rax;                             jmp   .Lx35_42
.Lx35_58:               cmp              al, 72;                              jne   .Lx35_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx35_43
                        cmp              rax, r9;                             je    .Lx35_43
                        mov              r9, rax;                             jmp   .Lx35_42
.Lx35_43:               cmp              r8, r9;                              je    .Lx35_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx35_44
                        cmp              al, 104;                             je    .Lx35_44
                        cmp              al, 72;                              jne   .Lx35_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx35_44
                                                                              jmp   .Lx35_45
.Lx35_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx35_53
                        cmp              al, 104;                             je    .Lx35_53
                        cmp              al, 72;                              jne   .Lx35_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx35_53
                                                                              jmp   .Lx35_46
.Lx35_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx35_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx35_51
.Lx35_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx35_47
                        cmp              al, 104;                             je    .Lx35_47
                        cmp              al, 72;                              jne   .Lx35_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx35_47
                                                                              jmp   .Lx35_48
.Lx35_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx35_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx35_51
.Lx35_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx35_49
                        cmp              dl, 80;                              je    .Lx35_53
                                                                              jmp   .Lx35_52
.Lx35_49:               cmp              dl, 80;                              je    .Lx35_52
                        cmp              cl, 5;                               je    .Lx35_53
                        cmp              dl, 5;                               je    .Lx35_53
                        cmp              cl, 3;                               jne   .Lx35_50
                        cmp              dl, 3;                               jne   .Lx35_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx35_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx35_51
                                                                              jmp   .Lx35_52
.Lx35_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx35_53
.Lx35_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx35_54
.Lx35_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx35_54
.Lx35_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx35_54:               mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              r11, 8
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lx42_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx42_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_61
                        cmp              esi, 1;                              jne   .Lx42_62
                        mov              r8, rax;                             jmp   .Lx42_60
.Lx42_62:               cmp              esi, 2;                              jne   .Lx42_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_61
                        mov              r8, rax;                             jmp   .Lx42_60
.Lx42_63:               cmp              al, 72;                              jne   .Lx42_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_61
                        cmp              rax, r8;                             je    .Lx42_61
                        mov              r8, rax;                             jmp   .Lx42_60
.Lx42_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx42_80
                        cmp              al, 104;                             je    .Lx42_80
                        cmp              al, 72;                              jne   .Lx42_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx42_80
                                                                              jmp   .Lx42_74
.Lx42_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx42_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx42_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx42_73
                        lea              r9, [rsp + 752]
.Lx42_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx42_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_65
                        cmp              esi, 1;                              jne   .Lx42_66
                        mov              r9, rax;                             jmp   .Lx42_64
.Lx42_66:               cmp              esi, 2;                              jne   .Lx42_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_65
                        mov              r9, rax;                             jmp   .Lx42_64
.Lx42_67:               cmp              al, 72;                              jne   .Lx42_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_65
                        cmp              rax, r9;                             je    .Lx42_65
                        mov              r9, rax;                             jmp   .Lx42_64
.Lx42_65:               lea              rcx, [rsp + 768]
.Lx42_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx42_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx42_69
                        cmp              esi, 1;                              jne   .Lx42_70
                        mov              rcx, rax;                            jmp   .Lx42_68
.Lx42_70:               cmp              esi, 2;                              jne   .Lx42_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_69
                        mov              rcx, rax;                            jmp   .Lx42_68
.Lx42_71:               cmp              al, 72;                              jne   .Lx42_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx42_69
                        cmp              rax, rcx;                            je    .Lx42_69
                        mov              rcx, rax;                            jmp   .Lx42_68
.Lx42_69:               cmp              r9, rcx;                             je    .Lx42_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx42_75
                        cmp              al, 104;                             je    .Lx42_75
                        cmp              al, 72;                              jne   .Lx42_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx42_75
                                                                              jmp   .Lx42_72
.Lx42_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx42_76
                        cmp              al, 104;                             je    .Lx42_76
                        cmp              al, 72;                              jne   .Lx42_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx42_76
                                                                              jmp   .Lx42_72
.Lx42_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx42_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx42_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx42_77
.Lx42_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx42_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx42_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx42_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx42_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx42_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 752]
.Lx42_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx42_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_82
                        cmp              esi, 1;                              jne   .Lx42_83
                        mov              r9, rax;                             jmp   .Lx42_81
.Lx42_83:               cmp              esi, 2;                              jne   .Lx42_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_82
                        mov              r9, rax;                             jmp   .Lx42_81
.Lx42_84:               cmp              al, 72;                              jne   .Lx42_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx42_82
                        cmp              rax, r9;                             je    .Lx42_82
                        mov              r9, rax;                             jmp   .Lx42_81
.Lx42_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx42_85
                        cmp              al, 104;                             je    .Lx42_85
                        cmp              al, 72;                              jne   .Lx42_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx42_85
                                                                              jmp   .Lx42_86
.Lx42_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx42_87
.Lx42_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx42_87:               lea              rcx, [rsp + 768]
.Lx42_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx42_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx42_89
                        cmp              esi, 1;                              jne   .Lx42_90
                        mov              rcx, rax;                            jmp   .Lx42_88
.Lx42_90:               cmp              esi, 2;                              jne   .Lx42_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_89
                        mov              rcx, rax;                            jmp   .Lx42_88
.Lx42_91:               cmp              al, 72;                              jne   .Lx42_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx42_89
                        cmp              rax, rcx;                            je    .Lx42_89
                        mov              rcx, rax;                            jmp   .Lx42_88
.Lx42_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx42_92
                        cmp              al, 104;                             je    .Lx42_92
                        cmp              al, 72;                              jne   .Lx42_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx42_92
                                                                              jmp   .Lx42_93
.Lx42_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx42_94
.Lx42_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx42_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx42_77
.Lx42_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx42_77
.Lx42_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx42_77:               mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        lea              r8, [rsp + 640]
.Lx47_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx47_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx47_41
                        cmp              esi, 1;                              jne   .Lx47_55
                        mov              r8, rax;                             jmp   .Lx47_40
.Lx47_55:               cmp              esi, 2;                              jne   .Lx47_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx47_41
                        mov              r8, rax;                             jmp   .Lx47_40
.Lx47_56:               cmp              al, 72;                              jne   .Lx47_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx47_41
                        cmp              rax, r8;                             je    .Lx47_41
                        mov              r8, rax;                             jmp   .Lx47_40
.Lx47_41:               lea              r9, [rsp + 656]
.Lx47_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx47_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx47_43
                        cmp              esi, 1;                              jne   .Lx47_57
                        mov              r9, rax;                             jmp   .Lx47_42
.Lx47_57:               cmp              esi, 2;                              jne   .Lx47_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx47_43
                        mov              r9, rax;                             jmp   .Lx47_42
.Lx47_58:               cmp              al, 72;                              jne   .Lx47_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx47_43
                        cmp              rax, r9;                             je    .Lx47_43
                        mov              r9, rax;                             jmp   .Lx47_42
.Lx47_43:               cmp              r8, r9;                              je    .Lx47_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx47_44
                        cmp              al, 104;                             je    .Lx47_44
                        cmp              al, 72;                              jne   .Lx47_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx47_44
                                                                              jmp   .Lx47_45
.Lx47_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx47_53
                        cmp              al, 104;                             je    .Lx47_53
                        cmp              al, 72;                              jne   .Lx47_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx47_53
                                                                              jmp   .Lx47_46
.Lx47_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx47_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx47_51
.Lx47_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx47_47
                        cmp              al, 104;                             je    .Lx47_47
                        cmp              al, 72;                              jne   .Lx47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx47_47
                                                                              jmp   .Lx47_48
.Lx47_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx47_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx47_51
.Lx47_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx47_49
                        cmp              dl, 80;                              je    .Lx47_53
                                                                              jmp   .Lx47_52
.Lx47_49:               cmp              dl, 80;                              je    .Lx47_52
                        cmp              cl, 5;                               je    .Lx47_53
                        cmp              dl, 5;                               je    .Lx47_53
                        cmp              cl, 3;                               jne   .Lx47_50
                        cmp              dl, 3;                               jne   .Lx47_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx47_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx47_51
                                                                              jmp   .Lx47_52
.Lx47_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx47_53
.Lx47_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx47_54
.Lx47_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx47_54
.Lx47_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx47_54:               mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n12_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx49_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 896];          jmp   rax
.Lx49_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n11_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        lea              r8, [rsp + 512]
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
.Lx55_41:               lea              r9, [rsp + 528]
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx55_51
.Lx55_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx55_47
                        cmp              al, 104;                             je    .Lx55_47
                        cmp              al, 72;                              jne   .Lx55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx55_47
                                                                              jmp   .Lx55_48
.Lx55_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx55_54:               mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx62_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx62_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx62_61
                        cmp              esi, 1;                              jne   .Lx62_62
                        mov              r8, rax;                             jmp   .Lx62_60
.Lx62_62:               cmp              esi, 2;                              jne   .Lx62_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_61
                        mov              r8, rax;                             jmp   .Lx62_60
.Lx62_63:               cmp              al, 72;                              jne   .Lx62_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx62_61
                        cmp              rax, r8;                             je    .Lx62_61
                        mov              r8, rax;                             jmp   .Lx62_60
.Lx62_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx62_80
                        cmp              al, 104;                             je    .Lx62_80
                        cmp              al, 72;                              jne   .Lx62_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx62_80
                                                                              jmp   .Lx62_74
.Lx62_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx62_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx62_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx62_73
                        lea              r9, [rsp + 432]
.Lx62_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx62_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_65
                        cmp              esi, 1;                              jne   .Lx62_66
                        mov              r9, rax;                             jmp   .Lx62_64
.Lx62_66:               cmp              esi, 2;                              jne   .Lx62_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_65
                        mov              r9, rax;                             jmp   .Lx62_64
.Lx62_67:               cmp              al, 72;                              jne   .Lx62_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_65
                        cmp              rax, r9;                             je    .Lx62_65
                        mov              r9, rax;                             jmp   .Lx62_64
.Lx62_65:               lea              rcx, [rsp + 448]
.Lx62_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx62_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx62_69
                        cmp              esi, 1;                              jne   .Lx62_70
                        mov              rcx, rax;                            jmp   .Lx62_68
.Lx62_70:               cmp              esi, 2;                              jne   .Lx62_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_69
                        mov              rcx, rax;                            jmp   .Lx62_68
.Lx62_71:               cmp              al, 72;                              jne   .Lx62_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx62_69
                        cmp              rax, rcx;                            je    .Lx62_69
                        mov              rcx, rax;                            jmp   .Lx62_68
.Lx62_69:               cmp              r9, rcx;                             je    .Lx62_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx62_75
                        cmp              al, 104;                             je    .Lx62_75
                        cmp              al, 72;                              jne   .Lx62_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx62_75
                                                                              jmp   .Lx62_72
.Lx62_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx62_76
                        cmp              al, 104;                             je    .Lx62_76
                        cmp              al, 72;                              jne   .Lx62_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx62_76
                                                                              jmp   .Lx62_72
.Lx62_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx62_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx62_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx62_77
.Lx62_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx62_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx62_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx62_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx62_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx62_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 432]
.Lx62_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx62_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_82
                        cmp              esi, 1;                              jne   .Lx62_83
                        mov              r9, rax;                             jmp   .Lx62_81
.Lx62_83:               cmp              esi, 2;                              jne   .Lx62_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_82
                        mov              r9, rax;                             jmp   .Lx62_81
.Lx62_84:               cmp              al, 72;                              jne   .Lx62_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_82
                        cmp              rax, r9;                             je    .Lx62_82
                        mov              r9, rax;                             jmp   .Lx62_81
.Lx62_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx62_85
                        cmp              al, 104;                             je    .Lx62_85
                        cmp              al, 72;                              jne   .Lx62_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx62_85
                                                                              jmp   .Lx62_86
.Lx62_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx62_87
.Lx62_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx62_87:               lea              rcx, [rsp + 448]
.Lx62_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx62_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx62_89
                        cmp              esi, 1;                              jne   .Lx62_90
                        mov              rcx, rax;                            jmp   .Lx62_88
.Lx62_90:               cmp              esi, 2;                              jne   .Lx62_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_89
                        mov              rcx, rax;                            jmp   .Lx62_88
.Lx62_91:               cmp              al, 72;                              jne   .Lx62_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx62_89
                        cmp              rax, rcx;                            je    .Lx62_89
                        mov              rcx, rax;                            jmp   .Lx62_88
.Lx62_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx62_92
                        cmp              al, 104;                             je    .Lx62_92
                        cmp              al, 72;                              jne   .Lx62_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx62_92
                                                                              jmp   .Lx62_93
.Lx62_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx62_94
.Lx62_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx62_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx62_77
.Lx62_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx62_77
.Lx62_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx62_77:               mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lx69_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx69_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_61
                        cmp              esi, 1;                              jne   .Lx69_62
                        mov              r8, rax;                             jmp   .Lx69_60
.Lx69_62:               cmp              esi, 2;                              jne   .Lx69_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_61
                        mov              r8, rax;                             jmp   .Lx69_60
.Lx69_63:               cmp              al, 72;                              jne   .Lx69_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_61
                        cmp              rax, r8;                             je    .Lx69_61
                        mov              r8, rax;                             jmp   .Lx69_60
.Lx69_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx69_80
                        cmp              al, 104;                             je    .Lx69_80
                        cmp              al, 72;                              jne   .Lx69_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx69_80
                                                                              jmp   .Lx69_74
.Lx69_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx69_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx69_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx69_73
                        lea              r9, [rsp + 320]
.Lx69_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx69_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_65
                        cmp              esi, 1;                              jne   .Lx69_66
                        mov              r9, rax;                             jmp   .Lx69_64
.Lx69_66:               cmp              esi, 2;                              jne   .Lx69_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_65
                        mov              r9, rax;                             jmp   .Lx69_64
.Lx69_67:               cmp              al, 72;                              jne   .Lx69_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_65
                        cmp              rax, r9;                             je    .Lx69_65
                        mov              r9, rax;                             jmp   .Lx69_64
.Lx69_65:               lea              rcx, [rsp + 336]
.Lx69_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx69_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx69_69
                        cmp              esi, 1;                              jne   .Lx69_70
                        mov              rcx, rax;                            jmp   .Lx69_68
.Lx69_70:               cmp              esi, 2;                              jne   .Lx69_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_69
                        mov              rcx, rax;                            jmp   .Lx69_68
.Lx69_71:               cmp              al, 72;                              jne   .Lx69_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx69_69
                        cmp              rax, rcx;                            je    .Lx69_69
                        mov              rcx, rax;                            jmp   .Lx69_68
.Lx69_69:               cmp              r9, rcx;                             je    .Lx69_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_75
                        cmp              al, 104;                             je    .Lx69_75
                        cmp              al, 72;                              jne   .Lx69_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_75
                                                                              jmp   .Lx69_72
.Lx69_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx69_76
                        cmp              al, 104;                             je    .Lx69_76
                        cmp              al, 72;                              jne   .Lx69_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx69_76
                                                                              jmp   .Lx69_72
.Lx69_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx69_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx69_77
.Lx69_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx69_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx69_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx69_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx69_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 320]
.Lx69_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx69_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_82
                        cmp              esi, 1;                              jne   .Lx69_83
                        mov              r9, rax;                             jmp   .Lx69_81
.Lx69_83:               cmp              esi, 2;                              jne   .Lx69_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_82
                        mov              r9, rax;                             jmp   .Lx69_81
.Lx69_84:               cmp              al, 72;                              jne   .Lx69_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_82
                        cmp              rax, r9;                             je    .Lx69_82
                        mov              r9, rax;                             jmp   .Lx69_81
.Lx69_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_85
                        cmp              al, 104;                             je    .Lx69_85
                        cmp              al, 72;                              jne   .Lx69_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_85
                                                                              jmp   .Lx69_86
.Lx69_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx69_87
.Lx69_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx69_87:               lea              rcx, [rsp + 336]
.Lx69_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx69_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx69_89
                        cmp              esi, 1;                              jne   .Lx69_90
                        mov              rcx, rax;                            jmp   .Lx69_88
.Lx69_90:               cmp              esi, 2;                              jne   .Lx69_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_89
                        mov              rcx, rax;                            jmp   .Lx69_88
.Lx69_91:               cmp              al, 72;                              jne   .Lx69_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx69_89
                        cmp              rax, rcx;                            je    .Lx69_89
                        mov              rcx, rax;                            jmp   .Lx69_88
.Lx69_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx69_92
                        cmp              al, 104;                             je    .Lx69_92
                        cmp              al, 72;                              jne   .Lx69_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx69_92
                                                                              jmp   .Lx69_93
.Lx69_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx69_94
.Lx69_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx69_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx69_77
.Lx69_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx69_77
.Lx69_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx69_77:               mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α: mov              r11, 28
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx77_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx77_21
.Lx77_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx77_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx77_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx77_23
.Lx77_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx77_23:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx77_24
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx77_25
.Lx77_24:               mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx77_25:               lea              rax, [rip + .Lx77_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx77_1
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4];                jmp   rax
.Lx77_3:                mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx77_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx77_2
.Lx77_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx77_2
.Lx77_4:                mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx77_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx77_2
.Lx77_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx77_2
.Lx77_1:                call             rt_faildescr@PLT
.Lx77_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx77_29
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
.Lx77_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                                                                              jmp   n28_suspend_α
n27_call_proc_staged_β: mov              r11, 28
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n29_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 896
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n29_call_builtin_prolog_α
                        lea              r8, [rip + .Lx77_7]
                        push             r8
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4];                jmp   rax
.Lx77_7:                add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n29_call_builtin_prolog_α
                                                                              jmp   n28_suspend_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:          mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx79_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 896];          jmp   rax
.Lx79_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n28_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n28_suspend_β:          mov              r11, 29;                             jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   sel$2F3_ω
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx80_50
                        mov              qword ptr [rsp + 896], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 896];          jmp   rax
.Lx80_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
queens$2F2_α_body:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 31
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx94_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx94_101
.Lx94_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx94_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx94_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx94_101
.Lx94_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx94_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_var_ref_α
n81_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 34
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
.Lx99_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx99_41
                        cmp              esi, 1;                              jne   .Lx99_55
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_55:               cmp              esi, 2;                              jne   .Lx99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx99_41
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_56:               cmp              al, 72;                              jne   .Lx99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx99_41
                        cmp              rax, r8;                             je    .Lx99_41
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_41:               lea              r9, [rsp + 368]
.Lx99_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx99_43
                        cmp              esi, 1;                              jne   .Lx99_57
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_57:               cmp              esi, 2;                              jne   .Lx99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx99_43
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_58:               cmp              al, 72;                              jne   .Lx99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx99_43
                        cmp              rax, r9;                             je    .Lx99_43
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_43:               cmp              r8, r9;                              je    .Lx99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx99_44
                        cmp              al, 104;                             je    .Lx99_44
                        cmp              al, 72;                              jne   .Lx99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx99_44
                                                                              jmp   .Lx99_45
.Lx99_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx99_53
                        cmp              al, 104;                             je    .Lx99_53
                        cmp              al, 72;                              jne   .Lx99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx99_53
                                                                              jmp   .Lx99_46
.Lx99_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx99_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx99_51
.Lx99_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx99_47
                        cmp              al, 104;                             je    .Lx99_47
                        cmp              al, 72;                              jne   .Lx99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx99_47
                                                                              jmp   .Lx99_48
.Lx99_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx99_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx99_51
.Lx99_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx99_49
                        cmp              dl, 80;                              je    .Lx99_53
                                                                              jmp   .Lx99_52
.Lx99_49:               cmp              dl, 80;                              je    .Lx99_52
                        cmp              cl, 5;                               je    .Lx99_53
                        cmp              dl, 5;                               je    .Lx99_53
                        cmp              cl, 3;                               jne   .Lx99_50
                        cmp              dl, 3;                               jne   .Lx99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx99_51
                                                                              jmp   .Lx99_52
.Lx99_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx99_53
.Lx99_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx99_54
.Lx99_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx99_54
.Lx99_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx99_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              r11, 37
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
.Lx104_41:              lea              r9, [rsp + 288]
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
.Lx104_54:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n90_var_ref_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: mov              r11, 41
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx111_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx111_21
.Lx111_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx111_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx111_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx111_23
.Lx111_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx111_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx111_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx111_25
.Lx111_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx111_25:              lea              rax, [rip + .Lx111_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx111_1
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4];               jmp   rax
.Lx111_3:               mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx111_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx111_2
.Lx111_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx111_2
.Lx111_4:               mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx111_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx111_2
.Lx111_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx111_2
.Lx111_1:               call             rt_faildescr@PLT
.Lx111_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx111_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx111_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                                                                              jmp   n92_suspend_α
n91_call_proc_staged_β: mov              r11, 41
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n93_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1520
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n93_call_builtin_prolog_α
                        lea              r8, [rip + .Lx111_7]
                        push             r8
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4];               jmp   rax
.Lx111_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n93_call_builtin_prolog_α
                                                                              jmp   n92_suspend_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "queens_2/3"
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:          mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx113_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx113_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n92_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F2_γ
n92_suspend_β:          mov              r11, 42;                             jmp   n91_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 43
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
                        cmp              al, 104;                             je    queens$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   queens$2F2_ω
n93_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_β:
                                                                              jmp   n92_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx114_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx114_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 480
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
not_attack$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 44
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx129_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx129_101
.Lx129_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx129_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx129_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx129_101
.Lx129_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx129_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        lea              r8, [rsp + 368]
.Lx134_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx134_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx134_41
                        cmp              esi, 1;                              jne   .Lx134_55
                        mov              r8, rax;                             jmp   .Lx134_40
.Lx134_55:              cmp              esi, 2;                              jne   .Lx134_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx134_41
                        mov              r8, rax;                             jmp   .Lx134_40
.Lx134_56:              cmp              al, 72;                              jne   .Lx134_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx134_41
                        cmp              rax, r8;                             je    .Lx134_41
                        mov              r8, rax;                             jmp   .Lx134_40
.Lx134_41:              lea              r9, [rsp + 384]
.Lx134_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx134_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx134_43
                        cmp              esi, 1;                              jne   .Lx134_57
                        mov              r9, rax;                             jmp   .Lx134_42
.Lx134_57:              cmp              esi, 2;                              jne   .Lx134_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx134_43
                        mov              r9, rax;                             jmp   .Lx134_42
.Lx134_58:              cmp              al, 72;                              jne   .Lx134_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx134_43
                        cmp              rax, r9;                             je    .Lx134_43
                        mov              r9, rax;                             jmp   .Lx134_42
.Lx134_43:              cmp              r8, r9;                              je    .Lx134_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx134_44
                        cmp              al, 104;                             je    .Lx134_44
                        cmp              al, 72;                              jne   .Lx134_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx134_44
                                                                              jmp   .Lx134_45
.Lx134_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx134_53
                        cmp              al, 104;                             je    .Lx134_53
                        cmp              al, 72;                              jne   .Lx134_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx134_53
                                                                              jmp   .Lx134_46
.Lx134_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx134_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx134_51
.Lx134_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx134_47
                        cmp              al, 104;                             je    .Lx134_47
                        cmp              al, 72;                              jne   .Lx134_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx134_47
                                                                              jmp   .Lx134_48
.Lx134_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx134_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx134_51
.Lx134_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx134_49
                        cmp              dl, 80;                              je    .Lx134_53
                                                                              jmp   .Lx134_52
.Lx134_49:              cmp              dl, 80;                              je    .Lx134_52
                        cmp              cl, 5;                               je    .Lx134_53
                        cmp              dl, 5;                               je    .Lx134_53
                        cmp              cl, 3;                               jne   .Lx134_50
                        cmp              dl, 3;                               jne   .Lx134_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx134_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx134_51
                                                                              jmp   .Lx134_52
.Lx134_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx134_53
.Lx134_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx134_54
.Lx134_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx134_54
.Lx134_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx134_54:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 50
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
.Lx139_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx139_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx139_41
                        cmp              esi, 1;                              jne   .Lx139_55
                        mov              r8, rax;                             jmp   .Lx139_40
.Lx139_55:              cmp              esi, 2;                              jne   .Lx139_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx139_41
                        mov              r8, rax;                             jmp   .Lx139_40
.Lx139_56:              cmp              al, 72;                              jne   .Lx139_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx139_41
                        cmp              rax, r8;                             je    .Lx139_41
                        mov              r8, rax;                             jmp   .Lx139_40
.Lx139_41:              lea              r9, [rsp + 304]
.Lx139_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx139_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx139_43
                        cmp              esi, 1;                              jne   .Lx139_57
                        mov              r9, rax;                             jmp   .Lx139_42
.Lx139_57:              cmp              esi, 2;                              jne   .Lx139_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx139_43
                        mov              r9, rax;                             jmp   .Lx139_42
.Lx139_58:              cmp              al, 72;                              jne   .Lx139_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx139_43
                        cmp              rax, r9;                             je    .Lx139_43
                        mov              r9, rax;                             jmp   .Lx139_42
.Lx139_43:              cmp              r8, r9;                              je    .Lx139_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx139_44
                        cmp              al, 104;                             je    .Lx139_44
                        cmp              al, 72;                              jne   .Lx139_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx139_44
                                                                              jmp   .Lx139_45
.Lx139_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx139_53
                        cmp              al, 104;                             je    .Lx139_53
                        cmp              al, 72;                              jne   .Lx139_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx139_53
                                                                              jmp   .Lx139_46
.Lx139_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx139_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx139_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx139_51
.Lx139_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx139_47
                        cmp              al, 104;                             je    .Lx139_47
                        cmp              al, 72;                              jne   .Lx139_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx139_47
                                                                              jmp   .Lx139_48
.Lx139_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx139_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx139_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx139_51
.Lx139_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx139_49
                        cmp              dl, 80;                              je    .Lx139_53
                                                                              jmp   .Lx139_52
.Lx139_49:              cmp              dl, 80;                              je    .Lx139_52
                        cmp              cl, 5;                               je    .Lx139_53
                        cmp              dl, 5;                               je    .Lx139_53
                        cmp              cl, 3;                               jne   .Lx139_50
                        cmp              dl, 3;                               jne   .Lx139_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx139_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx139_51
                                                                              jmp   .Lx139_52
.Lx139_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx139_53
.Lx139_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx139_54
.Lx139_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx139_54
.Lx139_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx139_54:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 53
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n125_call_proc_staged_α
.Lx144_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 54
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        lea              rcx, [rsp + 256]
                        call             not_attack$2F3_dcα;                  jmp   .Lx146_2
.Lx146_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx146_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx146_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                                                                              jmp   n126_move_label_α
n125_call_proc_staged_β:
                        mov              r11, 54;                             jmp   n128_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n126_move_label_α:      mov              r11, 55
                        lea              rax, [rip + n125_call_proc_staged_β]
                        mov              qword ptr [rsp + 64], rax;           jmp   not_attack$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     mov              r11, 56
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    not_attack$2F2_ω
                                                                              jmp   rax
n127_disjunction_β:     mov              r11, 56;                             jmp   not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              r11, 57
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
                        cmp              al, 104;                             je    not_attack$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   not_attack$2F2_ω
n128_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_β:
                                                                              jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx152_2]
                        lea              rdx, [rip + .Lx152_3];               jmp   FN__not_attack$2F2
.Lx152_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx152_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F3:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1632
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
not_attack$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
                        mov              r11, 58
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx206_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx206_101
.Lx206_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx206_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx206_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx206_101
.Lx206_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx206_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_var_ref_α
n153_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n156_lit_string_α
.Lx209_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n157_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              r11, 62
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
.Lx211_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx211_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx211_111
                        cmp              esi, 1;                              jne   .Lx211_112
                        mov              r8, rax;                             jmp   .Lx211_110
.Lx211_112:             cmp              esi, 2;                              jne   .Lx211_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx211_111
                        mov              r8, rax;                             jmp   .Lx211_110
.Lx211_113:             cmp              al, 72;                              jne   .Lx211_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx211_111
                        cmp              rax, r8;                             je    .Lx211_111
                        mov              r8, rax;                             jmp   .Lx211_110
.Lx211_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx211_114
                        cmp              al, 104;                             je    .Lx211_114
                        cmp              al, 72;                              jne   .Lx211_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx211_114
                                                                              jmp   .Lx211_118
.Lx211_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx211_115
                        cmp              al, 3;                               je    .Lx211_114
                        cmp              al, 2;                               jne   .Lx211_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx211_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx211_114
                                                                              jmp   .Lx211_116
.Lx211_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx211_117
.Lx211_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx211_117
.Lx211_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx211_117:             mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n170_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_var_ref_α
n157_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 2
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n160_call_builtin_prolog_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              rsi, qword ptr [rip + .Lx215_2];     jmp   .Lx215_3
.Lx215_2:               .quad            .Lx215_2_s
.Lx215_2_s:             .string          "[]"
.Lx215_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n169_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_var_ref_α
n160_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n163_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              r11, 68
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
.Lx220_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx220_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx220_41
                        cmp              esi, 1;                              jne   .Lx220_55
                        mov              r8, rax;                             jmp   .Lx220_40
.Lx220_55:              cmp              esi, 2;                              jne   .Lx220_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx220_41
                        mov              r8, rax;                             jmp   .Lx220_40
.Lx220_56:              cmp              al, 72;                              jne   .Lx220_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx220_41
                        cmp              rax, r8;                             je    .Lx220_41
                        mov              r8, rax;                             jmp   .Lx220_40
.Lx220_41:              lea              r9, [rsp + 1296]
.Lx220_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx220_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx220_43
                        cmp              esi, 1;                              jne   .Lx220_57
                        mov              r9, rax;                             jmp   .Lx220_42
.Lx220_57:              cmp              esi, 2;                              jne   .Lx220_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx220_43
                        mov              r9, rax;                             jmp   .Lx220_42
.Lx220_58:              cmp              al, 72;                              jne   .Lx220_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx220_43
                        cmp              rax, r9;                             je    .Lx220_43
                        mov              r9, rax;                             jmp   .Lx220_42
.Lx220_43:              cmp              r8, r9;                              je    .Lx220_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx220_44
                        cmp              al, 104;                             je    .Lx220_44
                        cmp              al, 72;                              jne   .Lx220_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx220_44
                                                                              jmp   .Lx220_45
.Lx220_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx220_53
                        cmp              al, 104;                             je    .Lx220_53
                        cmp              al, 72;                              jne   .Lx220_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx220_53
                                                                              jmp   .Lx220_46
.Lx220_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx220_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx220_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx220_51
.Lx220_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx220_47
                        cmp              al, 104;                             je    .Lx220_47
                        cmp              al, 72;                              jne   .Lx220_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx220_47
                                                                              jmp   .Lx220_48
.Lx220_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx220_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx220_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx220_51
.Lx220_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx220_49
                        cmp              dl, 80;                              je    .Lx220_53
                                                                              jmp   .Lx220_52
.Lx220_49:              cmp              dl, 80;                              je    .Lx220_52
                        cmp              cl, 5;                               je    .Lx220_53
                        cmp              dl, 5;                               je    .Lx220_53
                        cmp              cl, 3;                               jne   .Lx220_50
                        cmp              dl, 3;                               jne   .Lx220_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx220_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx220_51
                                                                              jmp   .Lx220_52
.Lx220_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx220_53
.Lx220_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx220_54
.Lx220_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx220_54
.Lx220_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx220_54:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n169_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              r11, 71
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
.Lx225_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx225_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx225_41
                        cmp              esi, 1;                              jne   .Lx225_55
                        mov              r8, rax;                             jmp   .Lx225_40
.Lx225_55:              cmp              esi, 2;                              jne   .Lx225_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx225_41
                        mov              r8, rax;                             jmp   .Lx225_40
.Lx225_56:              cmp              al, 72;                              jne   .Lx225_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx225_41
                        cmp              rax, r8;                             je    .Lx225_41
                        mov              r8, rax;                             jmp   .Lx225_40
.Lx225_41:              lea              r9, [rsp + 1216]
.Lx225_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx225_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx225_43
                        cmp              esi, 1;                              jne   .Lx225_57
                        mov              r9, rax;                             jmp   .Lx225_42
.Lx225_57:              cmp              esi, 2;                              jne   .Lx225_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx225_43
                        mov              r9, rax;                             jmp   .Lx225_42
.Lx225_58:              cmp              al, 72;                              jne   .Lx225_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx225_43
                        cmp              rax, r9;                             je    .Lx225_43
                        mov              r9, rax;                             jmp   .Lx225_42
.Lx225_43:              cmp              r8, r9;                              je    .Lx225_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx225_44
                        cmp              al, 104;                             je    .Lx225_44
                        cmp              al, 72;                              jne   .Lx225_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx225_44
                                                                              jmp   .Lx225_45
.Lx225_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx225_53
                        cmp              al, 104;                             je    .Lx225_53
                        cmp              al, 72;                              jne   .Lx225_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx225_53
                                                                              jmp   .Lx225_46
.Lx225_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx225_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx225_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx225_51
.Lx225_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx225_47
                        cmp              al, 104;                             je    .Lx225_47
                        cmp              al, 72;                              jne   .Lx225_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx225_47
                                                                              jmp   .Lx225_48
.Lx225_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx225_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx225_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx225_51
.Lx225_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx225_49
                        cmp              dl, 80;                              je    .Lx225_53
                                                                              jmp   .Lx225_52
.Lx225_49:              cmp              dl, 80;                              je    .Lx225_52
                        cmp              cl, 5;                               je    .Lx225_53
                        cmp              dl, 5;                               je    .Lx225_53
                        cmp              cl, 3;                               jne   .Lx225_50
                        cmp              dl, 3;                               jne   .Lx225_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx225_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx225_51
                                                                              jmp   .Lx225_52
.Lx225_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx225_53
.Lx225_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx225_54
.Lx225_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx225_54
.Lx225_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx225_54:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n169_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_cut_α
n166_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_cut_α:             mov              r11, 72;                             jmp   n168_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n168_move_label_α:      mov              r11, 73
                        lea              rax, [rip + n169_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   not_attack$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_var_ref_α
n169_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n172_lit_integer_α
.Lx232_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n173_call_builtin_prolog_α
.Lx233_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        lea              r8, [rsp + 1056]
.Lx234_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx234_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_111
                        cmp              esi, 1;                              jne   .Lx234_112
                        mov              r8, rax;                             jmp   .Lx234_110
.Lx234_112:             cmp              esi, 2;                              jne   .Lx234_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx234_111
                        mov              r8, rax;                             jmp   .Lx234_110
.Lx234_113:             cmp              al, 72;                              jne   .Lx234_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_111
                        cmp              rax, r8;                             je    .Lx234_111
                        mov              r8, rax;                             jmp   .Lx234_110
.Lx234_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx234_114
                        cmp              al, 104;                             je    .Lx234_114
                        cmp              al, 72;                              jne   .Lx234_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx234_114
                                                                              jmp   .Lx234_118
.Lx234_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx234_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx234_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx234_115
                                                                              jmp   .Lx234_114
.Lx234_119:             cmp              al, 3;                               jne   .Lx234_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx234_114
                                                                              jmp   .Lx234_115
.Lx234_120:             cmp              al, 2;                               jne   .Lx234_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx234_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx234_114
                                                                              jmp   .Lx234_115
.Lx234_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx234_117
.Lx234_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx234_117
.Lx234_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx234_117:             mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n174_var_ref_α
n173_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n175_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        lea              r8, [rsp + 960]
.Lx241_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx241_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_61
                        cmp              esi, 1;                              jne   .Lx241_62
                        mov              r8, rax;                             jmp   .Lx241_60
.Lx241_62:              cmp              esi, 2;                              jne   .Lx241_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_61
                        mov              r8, rax;                             jmp   .Lx241_60
.Lx241_63:              cmp              al, 72;                              jne   .Lx241_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx241_61
                        cmp              rax, r8;                             je    .Lx241_61
                        mov              r8, rax;                             jmp   .Lx241_60
.Lx241_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx241_80
                        cmp              al, 104;                             je    .Lx241_80
                        cmp              al, 72;                              jne   .Lx241_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx241_80
                                                                              jmp   .Lx241_74
.Lx241_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx241_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx241_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx241_73
                        lea              r9, [rsp + 976]
.Lx241_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx241_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_65
                        cmp              esi, 1;                              jne   .Lx241_66
                        mov              r9, rax;                             jmp   .Lx241_64
.Lx241_66:              cmp              esi, 2;                              jne   .Lx241_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_65
                        mov              r9, rax;                             jmp   .Lx241_64
.Lx241_67:              cmp              al, 72;                              jne   .Lx241_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_65
                        cmp              rax, r9;                             je    .Lx241_65
                        mov              r9, rax;                             jmp   .Lx241_64
.Lx241_65:              lea              rcx, [rsp + 992]
.Lx241_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx241_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx241_69
                        cmp              esi, 1;                              jne   .Lx241_70
                        mov              rcx, rax;                            jmp   .Lx241_68
.Lx241_70:              cmp              esi, 2;                              jne   .Lx241_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_69
                        mov              rcx, rax;                            jmp   .Lx241_68
.Lx241_71:              cmp              al, 72;                              jne   .Lx241_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx241_69
                        cmp              rax, rcx;                            je    .Lx241_69
                        mov              rcx, rax;                            jmp   .Lx241_68
.Lx241_69:              cmp              r9, rcx;                             je    .Lx241_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx241_75
                        cmp              al, 104;                             je    .Lx241_75
                        cmp              al, 72;                              jne   .Lx241_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_75
                                                                              jmp   .Lx241_72
.Lx241_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx241_76
                        cmp              al, 104;                             je    .Lx241_76
                        cmp              al, 72;                              jne   .Lx241_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx241_76
                                                                              jmp   .Lx241_72
.Lx241_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx241_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx241_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx241_77
.Lx241_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx241_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx241_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx241_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx241_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx241_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 976]
.Lx241_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx241_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_82
                        cmp              esi, 1;                              jne   .Lx241_83
                        mov              r9, rax;                             jmp   .Lx241_81
.Lx241_83:              cmp              esi, 2;                              jne   .Lx241_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_82
                        mov              r9, rax;                             jmp   .Lx241_81
.Lx241_84:              cmp              al, 72;                              jne   .Lx241_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx241_82
                        cmp              rax, r9;                             je    .Lx241_82
                        mov              r9, rax;                             jmp   .Lx241_81
.Lx241_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx241_85
                        cmp              al, 104;                             je    .Lx241_85
                        cmp              al, 72;                              jne   .Lx241_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx241_85
                                                                              jmp   .Lx241_86
.Lx241_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx241_87
.Lx241_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx241_87:              lea              rcx, [rsp + 992]
.Lx241_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx241_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx241_89
                        cmp              esi, 1;                              jne   .Lx241_90
                        mov              rcx, rax;                            jmp   .Lx241_88
.Lx241_90:              cmp              esi, 2;                              jne   .Lx241_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx241_89
                        mov              rcx, rax;                            jmp   .Lx241_88
.Lx241_91:              cmp              al, 72;                              jne   .Lx241_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx241_89
                        cmp              rax, rcx;                            je    .Lx241_89
                        mov              rcx, rax;                            jmp   .Lx241_88
.Lx241_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx241_92
                        cmp              al, 104;                             je    .Lx241_92
                        cmp              al, 72;                              jne   .Lx241_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx241_92
                                                                              jmp   .Lx241_93
.Lx241_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx241_94
.Lx241_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx241_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx241_77
.Lx241_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx241_77
.Lx241_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx241_77:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        mov              r11, 85
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
.Lx246_41:              lea              r9, [rsp + 880]
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
.Lx246_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_var_ref_α
n180_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n183_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              r11, 88
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
.Lx251_41:              lea              r9, [rsp + 800]
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
.Lx251_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_var_α
n183_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 664], rax;          jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 744], rax;          jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             mov              r11, 91
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 760], rax;          jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_call_builtin_prolog_α
n187_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_var_α
n188_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 504], rax;          jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 584], rax;          jmp   n191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 600], rax;          jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_call_builtin_prolog_α
n192_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_prolog_α:
                        mov              r11, 98
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_var_ref_α
n193_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 424], rax;          jmp   n196_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n197_call_builtin_prolog_α
.Lx272_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
                        mov              r11, 102
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_call_builtin_prolog_α
n197_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
                        mov              r11, 103
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_var_ref_α
n198_call_builtin_prolog_β:
                        mov              r11, 103;                            jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n202_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        mov              r11, 107
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 256]
                        lea              rcx, [rsp + 272]
                        call             not_attack$2F3_dcα;                  jmp   .Lx282_2
.Lx282_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx282_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx282_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n205_call_builtin_prolog_α
                                                                              jmp   n203_move_label_α
n202_call_proc_staged_β:
                        mov              r11, 107;                            jmp   n205_call_builtin_prolog_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n203_move_label_α:      mov              r11, 108
                        lea              rax, [rip + n202_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   not_attack$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n204_disjunction_α:     mov              r11, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    not_attack$2F3_ω
                                                                              jmp   rax
n204_disjunction_β:     mov              r11, 109;                            jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   not_attack$2F3_ω
n205_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_β:
                                                                              jmp   n204_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1640]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_dcα:
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
                        add              rsp, 32
                        lea              rcx, [rip + .Lx288_2]
                        lea              rdx, [rip + .Lx288_3];               jmp   FN__not_attack$2F3
.Lx288_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx288_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__queens_2$2F3:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rsp
                        mov              rdi, rsp
                        mov              esi, 1520
                        mov              edx, 1648
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
queens_2$2F3_α_body:
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rsp + 1520], rax
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              r11, 111
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx338_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx338_101
.Lx338_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx338_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx338_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx338_101
.Lx338_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx338_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n292_lit_string_α
.Lx341_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 2
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n293_call_builtin_prolog_α
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        lea              rdi, [rsp + 1424]
                        lea              r8, [rsp + 1424]
.Lx343_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx343_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx343_111
                        cmp              esi, 1;                              jne   .Lx343_112
                        mov              r8, rax;                             jmp   .Lx343_110
.Lx343_112:             cmp              esi, 2;                              jne   .Lx343_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx343_111
                        mov              r8, rax;                             jmp   .Lx343_110
.Lx343_113:             cmp              al, 72;                              jne   .Lx343_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx343_111
                        cmp              rax, r8;                             je    .Lx343_111
                        mov              r8, rax;                             jmp   .Lx343_110
.Lx343_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx343_114
                        cmp              al, 104;                             je    .Lx343_114
                        cmp              al, 72;                              jne   .Lx343_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx343_114
                                                                              jmp   .Lx343_118
.Lx343_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx343_115
                        cmp              al, 3;                               je    .Lx343_114
                        cmp              al, 2;                               jne   .Lx343_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx343_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx343_114
                                                                              jmp   .Lx343_116
.Lx343_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx343_117
.Lx343_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx343_117
.Lx343_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx343_117:             mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n305_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n296_call_builtin_prolog_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_prolog_α:
                        mov              r11, 118
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              rsi, qword ptr [rip + .Lx347_2];     jmp   .Lx347_3
.Lx347_2:               .quad            .Lx347_2_s
.Lx347_2_s:             .string          "[]"
.Lx347_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n304_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n297_var_ref_α
n296_call_builtin_prolog_β:
                        mov              r11, 118;                            jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              r11, 121
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        lea              r8, [rsp + 1264]
.Lx352_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx352_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx352_41
                        cmp              esi, 1;                              jne   .Lx352_55
                        mov              r8, rax;                             jmp   .Lx352_40
.Lx352_55:              cmp              esi, 2;                              jne   .Lx352_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx352_41
                        mov              r8, rax;                             jmp   .Lx352_40
.Lx352_56:              cmp              al, 72;                              jne   .Lx352_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx352_41
                        cmp              rax, r8;                             je    .Lx352_41
                        mov              r8, rax;                             jmp   .Lx352_40
.Lx352_41:              lea              r9, [rsp + 1280]
.Lx352_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx352_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx352_43
                        cmp              esi, 1;                              jne   .Lx352_57
                        mov              r9, rax;                             jmp   .Lx352_42
.Lx352_57:              cmp              esi, 2;                              jne   .Lx352_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx352_43
                        mov              r9, rax;                             jmp   .Lx352_42
.Lx352_58:              cmp              al, 72;                              jne   .Lx352_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx352_43
                        cmp              rax, r9;                             je    .Lx352_43
                        mov              r9, rax;                             jmp   .Lx352_42
.Lx352_43:              cmp              r8, r9;                              je    .Lx352_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx352_44
                        cmp              al, 104;                             je    .Lx352_44
                        cmp              al, 72;                              jne   .Lx352_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx352_44
                                                                              jmp   .Lx352_45
.Lx352_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx352_53
                        cmp              al, 104;                             je    .Lx352_53
                        cmp              al, 72;                              jne   .Lx352_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx352_53
                                                                              jmp   .Lx352_46
.Lx352_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx352_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx352_51
.Lx352_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx352_47
                        cmp              al, 104;                             je    .Lx352_47
                        cmp              al, 72;                              jne   .Lx352_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx352_47
                                                                              jmp   .Lx352_48
.Lx352_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx352_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx352_51
.Lx352_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx352_49
                        cmp              dl, 80;                              je    .Lx352_53
                                                                              jmp   .Lx352_52
.Lx352_49:              cmp              dl, 80;                              je    .Lx352_52
                        cmp              cl, 5;                               je    .Lx352_53
                        cmp              dl, 5;                               je    .Lx352_53
                        cmp              cl, 3;                               jne   .Lx352_50
                        cmp              dl, 3;                               jne   .Lx352_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx352_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx352_51
                                                                              jmp   .Lx352_52
.Lx352_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx352_53
.Lx352_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx352_54
.Lx352_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx352_54
.Lx352_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx352_54:              mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n304_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n300_var_ref_α
n299_call_builtin_prolog_β:
                        mov              r11, 121;                            jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n302_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        lea              r8, [rsp + 1184]
.Lx357_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx357_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx357_41
                        cmp              esi, 1;                              jne   .Lx357_55
                        mov              r8, rax;                             jmp   .Lx357_40
.Lx357_55:              cmp              esi, 2;                              jne   .Lx357_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx357_41
                        mov              r8, rax;                             jmp   .Lx357_40
.Lx357_56:              cmp              al, 72;                              jne   .Lx357_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx357_41
                        cmp              rax, r8;                             je    .Lx357_41
                        mov              r8, rax;                             jmp   .Lx357_40
.Lx357_41:              lea              r9, [rsp + 1200]
.Lx357_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx357_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx357_43
                        cmp              esi, 1;                              jne   .Lx357_57
                        mov              r9, rax;                             jmp   .Lx357_42
.Lx357_57:              cmp              esi, 2;                              jne   .Lx357_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx357_43
                        mov              r9, rax;                             jmp   .Lx357_42
.Lx357_58:              cmp              al, 72;                              jne   .Lx357_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx357_43
                        cmp              rax, r9;                             je    .Lx357_43
                        mov              r9, rax;                             jmp   .Lx357_42
.Lx357_43:              cmp              r8, r9;                              je    .Lx357_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx357_44
                        cmp              al, 104;                             je    .Lx357_44
                        cmp              al, 72;                              jne   .Lx357_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx357_44
                                                                              jmp   .Lx357_45
.Lx357_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx357_53
                        cmp              al, 104;                             je    .Lx357_53
                        cmp              al, 72;                              jne   .Lx357_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx357_53
                                                                              jmp   .Lx357_46
.Lx357_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx357_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx357_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx357_51
.Lx357_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx357_47
                        cmp              al, 104;                             je    .Lx357_47
                        cmp              al, 72;                              jne   .Lx357_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx357_47
                                                                              jmp   .Lx357_48
.Lx357_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx357_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx357_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx357_51
.Lx357_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx357_49
                        cmp              dl, 80;                              je    .Lx357_53
                                                                              jmp   .Lx357_52
.Lx357_49:              cmp              dl, 80;                              je    .Lx357_52
                        cmp              cl, 5;                               je    .Lx357_53
                        cmp              dl, 5;                               je    .Lx357_53
                        cmp              cl, 3;                               jne   .Lx357_50
                        cmp              dl, 3;                               jne   .Lx357_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx357_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx357_51
                                                                              jmp   .Lx357_52
.Lx357_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx357_53
.Lx357_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx357_54
.Lx357_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx357_54
.Lx357_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx357_54:              mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n304_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n303_suspend_α
n302_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n303_suspend_α:         mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx359_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1520];         jmp   rax
.Lx359_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n303_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens_2$2F3_γ
n303_suspend_β:         mov              r11, 125;                            jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              r11, 126
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_var_ref_α
n304_call_builtin_prolog_β:
                        mov              r11, 126;                            jmp   queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n306_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n307_lit_integer_α
.Lx363_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n308_call_builtin_prolog_α
.Lx364_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              r11, 130
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
.Lx365_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx365_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx365_111
                        cmp              esi, 1;                              jne   .Lx365_112
                        mov              r8, rax;                             jmp   .Lx365_110
.Lx365_112:             cmp              esi, 2;                              jne   .Lx365_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx365_111
                        mov              r8, rax;                             jmp   .Lx365_110
.Lx365_113:             cmp              al, 72;                              jne   .Lx365_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx365_111
                        cmp              rax, r8;                             je    .Lx365_111
                        mov              r8, rax;                             jmp   .Lx365_110
.Lx365_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx365_114
                        cmp              al, 104;                             je    .Lx365_114
                        cmp              al, 72;                              jne   .Lx365_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx365_114
                                                                              jmp   .Lx365_118
.Lx365_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx365_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx365_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx365_115
                                                                              jmp   .Lx365_114
.Lx365_119:             cmp              al, 3;                               jne   .Lx365_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx365_114
                                                                              jmp   .Lx365_115
.Lx365_120:             cmp              al, 2;                               jne   .Lx365_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx365_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx365_114
                                                                              jmp   .Lx365_115
.Lx365_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx365_117
.Lx365_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx365_117
.Lx365_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx365_117:             mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n309_var_ref_α
n308_call_builtin_prolog_β:
                        mov              r11, 130;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n312_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
                        mov              r11, 134
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
.Lx372_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx372_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx372_61
                        cmp              esi, 1;                              jne   .Lx372_62
                        mov              r8, rax;                             jmp   .Lx372_60
.Lx372_62:              cmp              esi, 2;                              jne   .Lx372_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_61
                        mov              r8, rax;                             jmp   .Lx372_60
.Lx372_63:              cmp              al, 72;                              jne   .Lx372_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx372_61
                        cmp              rax, r8;                             je    .Lx372_61
                        mov              r8, rax;                             jmp   .Lx372_60
.Lx372_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx372_80
                        cmp              al, 104;                             je    .Lx372_80
                        cmp              al, 72;                              jne   .Lx372_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx372_80
                                                                              jmp   .Lx372_74
.Lx372_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx372_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx372_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx372_73
                        lea              r9, [rsp + 944]
.Lx372_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx372_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_65
                        cmp              esi, 1;                              jne   .Lx372_66
                        mov              r9, rax;                             jmp   .Lx372_64
.Lx372_66:              cmp              esi, 2;                              jne   .Lx372_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_65
                        mov              r9, rax;                             jmp   .Lx372_64
.Lx372_67:              cmp              al, 72;                              jne   .Lx372_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_65
                        cmp              rax, r9;                             je    .Lx372_65
                        mov              r9, rax;                             jmp   .Lx372_64
.Lx372_65:              lea              rcx, [rsp + 960]
.Lx372_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx372_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx372_69
                        cmp              esi, 1;                              jne   .Lx372_70
                        mov              rcx, rax;                            jmp   .Lx372_68
.Lx372_70:              cmp              esi, 2;                              jne   .Lx372_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_69
                        mov              rcx, rax;                            jmp   .Lx372_68
.Lx372_71:              cmp              al, 72;                              jne   .Lx372_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx372_69
                        cmp              rax, rcx;                            je    .Lx372_69
                        mov              rcx, rax;                            jmp   .Lx372_68
.Lx372_69:              cmp              r9, rcx;                             je    .Lx372_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx372_75
                        cmp              al, 104;                             je    .Lx372_75
                        cmp              al, 72;                              jne   .Lx372_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx372_75
                                                                              jmp   .Lx372_72
.Lx372_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx372_76
                        cmp              al, 104;                             je    .Lx372_76
                        cmp              al, 72;                              jne   .Lx372_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx372_76
                                                                              jmp   .Lx372_72
.Lx372_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx372_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx372_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx372_77
.Lx372_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx372_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx372_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx372_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx372_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx372_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 944]
.Lx372_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx372_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_82
                        cmp              esi, 1;                              jne   .Lx372_83
                        mov              r9, rax;                             jmp   .Lx372_81
.Lx372_83:              cmp              esi, 2;                              jne   .Lx372_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_82
                        mov              r9, rax;                             jmp   .Lx372_81
.Lx372_84:              cmp              al, 72;                              jne   .Lx372_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx372_82
                        cmp              rax, r9;                             je    .Lx372_82
                        mov              r9, rax;                             jmp   .Lx372_81
.Lx372_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx372_85
                        cmp              al, 104;                             je    .Lx372_85
                        cmp              al, 72;                              jne   .Lx372_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx372_85
                                                                              jmp   .Lx372_86
.Lx372_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx372_87
.Lx372_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx372_87:              lea              rcx, [rsp + 960]
.Lx372_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx372_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx372_89
                        cmp              esi, 1;                              jne   .Lx372_90
                        mov              rcx, rax;                            jmp   .Lx372_88
.Lx372_90:              cmp              esi, 2;                              jne   .Lx372_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx372_89
                        mov              rcx, rax;                            jmp   .Lx372_88
.Lx372_91:              cmp              al, 72;                              jne   .Lx372_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx372_89
                        cmp              rax, rcx;                            je    .Lx372_89
                        mov              rcx, rax;                            jmp   .Lx372_88
.Lx372_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx372_92
                        cmp              al, 104;                             je    .Lx372_92
                        cmp              al, 72;                              jne   .Lx372_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx372_92
                                                                              jmp   .Lx372_93
.Lx372_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx372_94
.Lx372_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx372_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx372_77
.Lx372_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx372_77
.Lx372_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx372_77:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n313_var_ref_α
n312_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              r11, 137
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
.Lx377_41:              lea              r9, [rsp + 848]
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx377_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx377_51
.Lx377_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx377_47
                        cmp              al, 104;                             je    .Lx377_47
                        cmp              al, 72;                              jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx377_47
                                                                              jmp   .Lx377_48
.Lx377_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx377_53
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx377_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n316_var_ref_α
n315_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n318_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              r11, 140
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
.Lx382_41:              lea              r9, [rsp + 768]
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx382_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx382_51
.Lx382_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_47
                        cmp              al, 104;                             je    .Lx382_47
                        cmp              al, 72;                              jne   .Lx382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_47
                                                                              jmp   .Lx382_48
.Lx382_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx382_53
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx382_54:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n319_var_ref_α
n318_call_builtin_prolog_β:
                        mov              r11, 140;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n321_var_ref_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n322_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n323_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n324_var_ref_α
n323_call_builtin_prolog_β:
                        mov              r11, 145;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n325_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        mov              r11, 147
                        mov              qword ptr [rsp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx394_20
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx394_21
.Lx394_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx394_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx394_22
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx394_23
.Lx394_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx394_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx394_24
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx394_25
.Lx394_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx394_25:              lea              rax, [rip + .Lx394_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx394_1
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4];               jmp   rax
.Lx394_3:               mov              qword ptr [rsp + 552], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx394_5
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx394_2
.Lx394_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx394_2
.Lx394_4:               mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx394_6
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx394_2
.Lx394_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx394_2
.Lx394_1:               call             rt_faildescr@PLT
.Lx394_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx394_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lx394_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                                                                              jmp   n326_var_ref_α
n325_call_proc_staged_β:
                        mov              r11, 147
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 544], 0
                        lea              rdi, [rsp + 560]
                        lea              rsi, [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n337_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              ecx, 64
                        mov              r8d, 896
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n337_call_builtin_prolog_α
                        lea              r8, [rip + .Lx394_7]
                        push             r8
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4];               jmp   rax
.Lx394_7:               add              rsp, 8
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                                                                              jmp   n326_var_ref_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n328_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_proc_staged_α:
                        mov              r11, 150
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 464]
                        call             not_attack$2F2_dcα;                  jmp   .Lx400_2
.Lx400_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx400_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx400_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n329_var_ref_α
n328_call_proc_staged_β:
                        mov              r11, 150;                            jmp   n325_call_proc_staged_β
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "not_attack/2"
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n331_var_ref_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n333_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_prolog_α:
                        mov              r11, 155
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n334_var_ref_α
n333_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n335_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        mov              r11, 157
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx412_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx412_21
.Lx412_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx412_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx412_22
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx412_23
.Lx412_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx412_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx412_24
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx412_25
.Lx412_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx412_25:              lea              rax, [rip + .Lx412_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx412_1
                        lea              rcx, [rip + .Lx412_3]
                        lea              rdx, [rip + .Lx412_4];               jmp   rax
.Lx412_3:               mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx412_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx412_2
.Lx412_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx412_2
.Lx412_4:               mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx412_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx412_2
.Lx412_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx412_2
.Lx412_1:               call             rt_faildescr@PLT
.Lx412_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx412_29
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
.Lx412_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n328_call_proc_staged_β
                                                                              jmp   n336_suspend_α
n335_call_proc_staged_β:
                        mov              r11, 157
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n328_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1520
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n328_call_proc_staged_β
                        lea              r8, [rip + .Lx412_7]
                        push             r8
                        lea              rcx, [rip + .Lx412_3]
                        lea              rdx, [rip + .Lx412_4];               jmp   rax
.Lx412_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n328_call_proc_staged_β
                                                                              jmp   n336_suspend_α
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "queens_2/3"
#-----------------------------------------------------------------------------------------------------------------------
n336_suspend_α:         mov              r11, 158
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx414_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1520];         jmp   rax
.Lx414_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n336_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n336_suspend_β]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens_2$2F3_γ
n336_suspend_β:         mov              r11, 158;                            jmp   n335_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              r11, 159
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   queens_2$2F3_ω
n337_call_builtin_prolog_β:
                        mov              r11, 159;                            jmp   queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_β:
                                                                              jmp   n303_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx415_50
                        mov              qword ptr [rsp + 1520], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1520];         jmp   rax
.Lx415_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1656]
                        add              rsp, 1680;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_ω:
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
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1232
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        mov              r11, 160
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx451_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx451_101
.Lx451_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx451_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx451_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx451_101
.Lx451_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx451_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n417_lit_string_α
n416_call_builtin_prolog_β:
                        mov              r11, 160;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n418_lit_integer_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n419_lit_string_α
.Lx453_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n420_lit_integer_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n421_lit_string_α
.Lx455_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n422_lit_integer_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n423_lit_string_α
.Lx457_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n424_lit_integer_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n425_lit_string_α
.Lx459_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n426_lit_integer_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n427_lit_string_α
.Lx461_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n428_lit_integer_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n429_lit_string_α
.Lx463_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n430_lit_integer_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n431_lit_string_α
.Lx465_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n432_lit_integer_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n433_lit_string_α
.Lx467_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 2
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n434_call_builtin_prolog_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 178
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n435_call_builtin_prolog_α
n434_call_builtin_prolog_β:
                        mov              r11, 178;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        mov              r11, 179
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n436_call_builtin_prolog_α
n435_call_builtin_prolog_β:
                        mov              r11, 179;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              r11, 180
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              r11, 181
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                        mov              r11, 181;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              r11, 182
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              r11, 183
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n440_call_builtin_prolog_α
n439_call_builtin_prolog_β:
                        mov              r11, 183;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              r11, 184
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n441_call_builtin_prolog_α
n440_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              r11, 185
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n450_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   n450_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        mov              r11, 187
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx480_20
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx480_21
.Lx480_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx480_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx480_22
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx480_23
.Lx480_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx480_23:              lea              rax, [rip + .Lx480_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx480_1
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4];               jmp   rax
.Lx480_3:               mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx480_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx480_2
.Lx480_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx480_2
.Lx480_4:               mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx480_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx480_2
.Lx480_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx480_2
.Lx480_1:               call             rt_faildescr@PLT
.Lx480_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx480_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx480_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n450_call_builtin_prolog_α
                                                                              jmp   n444_var_α
n443_call_proc_staged_β:
                        mov              r11, 187
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 240], 0
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n450_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 48
                        mov              r8d, 416
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n450_call_builtin_prolog_α
                        lea              r8, [rip + .Lx480_7]
                        push             r8
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4];               jmp   rax
.Lx480_7:               add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n450_call_builtin_prolog_α
                                                                              jmp   n444_var_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "queens/2"
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 184], rax;          jmp   n445_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn484:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n443_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n446_lit_string_α
n445_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   n443_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n447_call_builtin_prolog_α
.Lx485_0:               .quad            .Lx485_0_s
.Lx485_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              r11, 191
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn487:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn487]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n443_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n448_move_label_α
n447_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n443_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n448_move_label_α:      mov              r11, 192
                        lea              rax, [rip + n443_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n449_disjunction_α:     mov              r11, 193
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n449_disjunction_β:     mov              r11, 193;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              r11, 194
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
n450_call_builtin_prolog_β:
                        mov              r11, 194;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n449_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
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
                        .long            992
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__queens$2F2
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
.Lstartup_pname2:       .string          "not_attack/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__not_attack$2F2
                        .quad            not_attack$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            464
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "not_attack/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__not_attack$2F3
                        .quad            not_attack$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1616
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "queens_2/3"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__queens_2$2F3
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
