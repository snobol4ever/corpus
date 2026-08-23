                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__differ$2F3:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1360
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
differ$2F3_α_body:
                        lea              rax, [rip + n43_suspend_β]
                        mov              qword ptr [rsp + 1248], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx45_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx45_101
.Lx45_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx45_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx45_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx45_101
.Lx45_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx45_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    differ$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
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
.Lx50_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx50_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_41
                        cmp              esi, 1;                              jne   .Lx50_55
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_55:               cmp              esi, 2;                              jne   .Lx50_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_41
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_56:               cmp              al, 72;                              jne   .Lx50_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_41
                        cmp              rax, r8;                             je    .Lx50_41
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_41:               lea              r9, [rsp + 1200]
.Lx50_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx50_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_43
                        cmp              esi, 1;                              jne   .Lx50_57
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_57:               cmp              esi, 2;                              jne   .Lx50_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_43
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_58:               cmp              al, 72;                              jne   .Lx50_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_43
                        cmp              rax, r9;                             je    .Lx50_43
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_43:               cmp              r8, r9;                              je    .Lx50_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx50_44
                        cmp              al, 104;                             je    .Lx50_44
                        cmp              al, 72;                              jne   .Lx50_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx50_44
                                                                              jmp   .Lx50_45
.Lx50_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_53
                        cmp              al, 104;                             je    .Lx50_53
                        cmp              al, 72;                              jne   .Lx50_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_53
                                                                              jmp   .Lx50_46
.Lx50_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx50_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx50_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx50_51
.Lx50_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_47
                        cmp              al, 104;                             je    .Lx50_47
                        cmp              al, 72;                              jne   .Lx50_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_47
                                                                              jmp   .Lx50_48
.Lx50_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx50_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx50_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx50_51
.Lx50_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx50_49
                        cmp              dl, 80;                              je    .Lx50_53
                                                                              jmp   .Lx50_52
.Lx50_49:               cmp              dl, 80;                              je    .Lx50_52
                        cmp              cl, 5;                               je    .Lx50_53
                        cmp              dl, 5;                               je    .Lx50_53
                        cmp              cl, 3;                               jne   .Lx50_50
                        cmp              dl, 3;                               jne   .Lx50_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx50_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx50_51
                                                                              jmp   .Lx50_52
.Lx50_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx50_53
.Lx50_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx50_54
.Lx50_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx50_54
.Lx50_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx50_54:               mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n11_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        lea              r8, [rsp + 1104]
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
.Lx55_41:               lea              r9, [rsp + 1120]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx55_51
.Lx55_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx55_47
                        cmp              al, 104;                             je    .Lx55_47
                        cmp              al, 72;                              jne   .Lx55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx55_47
                                                                              jmp   .Lx55_48
.Lx55_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
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
.Lx55_54:               mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n11_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
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
.Lx60_41:               lea              r9, [rsp + 1040]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx60_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx60_51
.Lx60_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx60_47
                        cmp              al, 104;                             je    .Lx60_47
                        cmp              al, 72;                              jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx60_47
                                                                              jmp   .Lx60_48
.Lx60_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx60_53
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
.Lx60_54:               mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n11_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_cut_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_cut_α:              mov              r11, 11;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    differ$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
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
.Lx67_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx67_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx67_41
                        cmp              esi, 1;                              jne   .Lx67_55
                        mov              r8, rax;                             jmp   .Lx67_40
.Lx67_55:               cmp              esi, 2;                              jne   .Lx67_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx67_41
                        mov              r8, rax;                             jmp   .Lx67_40
.Lx67_56:               cmp              al, 72;                              jne   .Lx67_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx67_41
                        cmp              rax, r8;                             je    .Lx67_41
                        mov              r8, rax;                             jmp   .Lx67_40
.Lx67_41:               lea              r9, [rsp + 912]
.Lx67_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx67_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx67_43
                        cmp              esi, 1;                              jne   .Lx67_57
                        mov              r9, rax;                             jmp   .Lx67_42
.Lx67_57:               cmp              esi, 2;                              jne   .Lx67_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx67_43
                        mov              r9, rax;                             jmp   .Lx67_42
.Lx67_58:               cmp              al, 72;                              jne   .Lx67_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx67_43
                        cmp              rax, r9;                             je    .Lx67_43
                        mov              r9, rax;                             jmp   .Lx67_42
.Lx67_43:               cmp              r8, r9;                              je    .Lx67_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx67_44
                        cmp              al, 104;                             je    .Lx67_44
                        cmp              al, 72;                              jne   .Lx67_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx67_44
                                                                              jmp   .Lx67_45
.Lx67_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx67_53
                        cmp              al, 104;                             je    .Lx67_53
                        cmp              al, 72;                              jne   .Lx67_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx67_53
                                                                              jmp   .Lx67_46
.Lx67_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx67_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx67_51
.Lx67_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx67_47
                        cmp              al, 104;                             je    .Lx67_47
                        cmp              al, 72;                              jne   .Lx67_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx67_47
                                                                              jmp   .Lx67_48
.Lx67_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx67_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx67_51
.Lx67_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx67_49
                        cmp              dl, 80;                              je    .Lx67_53
                                                                              jmp   .Lx67_52
.Lx67_49:               cmp              dl, 80;                              je    .Lx67_52
                        cmp              cl, 5;                               je    .Lx67_53
                        cmp              dl, 5;                               je    .Lx67_53
                        cmp              cl, 3;                               jne   .Lx67_50
                        cmp              dl, 3;                               jne   .Lx67_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx67_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx67_51
                                                                              jmp   .Lx67_52
.Lx67_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx67_53
.Lx67_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx67_54
.Lx67_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx67_54
.Lx67_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx67_54:               mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n22_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
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
.Lx72_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx72_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx72_41
                        cmp              esi, 1;                              jne   .Lx72_55
                        mov              r8, rax;                             jmp   .Lx72_40
.Lx72_55:               cmp              esi, 2;                              jne   .Lx72_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx72_41
                        mov              r8, rax;                             jmp   .Lx72_40
.Lx72_56:               cmp              al, 72;                              jne   .Lx72_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx72_41
                        cmp              rax, r8;                             je    .Lx72_41
                        mov              r8, rax;                             jmp   .Lx72_40
.Lx72_41:               lea              r9, [rsp + 832]
.Lx72_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx72_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx72_43
                        cmp              esi, 1;                              jne   .Lx72_57
                        mov              r9, rax;                             jmp   .Lx72_42
.Lx72_57:               cmp              esi, 2;                              jne   .Lx72_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx72_43
                        mov              r9, rax;                             jmp   .Lx72_42
.Lx72_58:               cmp              al, 72;                              jne   .Lx72_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx72_43
                        cmp              rax, r9;                             je    .Lx72_43
                        mov              r9, rax;                             jmp   .Lx72_42
.Lx72_43:               cmp              r8, r9;                              je    .Lx72_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx72_44
                        cmp              al, 104;                             je    .Lx72_44
                        cmp              al, 72;                              jne   .Lx72_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx72_44
                                                                              jmp   .Lx72_45
.Lx72_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx72_53
                        cmp              al, 104;                             je    .Lx72_53
                        cmp              al, 72;                              jne   .Lx72_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx72_53
                                                                              jmp   .Lx72_46
.Lx72_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx72_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx72_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx72_51
.Lx72_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx72_47
                        cmp              al, 104;                             je    .Lx72_47
                        cmp              al, 72;                              jne   .Lx72_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx72_47
                                                                              jmp   .Lx72_48
.Lx72_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx72_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx72_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx72_51
.Lx72_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx72_49
                        cmp              dl, 80;                              je    .Lx72_53
                                                                              jmp   .Lx72_52
.Lx72_49:               cmp              dl, 80;                              je    .Lx72_52
                        cmp              cl, 5;                               je    .Lx72_53
                        cmp              dl, 5;                               je    .Lx72_53
                        cmp              cl, 3;                               jne   .Lx72_50
                        cmp              dl, 3;                               jne   .Lx72_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx72_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx72_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx72_51
                                                                              jmp   .Lx72_52
.Lx72_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx72_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx72_53
.Lx72_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx72_54
.Lx72_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx72_54
.Lx72_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx72_54:               mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n22_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
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
.Lx77_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx77_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx77_41
                        cmp              esi, 1;                              jne   .Lx77_55
                        mov              r8, rax;                             jmp   .Lx77_40
.Lx77_55:               cmp              esi, 2;                              jne   .Lx77_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx77_41
                        mov              r8, rax;                             jmp   .Lx77_40
.Lx77_56:               cmp              al, 72;                              jne   .Lx77_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx77_41
                        cmp              rax, r8;                             je    .Lx77_41
                        mov              r8, rax;                             jmp   .Lx77_40
.Lx77_41:               lea              r9, [rsp + 752]
.Lx77_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx77_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx77_43
                        cmp              esi, 1;                              jne   .Lx77_57
                        mov              r9, rax;                             jmp   .Lx77_42
.Lx77_57:               cmp              esi, 2;                              jne   .Lx77_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx77_43
                        mov              r9, rax;                             jmp   .Lx77_42
.Lx77_58:               cmp              al, 72;                              jne   .Lx77_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx77_43
                        cmp              rax, r9;                             je    .Lx77_43
                        mov              r9, rax;                             jmp   .Lx77_42
.Lx77_43:               cmp              r8, r9;                              je    .Lx77_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx77_44
                        cmp              al, 104;                             je    .Lx77_44
                        cmp              al, 72;                              jne   .Lx77_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx77_44
                                                                              jmp   .Lx77_45
.Lx77_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx77_53
                        cmp              al, 104;                             je    .Lx77_53
                        cmp              al, 72;                              jne   .Lx77_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx77_53
                                                                              jmp   .Lx77_46
.Lx77_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx77_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx77_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx77_51
.Lx77_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx77_47
                        cmp              al, 104;                             je    .Lx77_47
                        cmp              al, 72;                              jne   .Lx77_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx77_47
                                                                              jmp   .Lx77_48
.Lx77_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx77_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx77_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx77_51
.Lx77_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx77_49
                        cmp              dl, 80;                              je    .Lx77_53
                                                                              jmp   .Lx77_52
.Lx77_49:               cmp              dl, 80;                              je    .Lx77_52
                        cmp              cl, 5;                               je    .Lx77_53
                        cmp              dl, 5;                               je    .Lx77_53
                        cmp              cl, 3;                               jne   .Lx77_50
                        cmp              dl, 3;                               jne   .Lx77_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx77_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx77_51
                                                                              jmp   .Lx77_52
.Lx77_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx77_53
.Lx77_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx77_54
.Lx77_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx77_54
.Lx77_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx77_54:               mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n22_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_cut_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_cut_α:              mov              r11, 22;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    differ$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_var_ref_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
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
.Lx84_41:               lea              r9, [rsp + 624]
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
.Lx84_54:               mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_var_ref_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
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
.Lx89_41:               lea              r9, [rsp + 544]
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
.Lx89_54:               mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
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
.Lx94_41:               lea              r9, [rsp + 464]
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
.Lx94_54:               mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n33_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_cut_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_cut_α:              mov              r11, 33;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    differ$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
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
.Lx101_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx101_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx101_41
                        cmp              esi, 1;                              jne   .Lx101_55
                        mov              r8, rax;                             jmp   .Lx101_40
.Lx101_55:              cmp              esi, 2;                              jne   .Lx101_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx101_41
                        mov              r8, rax;                             jmp   .Lx101_40
.Lx101_56:              cmp              al, 72;                              jne   .Lx101_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx101_41
                        cmp              rax, r8;                             je    .Lx101_41
                        mov              r8, rax;                             jmp   .Lx101_40
.Lx101_41:              lea              r9, [rsp + 336]
.Lx101_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx101_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx101_43
                        cmp              esi, 1;                              jne   .Lx101_57
                        mov              r9, rax;                             jmp   .Lx101_42
.Lx101_57:              cmp              esi, 2;                              jne   .Lx101_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx101_43
                        mov              r9, rax;                             jmp   .Lx101_42
.Lx101_58:              cmp              al, 72;                              jne   .Lx101_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx101_43
                        cmp              rax, r9;                             je    .Lx101_43
                        mov              r9, rax;                             jmp   .Lx101_42
.Lx101_43:              cmp              r8, r9;                              je    .Lx101_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx101_44
                        cmp              al, 104;                             je    .Lx101_44
                        cmp              al, 72;                              jne   .Lx101_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx101_44
                                                                              jmp   .Lx101_45
.Lx101_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx101_53
                        cmp              al, 104;                             je    .Lx101_53
                        cmp              al, 72;                              jne   .Lx101_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx101_53
                                                                              jmp   .Lx101_46
.Lx101_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx101_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx101_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx101_51
.Lx101_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx101_47
                        cmp              al, 104;                             je    .Lx101_47
                        cmp              al, 72;                              jne   .Lx101_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx101_47
                                                                              jmp   .Lx101_48
.Lx101_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx101_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx101_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx101_51
.Lx101_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx101_49
                        cmp              dl, 80;                              je    .Lx101_53
                                                                              jmp   .Lx101_52
.Lx101_49:              cmp              dl, 80;                              je    .Lx101_52
                        cmp              cl, 5;                               je    .Lx101_53
                        cmp              dl, 5;                               je    .Lx101_53
                        cmp              cl, 3;                               jne   .Lx101_50
                        cmp              dl, 3;                               jne   .Lx101_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx101_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx101_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx101_51
                                                                              jmp   .Lx101_52
.Lx101_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx101_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx101_53
.Lx101_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx101_54
.Lx101_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx101_54
.Lx101_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx101_54:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_var_ref_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
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
.Lx106_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx106_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx106_41
                        cmp              esi, 1;                              jne   .Lx106_55
                        mov              r8, rax;                             jmp   .Lx106_40
.Lx106_55:              cmp              esi, 2;                              jne   .Lx106_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx106_41
                        mov              r8, rax;                             jmp   .Lx106_40
.Lx106_56:              cmp              al, 72;                              jne   .Lx106_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx106_41
                        cmp              rax, r8;                             je    .Lx106_41
                        mov              r8, rax;                             jmp   .Lx106_40
.Lx106_41:              lea              r9, [rsp + 256]
.Lx106_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx106_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx106_43
                        cmp              esi, 1;                              jne   .Lx106_57
                        mov              r9, rax;                             jmp   .Lx106_42
.Lx106_57:              cmp              esi, 2;                              jne   .Lx106_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx106_43
                        mov              r9, rax;                             jmp   .Lx106_42
.Lx106_58:              cmp              al, 72;                              jne   .Lx106_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx106_43
                        cmp              rax, r9;                             je    .Lx106_43
                        mov              r9, rax;                             jmp   .Lx106_42
.Lx106_43:              cmp              r8, r9;                              je    .Lx106_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx106_44
                        cmp              al, 104;                             je    .Lx106_44
                        cmp              al, 72;                              jne   .Lx106_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx106_44
                                                                              jmp   .Lx106_45
.Lx106_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx106_53
                        cmp              al, 104;                             je    .Lx106_53
                        cmp              al, 72;                              jne   .Lx106_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx106_53
                                                                              jmp   .Lx106_46
.Lx106_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx106_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx106_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx106_51
.Lx106_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx106_47
                        cmp              al, 104;                             je    .Lx106_47
                        cmp              al, 72;                              jne   .Lx106_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx106_47
                                                                              jmp   .Lx106_48
.Lx106_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx106_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx106_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx106_51
.Lx106_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx106_49
                        cmp              dl, 80;                              je    .Lx106_53
                                                                              jmp   .Lx106_52
.Lx106_49:              cmp              dl, 80;                              je    .Lx106_52
                        cmp              cl, 5;                               je    .Lx106_53
                        cmp              dl, 5;                               je    .Lx106_53
                        cmp              cl, 3;                               jne   .Lx106_50
                        cmp              dl, 3;                               jne   .Lx106_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx106_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx106_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx106_51
                                                                              jmp   .Lx106_52
.Lx106_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx106_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx106_53
.Lx106_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx106_54
.Lx106_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx106_54
.Lx106_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx106_54:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_var_ref_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 43
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
.Lx111_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx111_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx111_41
                        cmp              esi, 1;                              jne   .Lx111_55
                        mov              r8, rax;                             jmp   .Lx111_40
.Lx111_55:              cmp              esi, 2;                              jne   .Lx111_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx111_41
                        mov              r8, rax;                             jmp   .Lx111_40
.Lx111_56:              cmp              al, 72;                              jne   .Lx111_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx111_41
                        cmp              rax, r8;                             je    .Lx111_41
                        mov              r8, rax;                             jmp   .Lx111_40
.Lx111_41:              lea              r9, [rsp + 176]
.Lx111_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx111_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx111_43
                        cmp              esi, 1;                              jne   .Lx111_57
                        mov              r9, rax;                             jmp   .Lx111_42
.Lx111_57:              cmp              esi, 2;                              jne   .Lx111_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx111_43
                        mov              r9, rax;                             jmp   .Lx111_42
.Lx111_58:              cmp              al, 72;                              jne   .Lx111_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx111_43
                        cmp              rax, r9;                             je    .Lx111_43
                        mov              r9, rax;                             jmp   .Lx111_42
.Lx111_43:              cmp              r8, r9;                              je    .Lx111_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx111_44
                        cmp              al, 104;                             je    .Lx111_44
                        cmp              al, 72;                              jne   .Lx111_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx111_44
                                                                              jmp   .Lx111_45
.Lx111_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx111_53
                        cmp              al, 104;                             je    .Lx111_53
                        cmp              al, 72;                              jne   .Lx111_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx111_53
                                                                              jmp   .Lx111_46
.Lx111_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx111_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx111_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx111_51
.Lx111_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx111_47
                        cmp              al, 104;                             je    .Lx111_47
                        cmp              al, 72;                              jne   .Lx111_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx111_47
                                                                              jmp   .Lx111_48
.Lx111_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx111_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx111_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx111_51
.Lx111_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx111_49
                        cmp              dl, 80;                              je    .Lx111_53
                                                                              jmp   .Lx111_52
.Lx111_49:              cmp              dl, 80;                              je    .Lx111_52
                        cmp              cl, 5;                               je    .Lx111_53
                        cmp              dl, 5;                               je    .Lx111_53
                        cmp              cl, 3;                               jne   .Lx111_50
                        cmp              dl, 3;                               jne   .Lx111_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx111_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx111_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx111_51
                                                                              jmp   .Lx111_52
.Lx111_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx111_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx111_53
.Lx111_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx111_54
.Lx111_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx111_54
.Lx111_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx111_54:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_suspend_α
n42_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_suspend_α:          mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx113_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248];         jmp   rax
.Lx113_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n43_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n43_suspend_β]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   differ$2F3_γ
n43_suspend_β:          mov              r11, 44;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
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
                        cmp              al, 104;                             je    differ$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   differ$2F3_ω
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
differ$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
differ$2F3_β:
                                                                              jmp   n43_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
differ$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx114_50
                        mov              qword ptr [rsp + 1248], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248];         jmp   rax
.Lx114_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1368]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
differ$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1376]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__write_occ$2F5:
                        sub              rsp, 2064
                        mov              qword ptr [rsp + 2040], rcx
                        mov              qword ptr [rsp + 2048], rdx
                        mov              qword ptr [rsp + 2056], rsp
                        mov              rdi, rsp
                        mov              esi, 1904
                        mov              edx, 2032
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
write_occ$2F5_α_body:
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rsp + 1904], rax
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 46
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx185_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx185_101
.Lx185_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx185_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx185_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx185_101
.Lx185_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    write_occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2000]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        lea              rdi, [rsp + 1840]
                        lea              r8, [rsp + 1840]
.Lx190_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx190_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx190_41
                        cmp              esi, 1;                              jne   .Lx190_55
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_55:              cmp              esi, 2;                              jne   .Lx190_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx190_41
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_56:              cmp              al, 72;                              jne   .Lx190_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx190_41
                        cmp              rax, r8;                             je    .Lx190_41
                        mov              r8, rax;                             jmp   .Lx190_40
.Lx190_41:              lea              r9, [rsp + 1856]
.Lx190_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx190_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx190_43
                        cmp              esi, 1;                              jne   .Lx190_57
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_57:              cmp              esi, 2;                              jne   .Lx190_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx190_43
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_58:              cmp              al, 72;                              jne   .Lx190_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx190_43
                        cmp              rax, r9;                             je    .Lx190_43
                        mov              r9, rax;                             jmp   .Lx190_42
.Lx190_43:              cmp              r8, r9;                              je    .Lx190_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx190_44
                        cmp              al, 104;                             je    .Lx190_44
                        cmp              al, 72;                              jne   .Lx190_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx190_44
                                                                              jmp   .Lx190_45
.Lx190_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx190_53
                        cmp              al, 104;                             je    .Lx190_53
                        cmp              al, 72;                              jne   .Lx190_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx190_53
                                                                              jmp   .Lx190_46
.Lx190_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx190_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx190_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx190_51
.Lx190_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx190_47
                        cmp              al, 104;                             je    .Lx190_47
                        cmp              al, 72;                              jne   .Lx190_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx190_47
                                                                              jmp   .Lx190_48
.Lx190_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx190_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx190_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx190_51
.Lx190_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx190_49
                        cmp              dl, 80;                              je    .Lx190_53
                                                                              jmp   .Lx190_52
.Lx190_49:              cmp              dl, 80;                              je    .Lx190_52
                        cmp              cl, 5;                               je    .Lx190_53
                        cmp              dl, 5;                               je    .Lx190_53
                        cmp              cl, 3;                               jne   .Lx190_50
                        cmp              dl, 3;                               jne   .Lx190_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx190_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx190_51
                                                                              jmp   .Lx190_52
.Lx190_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx190_53
.Lx190_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx190_54
.Lx190_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx190_54
.Lx190_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx190_54:              mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        lea              r8, [rsp + 1760]
.Lx195_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx195_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx195_41
                        cmp              esi, 1;                              jne   .Lx195_55
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_55:              cmp              esi, 2;                              jne   .Lx195_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx195_41
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_56:              cmp              al, 72;                              jne   .Lx195_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx195_41
                        cmp              rax, r8;                             je    .Lx195_41
                        mov              r8, rax;                             jmp   .Lx195_40
.Lx195_41:              lea              r9, [rsp + 1776]
.Lx195_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx195_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx195_43
                        cmp              esi, 1;                              jne   .Lx195_57
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_57:              cmp              esi, 2;                              jne   .Lx195_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx195_43
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_58:              cmp              al, 72;                              jne   .Lx195_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx195_43
                        cmp              rax, r9;                             je    .Lx195_43
                        mov              r9, rax;                             jmp   .Lx195_42
.Lx195_43:              cmp              r8, r9;                              je    .Lx195_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx195_44
                        cmp              al, 104;                             je    .Lx195_44
                        cmp              al, 72;                              jne   .Lx195_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx195_44
                                                                              jmp   .Lx195_45
.Lx195_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx195_53
                        cmp              al, 104;                             je    .Lx195_53
                        cmp              al, 72;                              jne   .Lx195_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx195_53
                                                                              jmp   .Lx195_46
.Lx195_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx195_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx195_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx195_51
.Lx195_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx195_47
                        cmp              al, 104;                             je    .Lx195_47
                        cmp              al, 72;                              jne   .Lx195_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx195_47
                                                                              jmp   .Lx195_48
.Lx195_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx195_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx195_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx195_51
.Lx195_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx195_49
                        cmp              dl, 80;                              je    .Lx195_53
                                                                              jmp   .Lx195_52
.Lx195_49:              cmp              dl, 80;                              je    .Lx195_52
                        cmp              cl, 5;                               je    .Lx195_53
                        cmp              dl, 5;                               je    .Lx195_53
                        cmp              cl, 3;                               jne   .Lx195_50
                        cmp              dl, 3;                               jne   .Lx195_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx195_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx195_51
                                                                              jmp   .Lx195_52
.Lx195_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx195_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx195_53
.Lx195_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx195_54
.Lx195_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx195_54
.Lx195_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx195_54:              mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1952]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        lea              r8, [rsp + 1680]
.Lx200_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx200_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_41
                        cmp              esi, 1;                              jne   .Lx200_55
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_55:              cmp              esi, 2;                              jne   .Lx200_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx200_41
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_56:              cmp              al, 72;                              jne   .Lx200_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx200_41
                        cmp              rax, r8;                             je    .Lx200_41
                        mov              r8, rax;                             jmp   .Lx200_40
.Lx200_41:              lea              r9, [rsp + 1696]
.Lx200_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx200_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx200_43
                        cmp              esi, 1;                              jne   .Lx200_57
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_57:              cmp              esi, 2;                              jne   .Lx200_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx200_43
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_58:              cmp              al, 72;                              jne   .Lx200_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx200_43
                        cmp              rax, r9;                             je    .Lx200_43
                        mov              r9, rax;                             jmp   .Lx200_42
.Lx200_43:              cmp              r8, r9;                              je    .Lx200_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx200_44
                        cmp              al, 104;                             je    .Lx200_44
                        cmp              al, 72;                              jne   .Lx200_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx200_44
                                                                              jmp   .Lx200_45
.Lx200_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx200_53
                        cmp              al, 104;                             je    .Lx200_53
                        cmp              al, 72;                              jne   .Lx200_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx200_53
                                                                              jmp   .Lx200_46
.Lx200_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx200_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx200_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx200_51
.Lx200_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx200_47
                        cmp              al, 104;                             je    .Lx200_47
                        cmp              al, 72;                              jne   .Lx200_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx200_47
                                                                              jmp   .Lx200_48
.Lx200_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx200_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx200_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx200_51
.Lx200_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx200_49
                        cmp              dl, 80;                              je    .Lx200_53
                                                                              jmp   .Lx200_52
.Lx200_49:              cmp              dl, 80;                              je    .Lx200_52
                        cmp              cl, 5;                               je    .Lx200_53
                        cmp              dl, 5;                               je    .Lx200_53
                        cmp              cl, 3;                               jne   .Lx200_50
                        cmp              dl, 3;                               jne   .Lx200_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx200_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx200_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx200_51
                                                                              jmp   .Lx200_52
.Lx200_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx200_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx200_53
.Lx200_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx200_54
.Lx200_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx200_54
.Lx200_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx200_54:              mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 9
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n127_call_builtin_prolog_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              rsi, qword ptr [rip + .Lx204_2];     jmp   .Lx204_3
.Lx204_2:               .quad            .Lx204_2_s
.Lx204_2_s:             .string          "carpenter"
.Lx204_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1936]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 61
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
.Lx209_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx209_41
                        cmp              esi, 1;                              jne   .Lx209_55
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_55:              cmp              esi, 2;                              jne   .Lx209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx209_41
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_56:              cmp              al, 72;                              jne   .Lx209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx209_41
                        cmp              rax, r8;                             je    .Lx209_41
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_41:              lea              r9, [rsp + 1536]
.Lx209_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx209_43
                        cmp              esi, 1;                              jne   .Lx209_57
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_57:              cmp              esi, 2;                              jne   .Lx209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx209_43
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_58:              cmp              al, 72;                              jne   .Lx209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx209_43
                        cmp              rax, r9;                             je    .Lx209_43
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_43:              cmp              r8, r9;                              je    .Lx209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx209_44
                        cmp              al, 104;                             je    .Lx209_44
                        cmp              al, 72;                              jne   .Lx209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx209_44
                                                                              jmp   .Lx209_45
.Lx209_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx209_53
                        cmp              al, 104;                             je    .Lx209_53
                        cmp              al, 72;                              jne   .Lx209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx209_53
                                                                              jmp   .Lx209_46
.Lx209_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx209_51
.Lx209_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx209_47
                        cmp              al, 104;                             je    .Lx209_47
                        cmp              al, 72;                              jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx209_47
                                                                              jmp   .Lx209_48
.Lx209_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx209_51
.Lx209_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx209_49
                        cmp              dl, 80;                              je    .Lx209_53
                                                                              jmp   .Lx209_52
.Lx209_49:              cmp              dl, 80;                              je    .Lx209_52
                        cmp              cl, 5;                               je    .Lx209_53
                        cmp              dl, 5;                               je    .Lx209_53
                        cmp              cl, 3;                               jne   .Lx209_50
                        cmp              dl, 3;                               jne   .Lx209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx209_51
                                                                              jmp   .Lx209_52
.Lx209_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx209_53
.Lx209_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx209_54
.Lx209_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx209_54
.Lx209_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx209_54:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_lit_string_α
n130_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n132_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "Clark="
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn212:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_var_α
n132_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 64
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn216:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_lit_string_α
n134_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n136_call_builtin_prolog_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn219:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_suspend_α
n136_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_suspend_α:         mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx221_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1904];         jmp   rax
.Lx221_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n137_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   write_occ$2F5_γ
n137_suspend_β:         mov              r11, 68;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    write_occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_var_ref_α
n138_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        lea              r8, [rsp + 1248]
.Lx227_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx227_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx227_41
                        cmp              esi, 1;                              jne   .Lx227_55
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_55:              cmp              esi, 2;                              jne   .Lx227_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx227_41
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_56:              cmp              al, 72;                              jne   .Lx227_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx227_41
                        cmp              rax, r8;                             je    .Lx227_41
                        mov              r8, rax;                             jmp   .Lx227_40
.Lx227_41:              lea              r9, [rsp + 1264]
.Lx227_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx227_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx227_43
                        cmp              esi, 1;                              jne   .Lx227_57
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_57:              cmp              esi, 2;                              jne   .Lx227_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx227_43
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_58:              cmp              al, 72;                              jne   .Lx227_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx227_43
                        cmp              rax, r9;                             je    .Lx227_43
                        mov              r9, rax;                             jmp   .Lx227_42
.Lx227_43:              cmp              r8, r9;                              je    .Lx227_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx227_44
                        cmp              al, 104;                             je    .Lx227_44
                        cmp              al, 72;                              jne   .Lx227_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx227_44
                                                                              jmp   .Lx227_45
.Lx227_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx227_53
                        cmp              al, 104;                             je    .Lx227_53
                        cmp              al, 72;                              jne   .Lx227_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx227_53
                                                                              jmp   .Lx227_46
.Lx227_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx227_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx227_51
.Lx227_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx227_47
                        cmp              al, 104;                             je    .Lx227_47
                        cmp              al, 72;                              jne   .Lx227_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx227_47
                                                                              jmp   .Lx227_48
.Lx227_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx227_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx227_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx227_51
.Lx227_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx227_49
                        cmp              dl, 80;                              je    .Lx227_53
                                                                              jmp   .Lx227_52
.Lx227_49:              cmp              dl, 80;                              je    .Lx227_52
                        cmp              cl, 5;                               je    .Lx227_53
                        cmp              dl, 5;                               je    .Lx227_53
                        cmp              cl, 3;                               jne   .Lx227_50
                        cmp              dl, 3;                               jne   .Lx227_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx227_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx227_51
                                                                              jmp   .Lx227_52
.Lx227_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx227_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx227_53
.Lx227_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx227_54
.Lx227_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx227_54
.Lx227_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx227_54:              mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_var_ref_α
n141_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1984]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        lea              r8, [rsp + 1168]
.Lx232_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx232_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx232_41
                        cmp              esi, 1;                              jne   .Lx232_55
                        mov              r8, rax;                             jmp   .Lx232_40
.Lx232_55:              cmp              esi, 2;                              jne   .Lx232_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx232_41
                        mov              r8, rax;                             jmp   .Lx232_40
.Lx232_56:              cmp              al, 72;                              jne   .Lx232_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx232_41
                        cmp              rax, r8;                             je    .Lx232_41
                        mov              r8, rax;                             jmp   .Lx232_40
.Lx232_41:              lea              r9, [rsp + 1184]
.Lx232_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx232_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx232_43
                        cmp              esi, 1;                              jne   .Lx232_57
                        mov              r9, rax;                             jmp   .Lx232_42
.Lx232_57:              cmp              esi, 2;                              jne   .Lx232_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx232_43
                        mov              r9, rax;                             jmp   .Lx232_42
.Lx232_58:              cmp              al, 72;                              jne   .Lx232_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx232_43
                        cmp              rax, r9;                             je    .Lx232_43
                        mov              r9, rax;                             jmp   .Lx232_42
.Lx232_43:              cmp              r8, r9;                              je    .Lx232_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx232_44
                        cmp              al, 104;                             je    .Lx232_44
                        cmp              al, 72;                              jne   .Lx232_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx232_44
                                                                              jmp   .Lx232_45
.Lx232_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx232_53
                        cmp              al, 104;                             je    .Lx232_53
                        cmp              al, 72;                              jne   .Lx232_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx232_53
                                                                              jmp   .Lx232_46
.Lx232_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx232_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx232_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx232_51
.Lx232_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx232_47
                        cmp              al, 104;                             je    .Lx232_47
                        cmp              al, 72;                              jne   .Lx232_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx232_47
                                                                              jmp   .Lx232_48
.Lx232_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx232_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx232_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx232_51
.Lx232_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx232_49
                        cmp              dl, 80;                              je    .Lx232_53
                                                                              jmp   .Lx232_52
.Lx232_49:              cmp              dl, 80;                              je    .Lx232_52
                        cmp              cl, 5;                               je    .Lx232_53
                        cmp              dl, 5;                               je    .Lx232_53
                        cmp              cl, 3;                               jne   .Lx232_50
                        cmp              dl, 3;                               jne   .Lx232_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx232_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx232_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx232_51
                                                                              jmp   .Lx232_52
.Lx232_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx232_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx232_53
.Lx232_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx232_54
.Lx232_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx232_54
.Lx232_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx232_54:              mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_var_ref_α
n144_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1952]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n147_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        lea              r8, [rsp + 1088]
.Lx237_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx237_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx237_41
                        cmp              esi, 1;                              jne   .Lx237_55
                        mov              r8, rax;                             jmp   .Lx237_40
.Lx237_55:              cmp              esi, 2;                              jne   .Lx237_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx237_41
                        mov              r8, rax;                             jmp   .Lx237_40
.Lx237_56:              cmp              al, 72;                              jne   .Lx237_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx237_41
                        cmp              rax, r8;                             je    .Lx237_41
                        mov              r8, rax;                             jmp   .Lx237_40
.Lx237_41:              lea              r9, [rsp + 1104]
.Lx237_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx237_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx237_43
                        cmp              esi, 1;                              jne   .Lx237_57
                        mov              r9, rax;                             jmp   .Lx237_42
.Lx237_57:              cmp              esi, 2;                              jne   .Lx237_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx237_43
                        mov              r9, rax;                             jmp   .Lx237_42
.Lx237_58:              cmp              al, 72;                              jne   .Lx237_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx237_43
                        cmp              rax, r9;                             je    .Lx237_43
                        mov              r9, rax;                             jmp   .Lx237_42
.Lx237_43:              cmp              r8, r9;                              je    .Lx237_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx237_44
                        cmp              al, 104;                             je    .Lx237_44
                        cmp              al, 72;                              jne   .Lx237_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx237_44
                                                                              jmp   .Lx237_45
.Lx237_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx237_53
                        cmp              al, 104;                             je    .Lx237_53
                        cmp              al, 72;                              jne   .Lx237_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx237_53
                                                                              jmp   .Lx237_46
.Lx237_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx237_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx237_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx237_51
.Lx237_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx237_47
                        cmp              al, 104;                             je    .Lx237_47
                        cmp              al, 72;                              jne   .Lx237_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx237_47
                                                                              jmp   .Lx237_48
.Lx237_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx237_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx237_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx237_51
.Lx237_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx237_49
                        cmp              dl, 80;                              je    .Lx237_53
                                                                              jmp   .Lx237_52
.Lx237_49:              cmp              dl, 80;                              je    .Lx237_52
                        cmp              cl, 5;                               je    .Lx237_53
                        cmp              dl, 5;                               je    .Lx237_53
                        cmp              cl, 3;                               jne   .Lx237_50
                        cmp              dl, 3;                               jne   .Lx237_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx237_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx237_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx237_51
                                                                              jmp   .Lx237_52
.Lx237_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx237_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx237_53
.Lx237_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx237_54
.Lx237_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx237_54
.Lx237_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx237_54:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 7
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n150_call_builtin_prolog_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              rsi, qword ptr [rip + .Lx241_2];     jmp   .Lx241_3
.Lx241_2:               .quad            .Lx241_2_s
.Lx241_2_s:             .string          "painter"
.Lx241_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_var_ref_α
n150_call_builtin_prolog_β:
                        mov              r11, 81;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1936]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n153_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
                        mov              r11, 84
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
.Lx246_41:              lea              r9, [rsp + 944]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx246_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx246_51
.Lx246_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx246_47
                        cmp              al, 104;                             je    .Lx246_47
                        cmp              al, 72;                              jne   .Lx246_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx246_47
                                                                              jmp   .Lx246_48
.Lx246_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx246_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx246_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx246_54:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_lit_string_α
n153_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 4
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n155_call_builtin_prolog_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "Daw="
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn249:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_var_α
n155_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              r11, 87
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 856], rax;          jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn253:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_lit_string_α
n157_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n159_call_builtin_prolog_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn256:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n161_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_suspend_α
n159_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_suspend_α:         mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx258_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1904];         jmp   rax
.Lx258_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n160_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   write_occ$2F5_γ
n160_suspend_β:         mov              r11, 91;                             jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    write_occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_var_ref_α
n161_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              r11, 95
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
.Lx264_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx264_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx264_41
                        cmp              esi, 1;                              jne   .Lx264_55
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_55:              cmp              esi, 2;                              jne   .Lx264_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx264_41
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_56:              cmp              al, 72;                              jne   .Lx264_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx264_41
                        cmp              rax, r8;                             je    .Lx264_41
                        mov              r8, rax;                             jmp   .Lx264_40
.Lx264_41:              lea              r9, [rsp + 672]
.Lx264_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx264_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx264_43
                        cmp              esi, 1;                              jne   .Lx264_57
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_57:              cmp              esi, 2;                              jne   .Lx264_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx264_43
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_58:              cmp              al, 72;                              jne   .Lx264_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx264_43
                        cmp              rax, r9;                             je    .Lx264_43
                        mov              r9, rax;                             jmp   .Lx264_42
.Lx264_43:              cmp              r8, r9;                              je    .Lx264_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx264_44
                        cmp              al, 104;                             je    .Lx264_44
                        cmp              al, 72;                              jne   .Lx264_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx264_44
                                                                              jmp   .Lx264_45
.Lx264_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx264_53
                        cmp              al, 104;                             je    .Lx264_53
                        cmp              al, 72;                              jne   .Lx264_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx264_53
                                                                              jmp   .Lx264_46
.Lx264_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx264_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx264_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx264_51
.Lx264_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx264_47
                        cmp              al, 104;                             je    .Lx264_47
                        cmp              al, 72;                              jne   .Lx264_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx264_47
                                                                              jmp   .Lx264_48
.Lx264_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx264_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx264_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx264_51
.Lx264_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx264_49
                        cmp              dl, 80;                              je    .Lx264_53
                                                                              jmp   .Lx264_52
.Lx264_49:              cmp              dl, 80;                              je    .Lx264_52
                        cmp              cl, 5;                               je    .Lx264_53
                        cmp              dl, 5;                               je    .Lx264_53
                        cmp              cl, 3;                               jne   .Lx264_50
                        cmp              dl, 3;                               jne   .Lx264_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx264_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx264_51
                                                                              jmp   .Lx264_52
.Lx264_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx264_53
.Lx264_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx264_54
.Lx264_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx264_54
.Lx264_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx264_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1952]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n167_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.Lx269_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx269_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx269_41
                        cmp              esi, 1;                              jne   .Lx269_55
                        mov              r8, rax;                             jmp   .Lx269_40
.Lx269_55:              cmp              esi, 2;                              jne   .Lx269_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx269_41
                        mov              r8, rax;                             jmp   .Lx269_40
.Lx269_56:              cmp              al, 72;                              jne   .Lx269_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx269_41
                        cmp              rax, r8;                             je    .Lx269_41
                        mov              r8, rax;                             jmp   .Lx269_40
.Lx269_41:              lea              r9, [rsp + 592]
.Lx269_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx269_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx269_43
                        cmp              esi, 1;                              jne   .Lx269_57
                        mov              r9, rax;                             jmp   .Lx269_42
.Lx269_57:              cmp              esi, 2;                              jne   .Lx269_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx269_43
                        mov              r9, rax;                             jmp   .Lx269_42
.Lx269_58:              cmp              al, 72;                              jne   .Lx269_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx269_43
                        cmp              rax, r9;                             je    .Lx269_43
                        mov              r9, rax;                             jmp   .Lx269_42
.Lx269_43:              cmp              r8, r9;                              je    .Lx269_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx269_44
                        cmp              al, 104;                             je    .Lx269_44
                        cmp              al, 72;                              jne   .Lx269_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx269_44
                                                                              jmp   .Lx269_45
.Lx269_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx269_53
                        cmp              al, 104;                             je    .Lx269_53
                        cmp              al, 72;                              jne   .Lx269_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx269_53
                                                                              jmp   .Lx269_46
.Lx269_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx269_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx269_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx269_51
.Lx269_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx269_47
                        cmp              al, 104;                             je    .Lx269_47
                        cmp              al, 72;                              jne   .Lx269_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx269_47
                                                                              jmp   .Lx269_48
.Lx269_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx269_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx269_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx269_51
.Lx269_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx269_49
                        cmp              dl, 80;                              je    .Lx269_53
                                                                              jmp   .Lx269_52
.Lx269_49:              cmp              dl, 80;                              je    .Lx269_52
                        cmp              cl, 5;                               je    .Lx269_53
                        cmp              dl, 5;                               je    .Lx269_53
                        cmp              cl, 3;                               jne   .Lx269_50
                        cmp              dl, 3;                               jne   .Lx269_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx269_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx269_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx269_51
                                                                              jmp   .Lx269_52
.Lx269_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx269_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx269_53
.Lx269_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx269_54
.Lx269_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx269_54
.Lx269_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_54:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_var_ref_α
n167_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1920]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n170_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lx274_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx274_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx274_41
                        cmp              esi, 1;                              jne   .Lx274_55
                        mov              r8, rax;                             jmp   .Lx274_40
.Lx274_55:              cmp              esi, 2;                              jne   .Lx274_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx274_41
                        mov              r8, rax;                             jmp   .Lx274_40
.Lx274_56:              cmp              al, 72;                              jne   .Lx274_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx274_41
                        cmp              rax, r8;                             je    .Lx274_41
                        mov              r8, rax;                             jmp   .Lx274_40
.Lx274_41:              lea              r9, [rsp + 512]
.Lx274_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx274_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx274_43
                        cmp              esi, 1;                              jne   .Lx274_57
                        mov              r9, rax;                             jmp   .Lx274_42
.Lx274_57:              cmp              esi, 2;                              jne   .Lx274_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx274_43
                        mov              r9, rax;                             jmp   .Lx274_42
.Lx274_58:              cmp              al, 72;                              jne   .Lx274_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx274_43
                        cmp              rax, r9;                             je    .Lx274_43
                        mov              r9, rax;                             jmp   .Lx274_42
.Lx274_43:              cmp              r8, r9;                              je    .Lx274_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx274_44
                        cmp              al, 104;                             je    .Lx274_44
                        cmp              al, 72;                              jne   .Lx274_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx274_44
                                                                              jmp   .Lx274_45
.Lx274_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx274_53
                        cmp              al, 104;                             je    .Lx274_53
                        cmp              al, 72;                              jne   .Lx274_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx274_53
                                                                              jmp   .Lx274_46
.Lx274_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx274_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx274_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx274_51
.Lx274_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx274_47
                        cmp              al, 104;                             je    .Lx274_47
                        cmp              al, 72;                              jne   .Lx274_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx274_47
                                                                              jmp   .Lx274_48
.Lx274_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx274_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx274_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx274_51
.Lx274_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx274_49
                        cmp              dl, 80;                              je    .Lx274_53
                                                                              jmp   .Lx274_52
.Lx274_49:              cmp              dl, 80;                              je    .Lx274_52
                        cmp              cl, 5;                               je    .Lx274_53
                        cmp              dl, 5;                               je    .Lx274_53
                        cmp              cl, 3;                               jne   .Lx274_50
                        cmp              dl, 3;                               jne   .Lx274_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx274_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx274_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx274_51
                                                                              jmp   .Lx274_52
.Lx274_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx274_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx274_53
.Lx274_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx274_54
.Lx274_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx274_54
.Lx274_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_54:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_var_ref_α
n170_call_builtin_prolog_β:
                        mov              r11, 101;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n173_call_builtin_prolog_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              rsi, qword ptr [rip + .Lx278_2];     jmp   .Lx278_3
.Lx278_2:               .quad            .Lx278_2_s
.Lx278_2_s:             .string          "plumber"
.Lx278_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_var_ref_α
n173_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n175_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1936]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              r11, 107
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
.Lx283_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx283_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx283_41
                        cmp              esi, 1;                              jne   .Lx283_55
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_55:              cmp              esi, 2;                              jne   .Lx283_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx283_41
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_56:              cmp              al, 72;                              jne   .Lx283_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx283_41
                        cmp              rax, r8;                             je    .Lx283_41
                        mov              r8, rax;                             jmp   .Lx283_40
.Lx283_41:              lea              r9, [rsp + 352]
.Lx283_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx283_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx283_43
                        cmp              esi, 1;                              jne   .Lx283_57
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_57:              cmp              esi, 2;                              jne   .Lx283_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx283_43
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_58:              cmp              al, 72;                              jne   .Lx283_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx283_43
                        cmp              rax, r9;                             je    .Lx283_43
                        mov              r9, rax;                             jmp   .Lx283_42
.Lx283_43:              cmp              r8, r9;                              je    .Lx283_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx283_44
                        cmp              al, 104;                             je    .Lx283_44
                        cmp              al, 72;                              jne   .Lx283_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx283_44
                                                                              jmp   .Lx283_45
.Lx283_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx283_53
                        cmp              al, 104;                             je    .Lx283_53
                        cmp              al, 72;                              jne   .Lx283_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx283_53
                                                                              jmp   .Lx283_46
.Lx283_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx283_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx283_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx283_51
.Lx283_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx283_47
                        cmp              al, 104;                             je    .Lx283_47
                        cmp              al, 72;                              jne   .Lx283_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx283_47
                                                                              jmp   .Lx283_48
.Lx283_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx283_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx283_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx283_51
.Lx283_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx283_49
                        cmp              dl, 80;                              je    .Lx283_53
                                                                              jmp   .Lx283_52
.Lx283_49:              cmp              dl, 80;                              je    .Lx283_52
                        cmp              cl, 5;                               je    .Lx283_53
                        cmp              dl, 5;                               je    .Lx283_53
                        cmp              cl, 3;                               jne   .Lx283_50
                        cmp              dl, 3;                               jne   .Lx283_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx283_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx283_51
                                                                              jmp   .Lx283_52
.Lx283_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx283_53
.Lx283_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx283_54
.Lx283_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx283_54
.Lx283_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx283_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_lit_string_α
n176_call_builtin_prolog_β:
                        mov              r11, 107;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n178_call_builtin_prolog_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "Fuller="
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_prolog_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn286:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_var_α
n178_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 264], rax;          jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn290:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_lit_string_α
n180_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n182_call_builtin_prolog_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn293:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n184_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_suspend_α
n182_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_suspend_α:         mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx295_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1904];         jmp   rax
.Lx295_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n183_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n183_suspend_β]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   write_occ$2F5_γ
n183_suspend_β:         mov              r11, 114;                            jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              r11, 115
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
                        cmp              al, 104;                             je    write_occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   write_occ$2F5_ω
n184_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
write_occ$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
write_occ$2F5_β:
                                                                              jmp   n137_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
write_occ$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx296_50
                        mov              qword ptr [rsp + 1904], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1904];         jmp   rax
.Lx296_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2040]
                        add              rsp, 2064;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
write_occ$2F5_ω:
                        mov              rcx, qword ptr [rsp + 2048]
                        add              rsp, 2064;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__puzzle$2F0:
                        sub              rsp, 880
                        mov              qword ptr [rsp + 856], rcx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 848
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
n297_call_builtin_prolog_α:
                        mov              r11, 116
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx319_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx319_101
.Lx319_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx319_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx319_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx319_101
.Lx319_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx319_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n298_var_ref_α
n297_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n299_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_proc_staged_α:
                        mov              r11, 118
                        mov              qword ptr [rsp + 720], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx323_200
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx323_201
.Lx323_200:             mov              edi, 0
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
.Lx323_201:             lea              rax, [rip + .Lx323_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx323_1
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4];               jmp   rax
.Lx323_3:               mov              qword ptr [rsp + 728], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 720]
                        test             rax, rax;                            jne   .Lx323_5
                        mov              qword ptr [rsp + 720], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx323_2
.Lx323_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx323_2
.Lx323_4:               mov              rax, qword ptr [rsp + 720]
                        test             rax, rax;                            jne   .Lx323_6
                        mov              qword ptr [rsp + 720], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx323_2
.Lx323_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx323_2
.Lx323_1:               call             rt_faildescr@PLT
.Lx323_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx323_29
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
.Lx323_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n318_call_builtin_prolog_α
                                                                              jmp   n300_var_ref_α
n299_call_proc_staged_β:
                        mov              r11, 118
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 720], 0
                        lea              rdi, [rsp + 736]
                        lea              rsi, [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n318_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              ecx, 32
                        mov              r8d, 624
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n318_call_builtin_prolog_α
                        lea              r8, [rip + .Lx323_7]
                        push             r8
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4];               jmp   rax
.Lx323_7:               add              rsp, 8
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n318_call_builtin_prolog_α
                                                                              jmp   n300_var_ref_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n301_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_proc_staged_α:
                        mov              r11, 120
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx327_200
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx327_201
.Lx327_200:             mov              edi, 0
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
.Lx327_201:             lea              rax, [rip + .Lx327_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx327_1
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4];               jmp   rax
.Lx327_3:               mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx327_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx327_2
.Lx327_4:               mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx327_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx327_2
.Lx327_1:               call             rt_faildescr@PLT
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
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
.Lx327_29:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n302_var_ref_α
n301_call_proc_staged_β:
                        mov              r11, 120
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
                        test             rax, rax;                            je    n299_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              ecx, 32
                        mov              r8d, 624
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
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n299_call_proc_staged_β
                        lea              r8, [rip + .Lx327_7]
                        push             r8
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4];               jmp   rax
.Lx327_7:               add              rsp, 8
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n302_var_ref_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n303_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_proc_staged_α:
                        mov              r11, 122
                        mov              qword ptr [rsp + 560], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx331_200
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx331_201
.Lx331_200:             mov              edi, 0
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
.Lx331_201:             lea              rax, [rip + .Lx331_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx331_1
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4];               jmp   rax
.Lx331_3:               mov              qword ptr [rsp + 568], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx331_5
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx331_2
.Lx331_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx331_2
.Lx331_4:               mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx331_6
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx331_2
.Lx331_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx331_2
.Lx331_1:               call             rt_faildescr@PLT
.Lx331_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx331_29
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
.Lx331_29:              mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n301_call_proc_staged_β
                                                                              jmp   n304_var_ref_α
n303_call_proc_staged_β:
                        mov              r11, 122
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
                        test             rax, rax;                            je    n301_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              ecx, 32
                        mov              r8d, 624
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
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n301_call_proc_staged_β
                        lea              r8, [rip + .Lx331_7]
                        push             r8
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4];               jmp   rax
.Lx331_7:               add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n301_call_proc_staged_β
                                                                              jmp   n304_var_ref_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n307_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        mov              r11, 126
                        mov              qword ptr [rsp + 448], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx339_200
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx339_201
.Lx339_200:             mov              edi, 0
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
.Lx339_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx339_202
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx339_203
.Lx339_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx339_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx339_204
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx339_205
.Lx339_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx339_205:             lea              rax, [rip + .Lx339_7]
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
                        test             rax, rax;                            je    .Lx339_1
                        lea              rcx, [rip + .Lx339_3]
                        lea              rdx, [rip + .Lx339_4];               jmp   rax
.Lx339_3:               mov              qword ptr [rsp + 456], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 448]
                        test             rax, rax;                            jne   .Lx339_5
                        mov              qword ptr [rsp + 448], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx339_2
.Lx339_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx339_2
.Lx339_4:               mov              rax, qword ptr [rsp + 448]
                        test             rax, rax;                            jne   .Lx339_6
                        mov              qword ptr [rsp + 448], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx339_2
.Lx339_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx339_2
.Lx339_1:               call             rt_faildescr@PLT
.Lx339_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx339_29
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
.Lx339_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n303_call_proc_staged_β
                                                                              jmp   n308_var_ref_α
n307_call_proc_staged_β:
                        mov              r11, 126
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 448], 0
                        lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n303_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              ecx, 64
                        mov              r8d, 1248
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
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
                        test             rax, rax;                            je    n303_call_proc_staged_β
                        lea              r8, [rip + .Lx339_7]
                        push             r8
                        lea              rcx, [rip + .Lx339_3]
                        lea              rdx, [rip + .Lx339_4];               jmp   rax
.Lx339_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n303_call_proc_staged_β
                                                                              jmp   n308_var_ref_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "differ/3"
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 7
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n310_call_builtin_prolog_α
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_prolog_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              rsi, qword ptr [rip + .Lx343_2];     jmp   .Lx343_3
.Lx343_2:               .quad            .Lx343_2_s
.Lx343_2_s:             .string          "plumber"
.Lx343_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_var_ref_α
n310_call_builtin_prolog_β:
                        mov              r11, 129;                            jmp   n307_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n312_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 9
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n313_call_builtin_prolog_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_prolog_α:
                        mov              r11, 132
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              rsi, qword ptr [rip + .Lx347_2];     jmp   .Lx347_3
.Lx347_2:               .quad            .Lx347_2_s
.Lx347_2_s:             .string          "carpenter"
.Lx347_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n314_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n307_call_proc_staged_β
n313_call_builtin_prolog_β:
                        mov              r11, 132;                            jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n317_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_proc_staged_α:
                        mov              r11, 136
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx355_200
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx355_201
.Lx355_200:             mov              edi, 0
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
.Lx355_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx355_202
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx355_203
.Lx355_202:             mov              edi, 1
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
.Lx355_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx355_204
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx355_205
.Lx355_204:             mov              edi, 2
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
.Lx355_205:             lea              rax, [rip + .Lx355_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx355_1
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4];               jmp   rax
.Lx355_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx355_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx355_2
.Lx355_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx355_2
.Lx355_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx355_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx355_2
.Lx355_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx355_2
.Lx355_1:               call             rt_faildescr@PLT
.Lx355_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx355_29
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
.Lx355_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                                                                              jmp   n317_call_proc_staged_β
n317_call_proc_staged_β:
                        mov              r11, 136
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
                        test             rax, rax;                            je    n307_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 64
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
                        mov              edi, 2
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
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n307_call_proc_staged_β
                        lea              r8, [rip + .Lx355_7]
                        push             r8
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4];               jmp   rax
.Lx355_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                                                                              jmp   n317_call_proc_staged_β
.Lx355_0:               .quad            .Lx355_0_s
.Lx355_0_s:             .string          "display/3"
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              r11, 137
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
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   puzzle$2F0_ω
n318_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   puzzle$2F0_ω
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
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx356_50
                        mov              qword ptr [rsp + 768], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 768];          jmp   rax
.Lx356_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 856]
                        add              rsp, 880;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_ω:
                        mov              rcx, qword ptr [rsp + 864]
                        add              rsp, 880;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__occupation$2F1:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 680], rcx
                        mov              qword ptr [rsp + 688], rdx
                        mov              qword ptr [rsp + 696], rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 672
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
occupation$2F1_α_body:
                        lea              rax, [rip + n373_suspend_β]
                        mov              qword ptr [rsp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              r11, 138
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx375_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx375_101
.Lx375_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx375_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx375_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx375_101
.Lx375_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx375_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_var_ref_α
n357_call_builtin_prolog_β:
                        mov              r11, 138;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        lea              r8, [rsp + 560]
.Lx380_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx380_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx380_41
                        cmp              esi, 1;                              jne   .Lx380_55
                        mov              r8, rax;                             jmp   .Lx380_40
.Lx380_55:              cmp              esi, 2;                              jne   .Lx380_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx380_41
                        mov              r8, rax;                             jmp   .Lx380_40
.Lx380_56:              cmp              al, 72;                              jne   .Lx380_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx380_41
                        cmp              rax, r8;                             je    .Lx380_41
                        mov              r8, rax;                             jmp   .Lx380_40
.Lx380_41:              lea              r9, [rsp + 576]
.Lx380_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx380_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx380_43
                        cmp              esi, 1;                              jne   .Lx380_57
                        mov              r9, rax;                             jmp   .Lx380_42
.Lx380_57:              cmp              esi, 2;                              jne   .Lx380_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx380_43
                        mov              r9, rax;                             jmp   .Lx380_42
.Lx380_58:              cmp              al, 72;                              jne   .Lx380_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx380_43
                        cmp              rax, r9;                             je    .Lx380_43
                        mov              r9, rax;                             jmp   .Lx380_42
.Lx380_43:              cmp              r8, r9;                              je    .Lx380_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx380_44
                        cmp              al, 104;                             je    .Lx380_44
                        cmp              al, 72;                              jne   .Lx380_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx380_44
                                                                              jmp   .Lx380_45
.Lx380_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx380_53
                        cmp              al, 104;                             je    .Lx380_53
                        cmp              al, 72;                              jne   .Lx380_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx380_53
                                                                              jmp   .Lx380_46
.Lx380_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx380_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx380_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx380_51
.Lx380_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx380_47
                        cmp              al, 104;                             je    .Lx380_47
                        cmp              al, 72;                              jne   .Lx380_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx380_47
                                                                              jmp   .Lx380_48
.Lx380_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx380_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx380_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx380_51
.Lx380_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx380_49
                        cmp              dl, 80;                              je    .Lx380_53
                                                                              jmp   .Lx380_52
.Lx380_49:              cmp              dl, 80;                              je    .Lx380_52
                        cmp              cl, 5;                               je    .Lx380_53
                        cmp              dl, 5;                               je    .Lx380_53
                        cmp              cl, 3;                               jne   .Lx380_50
                        cmp              dl, 3;                               jne   .Lx380_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx380_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx380_51
                                                                              jmp   .Lx380_52
.Lx380_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx380_53
.Lx380_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx380_54
.Lx380_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx380_54
.Lx380_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx380_54:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_var_ref_α
n360_call_builtin_prolog_β:
                        mov              r11, 141;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 640]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n363_lit_string_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 9
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n364_lit_string_α
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n365_lit_string_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 7
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n366_lit_string_α
.Lx386_0:               .quad            .Lx386_0_s
.Lx386_0_s:             .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n367_lit_string_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n368_lit_string_α
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n369_call_builtin_prolog_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_prolog_α:
                        mov              r11, 150
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
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_call_builtin_prolog_α
n369_call_builtin_prolog_β:
                        mov              r11, 150;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
                        mov              r11, 151
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
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_call_builtin_prolog_α
n370_call_builtin_prolog_β:
                        mov              r11, 151;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              r11, 152
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
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_call_proc_staged_α
n371_call_builtin_prolog_β:
                        mov              r11, 152;                            jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_proc_staged_α:
                        mov              r11, 153
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx394_200
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx394_201
.Lx394_200:             mov              edi, 0
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
.Lx394_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx394_202
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx394_203
.Lx394_202:             mov              edi, 1
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
.Lx394_203:             lea              rax, [rip + .Lx394_7]
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
                        test             rax, rax;                            je    .Lx394_1
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4];               jmp   rax
.Lx394_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx394_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx394_2
.Lx394_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx394_2
.Lx394_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx394_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx394_2
.Lx394_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx394_2
.Lx394_1:               call             rt_faildescr@PLT
.Lx394_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx394_29
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
.Lx394_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                                                                              jmp   n373_suspend_α
n372_call_proc_staged_β:
                        mov              r11, 153
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
                        test             rax, rax;                            je    n374_call_builtin_prolog_α
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
                        test             rax, rax;                            je    n374_call_builtin_prolog_α
                        lea              r8, [rip + .Lx394_7]
                        push             r8
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4];               jmp   rax
.Lx394_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                                                                              jmp   n373_suspend_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n373_suspend_α:         mov              r11, 154
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx396_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624];          jmp   rax
.Lx396_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n373_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n373_suspend_β]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   occupation$2F1_γ
n373_suspend_β:         mov              r11, 154;                            jmp   n372_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              r11, 155
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
                        cmp              al, 104;                             je    occupation$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   occupation$2F1_ω
n374_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_β:
                                                                              jmp   n373_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx397_50
                        mov              qword ptr [rsp + 624], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624];          jmp   rax
.Lx397_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 680]
                        add              rsp, 704;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
occupation$2F1_ω:
                        mov              rcx, qword ptr [rsp + 688]
                        add              rsp, 704;                            jmp   rcx
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
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_prolog_α:
                        mov              r11, 156
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx404_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx404_101
.Lx404_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx404_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx404_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx404_101
.Lx404_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx404_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n399_call_proc_staged_α
n398_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_call_proc_staged_α:
                        mov              r11, 157
                        mov              qword ptr [rsp + 144], 0
                        lea              rax, [rip + .Lx406_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx406_1
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4];               jmp   rax
.Lx406_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx406_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx406_2
.Lx406_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx406_2
.Lx406_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx406_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx406_2
.Lx406_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx406_2
.Lx406_1:               call             rt_faildescr@PLT
.Lx406_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx406_29
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
.Lx406_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n401_call_builtin_prolog_α
                                                                              jmp   n400_suspend_α
n399_call_proc_staged_β:
                        mov              r11, 157
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
                        test             rax, rax;                            je    n401_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 16
                        mov              r8d, 768
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n401_call_builtin_prolog_α
                        lea              r8, [rip + .Lx406_7]
                        push             r8
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4];               jmp   rax
.Lx406_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n401_call_builtin_prolog_α
                                                                              jmp   n400_suspend_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n400_suspend_α:         mov              r11, 158
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx408_61
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
.Lx408_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n400_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n400_suspend_β:         mov              r11, 158;                            jmp   n399_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_prolog_α:
                        mov              r11, 159
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
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n402_suspend_α
n401_call_builtin_prolog_β:
                        mov              r11, 159;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_suspend_α:         mov              r11, 160
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx411_61
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
.Lx411_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n402_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n402_suspend_β:         mov              r11, 160;                            jmp   n403_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              r11, 161
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
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   $disj0$2F0_ω
n403_call_builtin_prolog_β:
                        mov              r11, 161;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_β:
                                                                              jmp   n400_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx412_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx412_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
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
                        lea              rax, [rip + n421_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_prolog_α:
                        mov              r11, 162
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx435_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx435_101
.Lx435_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx435_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx435_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx435_101
.Lx435_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx435_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_var_ref_α
n413_call_builtin_prolog_β:
                        mov              r11, 162;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n416_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        mov              r11, 165
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
.Lx440_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx440_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx440_41
                        cmp              esi, 1;                              jne   .Lx440_55
                        mov              r8, rax;                             jmp   .Lx440_40
.Lx440_55:              cmp              esi, 2;                              jne   .Lx440_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx440_41
                        mov              r8, rax;                             jmp   .Lx440_40
.Lx440_56:              cmp              al, 72;                              jne   .Lx440_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx440_41
                        cmp              rax, r8;                             je    .Lx440_41
                        mov              r8, rax;                             jmp   .Lx440_40
.Lx440_41:              lea              r9, [rsp + 608]
.Lx440_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx440_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx440_43
                        cmp              esi, 1;                              jne   .Lx440_57
                        mov              r9, rax;                             jmp   .Lx440_42
.Lx440_57:              cmp              esi, 2;                              jne   .Lx440_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx440_43
                        mov              r9, rax;                             jmp   .Lx440_42
.Lx440_58:              cmp              al, 72;                              jne   .Lx440_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx440_43
                        cmp              rax, r9;                             je    .Lx440_43
                        mov              r9, rax;                             jmp   .Lx440_42
.Lx440_43:              cmp              r8, r9;                              je    .Lx440_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx440_44
                        cmp              al, 104;                             je    .Lx440_44
                        cmp              al, 72;                              jne   .Lx440_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx440_44
                                                                              jmp   .Lx440_45
.Lx440_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx440_53
                        cmp              al, 104;                             je    .Lx440_53
                        cmp              al, 72;                              jne   .Lx440_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx440_53
                                                                              jmp   .Lx440_46
.Lx440_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx440_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx440_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx440_51
.Lx440_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx440_47
                        cmp              al, 104;                             je    .Lx440_47
                        cmp              al, 72;                              jne   .Lx440_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx440_47
                                                                              jmp   .Lx440_48
.Lx440_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx440_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx440_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx440_51
.Lx440_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx440_49
                        cmp              dl, 80;                              je    .Lx440_53
                                                                              jmp   .Lx440_52
.Lx440_49:              cmp              dl, 80;                              je    .Lx440_52
                        cmp              cl, 5;                               je    .Lx440_53
                        cmp              dl, 5;                               je    .Lx440_53
                        cmp              cl, 3;                               jne   .Lx440_50
                        cmp              dl, 3;                               jne   .Lx440_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx440_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx440_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx440_51
                                                                              jmp   .Lx440_52
.Lx440_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx440_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx440_53
.Lx440_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx440_54
.Lx440_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx440_54
.Lx440_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx440_54:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n422_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_var_ref_α
n416_call_builtin_prolog_β:
                        mov              r11, 165;                            jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n419_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n420_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              r11, 169
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
.Lx447_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx447_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx447_61
                        cmp              esi, 1;                              jne   .Lx447_62
                        mov              r8, rax;                             jmp   .Lx447_60
.Lx447_62:              cmp              esi, 2;                              jne   .Lx447_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx447_61
                        mov              r8, rax;                             jmp   .Lx447_60
.Lx447_63:              cmp              al, 72;                              jne   .Lx447_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx447_61
                        cmp              rax, r8;                             je    .Lx447_61
                        mov              r8, rax;                             jmp   .Lx447_60
.Lx447_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx447_80
                        cmp              al, 104;                             je    .Lx447_80
                        cmp              al, 72;                              jne   .Lx447_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx447_80
                                                                              jmp   .Lx447_74
.Lx447_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx447_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx447_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx447_73
                        lea              r9, [rsp + 512]
.Lx447_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx447_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx447_65
                        cmp              esi, 1;                              jne   .Lx447_66
                        mov              r9, rax;                             jmp   .Lx447_64
.Lx447_66:              cmp              esi, 2;                              jne   .Lx447_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx447_65
                        mov              r9, rax;                             jmp   .Lx447_64
.Lx447_67:              cmp              al, 72;                              jne   .Lx447_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx447_65
                        cmp              rax, r9;                             je    .Lx447_65
                        mov              r9, rax;                             jmp   .Lx447_64
.Lx447_65:              lea              rcx, [rsp + 528]
.Lx447_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx447_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx447_69
                        cmp              esi, 1;                              jne   .Lx447_70
                        mov              rcx, rax;                            jmp   .Lx447_68
.Lx447_70:              cmp              esi, 2;                              jne   .Lx447_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx447_69
                        mov              rcx, rax;                            jmp   .Lx447_68
.Lx447_71:              cmp              al, 72;                              jne   .Lx447_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx447_69
                        cmp              rax, rcx;                            je    .Lx447_69
                        mov              rcx, rax;                            jmp   .Lx447_68
.Lx447_69:              cmp              r9, rcx;                             je    .Lx447_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx447_75
                        cmp              al, 104;                             je    .Lx447_75
                        cmp              al, 72;                              jne   .Lx447_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx447_75
                                                                              jmp   .Lx447_72
.Lx447_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx447_76
                        cmp              al, 104;                             je    .Lx447_76
                        cmp              al, 72;                              jne   .Lx447_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx447_76
                                                                              jmp   .Lx447_72
.Lx447_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx447_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx447_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx447_77
.Lx447_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx447_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx447_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx447_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx447_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx447_72
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
.Lx447_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx447_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx447_82
                        cmp              esi, 1;                              jne   .Lx447_83
                        mov              r9, rax;                             jmp   .Lx447_81
.Lx447_83:              cmp              esi, 2;                              jne   .Lx447_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx447_82
                        mov              r9, rax;                             jmp   .Lx447_81
.Lx447_84:              cmp              al, 72;                              jne   .Lx447_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx447_82
                        cmp              rax, r9;                             je    .Lx447_82
                        mov              r9, rax;                             jmp   .Lx447_81
.Lx447_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx447_85
                        cmp              al, 104;                             je    .Lx447_85
                        cmp              al, 72;                              jne   .Lx447_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx447_85
                                                                              jmp   .Lx447_86
.Lx447_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx447_87
.Lx447_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx447_87:              lea              rcx, [rsp + 528]
.Lx447_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx447_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx447_89
                        cmp              esi, 1;                              jne   .Lx447_90
                        mov              rcx, rax;                            jmp   .Lx447_88
.Lx447_90:              cmp              esi, 2;                              jne   .Lx447_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx447_89
                        mov              rcx, rax;                            jmp   .Lx447_88
.Lx447_91:              cmp              al, 72;                              jne   .Lx447_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx447_89
                        cmp              rax, rcx;                            je    .Lx447_89
                        mov              rcx, rax;                            jmp   .Lx447_88
.Lx447_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx447_92
                        cmp              al, 104;                             je    .Lx447_92
                        cmp              al, 72;                              jne   .Lx447_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx447_92
                                                                              jmp   .Lx447_93
.Lx447_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx447_94
.Lx447_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx447_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx447_77
.Lx447_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx447_77
.Lx447_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx447_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n422_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n421_suspend_α
n420_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n421_suspend_α:         mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx449_61
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
.Lx449_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n421_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n421_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n421_suspend_β:         mov              r11, 170;                            jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              r11, 171
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
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n423_var_ref_α
n422_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n424_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              r11, 174
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
.Lx455_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx455_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx455_41
                        cmp              esi, 1;                              jne   .Lx455_55
                        mov              r8, rax;                             jmp   .Lx455_40
.Lx455_55:              cmp              esi, 2;                              jne   .Lx455_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx455_41
                        mov              r8, rax;                             jmp   .Lx455_40
.Lx455_56:              cmp              al, 72;                              jne   .Lx455_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx455_41
                        cmp              rax, r8;                             je    .Lx455_41
                        mov              r8, rax;                             jmp   .Lx455_40
.Lx455_41:              lea              r9, [rsp + 368]
.Lx455_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx455_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx455_43
                        cmp              esi, 1;                              jne   .Lx455_57
                        mov              r9, rax;                             jmp   .Lx455_42
.Lx455_57:              cmp              esi, 2;                              jne   .Lx455_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx455_43
                        mov              r9, rax;                             jmp   .Lx455_42
.Lx455_58:              cmp              al, 72;                              jne   .Lx455_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx455_43
                        cmp              rax, r9;                             je    .Lx455_43
                        mov              r9, rax;                             jmp   .Lx455_42
.Lx455_43:              cmp              r8, r9;                              je    .Lx455_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx455_44
                        cmp              al, 104;                             je    .Lx455_44
                        cmp              al, 72;                              jne   .Lx455_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx455_44
                                                                              jmp   .Lx455_45
.Lx455_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx455_53
                        cmp              al, 104;                             je    .Lx455_53
                        cmp              al, 72;                              jne   .Lx455_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx455_53
                                                                              jmp   .Lx455_46
.Lx455_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx455_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx455_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx455_51
.Lx455_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx455_47
                        cmp              al, 104;                             je    .Lx455_47
                        cmp              al, 72;                              jne   .Lx455_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx455_47
                                                                              jmp   .Lx455_48
.Lx455_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx455_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx455_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx455_51
.Lx455_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx455_49
                        cmp              dl, 80;                              je    .Lx455_53
                                                                              jmp   .Lx455_52
.Lx455_49:              cmp              dl, 80;                              je    .Lx455_52
                        cmp              cl, 5;                               je    .Lx455_53
                        cmp              dl, 5;                               je    .Lx455_53
                        cmp              cl, 3;                               jne   .Lx455_50
                        cmp              dl, 3;                               jne   .Lx455_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx455_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx455_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx455_51
                                                                              jmp   .Lx455_52
.Lx455_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx455_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx455_53
.Lx455_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx455_54
.Lx455_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx455_54
.Lx455_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx455_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n434_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_var_ref_α
n425_call_builtin_prolog_β:
                        mov              r11, 174;                            jmp   n434_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n429_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              r11, 178
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
.Lx462_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx462_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx462_61
                        cmp              esi, 1;                              jne   .Lx462_62
                        mov              r8, rax;                             jmp   .Lx462_60
.Lx462_62:              cmp              esi, 2;                              jne   .Lx462_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_61
                        mov              r8, rax;                             jmp   .Lx462_60
.Lx462_63:              cmp              al, 72;                              jne   .Lx462_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx462_61
                        cmp              rax, r8;                             je    .Lx462_61
                        mov              r8, rax;                             jmp   .Lx462_60
.Lx462_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx462_80
                        cmp              al, 104;                             je    .Lx462_80
                        cmp              al, 72;                              jne   .Lx462_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx462_80
                                                                              jmp   .Lx462_74
.Lx462_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx462_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx462_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx462_73
                        lea              r9, [rsp + 272]
.Lx462_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx462_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_65
                        cmp              esi, 1;                              jne   .Lx462_66
                        mov              r9, rax;                             jmp   .Lx462_64
.Lx462_66:              cmp              esi, 2;                              jne   .Lx462_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_65
                        mov              r9, rax;                             jmp   .Lx462_64
.Lx462_67:              cmp              al, 72;                              jne   .Lx462_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_65
                        cmp              rax, r9;                             je    .Lx462_65
                        mov              r9, rax;                             jmp   .Lx462_64
.Lx462_65:              lea              rcx, [rsp + 288]
.Lx462_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx462_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx462_69
                        cmp              esi, 1;                              jne   .Lx462_70
                        mov              rcx, rax;                            jmp   .Lx462_68
.Lx462_70:              cmp              esi, 2;                              jne   .Lx462_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_69
                        mov              rcx, rax;                            jmp   .Lx462_68
.Lx462_71:              cmp              al, 72;                              jne   .Lx462_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx462_69
                        cmp              rax, rcx;                            je    .Lx462_69
                        mov              rcx, rax;                            jmp   .Lx462_68
.Lx462_69:              cmp              r9, rcx;                             je    .Lx462_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx462_75
                        cmp              al, 104;                             je    .Lx462_75
                        cmp              al, 72;                              jne   .Lx462_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx462_75
                                                                              jmp   .Lx462_72
.Lx462_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx462_76
                        cmp              al, 104;                             je    .Lx462_76
                        cmp              al, 72;                              jne   .Lx462_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx462_76
                                                                              jmp   .Lx462_72
.Lx462_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx462_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx462_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx462_77
.Lx462_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx462_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx462_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx462_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx462_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx462_72
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
                        lea              r9, [rsp + 272]
.Lx462_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx462_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_82
                        cmp              esi, 1;                              jne   .Lx462_83
                        mov              r9, rax;                             jmp   .Lx462_81
.Lx462_83:              cmp              esi, 2;                              jne   .Lx462_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_82
                        mov              r9, rax;                             jmp   .Lx462_81
.Lx462_84:              cmp              al, 72;                              jne   .Lx462_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx462_82
                        cmp              rax, r9;                             je    .Lx462_82
                        mov              r9, rax;                             jmp   .Lx462_81
.Lx462_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx462_85
                        cmp              al, 104;                             je    .Lx462_85
                        cmp              al, 72;                              jne   .Lx462_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx462_85
                                                                              jmp   .Lx462_86
.Lx462_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx462_87
.Lx462_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx462_87:              lea              rcx, [rsp + 288]
.Lx462_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx462_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx462_89
                        cmp              esi, 1;                              jne   .Lx462_90
                        mov              rcx, rax;                            jmp   .Lx462_88
.Lx462_90:              cmp              esi, 2;                              jne   .Lx462_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx462_89
                        mov              rcx, rax;                            jmp   .Lx462_88
.Lx462_91:              cmp              al, 72;                              jne   .Lx462_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx462_89
                        cmp              rax, rcx;                            je    .Lx462_89
                        mov              rcx, rax;                            jmp   .Lx462_88
.Lx462_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx462_92
                        cmp              al, 104;                             je    .Lx462_92
                        cmp              al, 72;                              jne   .Lx462_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx462_92
                                                                              jmp   .Lx462_93
.Lx462_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx462_94
.Lx462_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx462_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx462_77
.Lx462_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx462_77
.Lx462_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx462_77:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n434_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n430_var_ref_α
n429_call_builtin_prolog_β:
                        mov              r11, 178;                            jmp   n434_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n431_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n432_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_proc_staged_α:
                        mov              r11, 181
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx468_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx468_201
.Lx468_200:             mov              edi, 0
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
.Lx468_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx468_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx468_203
.Lx468_202:             mov              edi, 1
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
.Lx468_203:             lea              rax, [rip + .Lx468_7]
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
                        test             rax, rax;                            je    .Lx468_1
                        lea              rcx, [rip + .Lx468_3]
                        lea              rdx, [rip + .Lx468_4];               jmp   rax
.Lx468_3:               mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx468_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx468_2
.Lx468_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx468_2
.Lx468_4:               mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx468_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx468_2
.Lx468_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx468_2
.Lx468_1:               call             rt_faildescr@PLT
.Lx468_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx468_29
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
.Lx468_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n434_call_builtin_prolog_α
                                                                              jmp   n433_suspend_α
n432_call_proc_staged_β:
                        mov              r11, 181
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
                        test             rax, rax;                            je    n434_call_builtin_prolog_α
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
                        test             rax, rax;                            je    n434_call_builtin_prolog_α
                        lea              r8, [rip + .Lx468_7]
                        push             r8
                        lea              rcx, [rip + .Lx468_3]
                        lea              rdx, [rip + .Lx468_4];               jmp   rax
.Lx468_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n434_call_builtin_prolog_α
                                                                              jmp   n433_suspend_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n433_suspend_α:         mov              r11, 182
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx470_61
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
.Lx470_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n433_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n433_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n433_suspend_β:         mov              r11, 182;                            jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 183
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
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   member$2F2_ω
n434_call_builtin_prolog_β:
                        mov              r11, 183;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_β:
                                                                              jmp   n421_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx471_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx471_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__occ$2F5:
                        sub              rsp, 1584
                        mov              qword ptr [rsp + 1560], rcx
                        mov              qword ptr [rsp + 1568], rdx
                        mov              qword ptr [rsp + 1576], rsp
                        mov              rdi, rsp
                        mov              esi, 1472
                        mov              edx, 1552
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
occ$2F5_α_body:
                        lea              rax, [rip + n488_suspend_β]
                        mov              qword ptr [rsp + 1472], rax
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_prolog_α:
                        mov              r11, 184
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx524_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx524_101
.Lx524_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx524_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx524_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx524_101
.Lx524_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx524_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_var_ref_α
n472_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 5
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n475_call_builtin_prolog_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n475_call_builtin_prolog_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        mov              rsi, qword ptr [rip + .Lx528_2];     jmp   .Lx528_3
.Lx528_2:               .quad            .Lx528_2_s
.Lx528_2_s:             .string          "clark"
.Lx528_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n476_var_ref_α
n475_call_builtin_prolog_β:
                        mov              r11, 187;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n478_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        lea              r8, [rsp + 1328]
.Lx533_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx533_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx533_41
                        cmp              esi, 1;                              jne   .Lx533_55
                        mov              r8, rax;                             jmp   .Lx533_40
.Lx533_55:              cmp              esi, 2;                              jne   .Lx533_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx533_41
                        mov              r8, rax;                             jmp   .Lx533_40
.Lx533_56:              cmp              al, 72;                              jne   .Lx533_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx533_41
                        cmp              rax, r8;                             je    .Lx533_41
                        mov              r8, rax;                             jmp   .Lx533_40
.Lx533_41:              lea              r9, [rsp + 1344]
.Lx533_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx533_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx533_43
                        cmp              esi, 1;                              jne   .Lx533_57
                        mov              r9, rax;                             jmp   .Lx533_42
.Lx533_57:              cmp              esi, 2;                              jne   .Lx533_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx533_43
                        mov              r9, rax;                             jmp   .Lx533_42
.Lx533_58:              cmp              al, 72;                              jne   .Lx533_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx533_43
                        cmp              rax, r9;                             je    .Lx533_43
                        mov              r9, rax;                             jmp   .Lx533_42
.Lx533_43:              cmp              r8, r9;                              je    .Lx533_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx533_44
                        cmp              al, 104;                             je    .Lx533_44
                        cmp              al, 72;                              jne   .Lx533_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx533_44
                                                                              jmp   .Lx533_45
.Lx533_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx533_53
                        cmp              al, 104;                             je    .Lx533_53
                        cmp              al, 72;                              jne   .Lx533_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx533_53
                                                                              jmp   .Lx533_46
.Lx533_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx533_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx533_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx533_51
.Lx533_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx533_47
                        cmp              al, 104;                             je    .Lx533_47
                        cmp              al, 72;                              jne   .Lx533_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx533_47
                                                                              jmp   .Lx533_48
.Lx533_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx533_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx533_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx533_51
.Lx533_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx533_49
                        cmp              dl, 80;                              je    .Lx533_53
                                                                              jmp   .Lx533_52
.Lx533_49:              cmp              dl, 80;                              je    .Lx533_52
                        cmp              cl, 5;                               je    .Lx533_53
                        cmp              dl, 5;                               je    .Lx533_53
                        cmp              cl, 3;                               jne   .Lx533_50
                        cmp              dl, 3;                               jne   .Lx533_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx533_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx533_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx533_51
                                                                              jmp   .Lx533_52
.Lx533_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx533_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx533_53
.Lx533_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx533_54
.Lx533_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx533_54
.Lx533_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx533_54:              mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_var_ref_α
n478_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n481_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_prolog_α:
                        mov              r11, 193
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        lea              r8, [rsp + 1248]
.Lx538_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx538_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx538_41
                        cmp              esi, 1;                              jne   .Lx538_55
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_55:              cmp              esi, 2;                              jne   .Lx538_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx538_41
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_56:              cmp              al, 72;                              jne   .Lx538_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx538_41
                        cmp              rax, r8;                             je    .Lx538_41
                        mov              r8, rax;                             jmp   .Lx538_40
.Lx538_41:              lea              r9, [rsp + 1264]
.Lx538_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx538_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx538_43
                        cmp              esi, 1;                              jne   .Lx538_57
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_57:              cmp              esi, 2;                              jne   .Lx538_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx538_43
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_58:              cmp              al, 72;                              jne   .Lx538_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx538_43
                        cmp              rax, r9;                             je    .Lx538_43
                        mov              r9, rax;                             jmp   .Lx538_42
.Lx538_43:              cmp              r8, r9;                              je    .Lx538_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx538_44
                        cmp              al, 104;                             je    .Lx538_44
                        cmp              al, 72;                              jne   .Lx538_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx538_44
                                                                              jmp   .Lx538_45
.Lx538_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx538_53
                        cmp              al, 104;                             je    .Lx538_53
                        cmp              al, 72;                              jne   .Lx538_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx538_53
                                                                              jmp   .Lx538_46
.Lx538_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx538_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx538_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx538_51
.Lx538_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx538_47
                        cmp              al, 104;                             je    .Lx538_47
                        cmp              al, 72;                              jne   .Lx538_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx538_47
                                                                              jmp   .Lx538_48
.Lx538_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx538_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx538_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx538_51
.Lx538_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx538_49
                        cmp              dl, 80;                              je    .Lx538_53
                                                                              jmp   .Lx538_52
.Lx538_49:              cmp              dl, 80;                              je    .Lx538_52
                        cmp              cl, 5;                               je    .Lx538_53
                        cmp              dl, 5;                               je    .Lx538_53
                        cmp              cl, 3;                               jne   .Lx538_50
                        cmp              dl, 3;                               jne   .Lx538_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx538_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx538_51
                                                                              jmp   .Lx538_52
.Lx538_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx538_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx538_53
.Lx538_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx538_54
.Lx538_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx538_54
.Lx538_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx538_54:              mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n482_var_ref_α
n481_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n483_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n484_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        lea              r8, [rsp + 1168]
.Lx543_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              esi, 1;                              jne   .Lx543_55
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_55:              cmp              esi, 2;                              jne   .Lx543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_56:              cmp              al, 72;                              jne   .Lx543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx543_41
                        cmp              rax, r8;                             je    .Lx543_41
                        mov              r8, rax;                             jmp   .Lx543_40
.Lx543_41:              lea              r9, [rsp + 1184]
.Lx543_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              esi, 1;                              jne   .Lx543_57
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_57:              cmp              esi, 2;                              jne   .Lx543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_58:              cmp              al, 72;                              jne   .Lx543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx543_43
                        cmp              rax, r9;                             je    .Lx543_43
                        mov              r9, rax;                             jmp   .Lx543_42
.Lx543_43:              cmp              r8, r9;                              je    .Lx543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx543_44
                        cmp              al, 104;                             je    .Lx543_44
                        cmp              al, 72;                              jne   .Lx543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx543_44
                                                                              jmp   .Lx543_45
.Lx543_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx543_53
                        cmp              al, 104;                             je    .Lx543_53
                        cmp              al, 72;                              jne   .Lx543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_53
                                                                              jmp   .Lx543_46
.Lx543_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx543_51
.Lx543_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx543_47
                        cmp              al, 104;                             je    .Lx543_47
                        cmp              al, 72;                              jne   .Lx543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx543_47
                                                                              jmp   .Lx543_48
.Lx543_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx543_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx543_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx543_51
.Lx543_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx543_49
                        cmp              dl, 80;                              je    .Lx543_53
                                                                              jmp   .Lx543_52
.Lx543_49:              cmp              dl, 80;                              je    .Lx543_52
                        cmp              cl, 5;                               je    .Lx543_53
                        cmp              dl, 5;                               je    .Lx543_53
                        cmp              cl, 3;                               jne   .Lx543_50
                        cmp              dl, 3;                               jne   .Lx543_50
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
.Lx543_54:              mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_var_ref_α
n484_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              r11, 199
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        lea              r8, [rsp + 1088]
.Lx548_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              esi, 1;                              jne   .Lx548_55
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_55:              cmp              esi, 2;                              jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_56:              cmp              al, 72;                              jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              rax, r8;                             je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_41:              lea              r9, [rsp + 1104]
.Lx548_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              esi, 1;                              jne   .Lx548_57
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_57:              cmp              esi, 2;                              jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_58:              cmp              al, 72;                              jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              rax, r9;                             je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_43:              cmp              r8, r9;                              je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx548_44
                        cmp              al, 104;                             je    .Lx548_44
                        cmp              al, 72;                              jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx548_44
                                                                              jmp   .Lx548_45
.Lx548_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx548_53
                        cmp              al, 104;                             je    .Lx548_53
                        cmp              al, 72;                              jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_53
                                                                              jmp   .Lx548_46
.Lx548_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx548_51
.Lx548_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx548_47
                        cmp              al, 104;                             je    .Lx548_47
                        cmp              al, 72;                              jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_47
                                                                              jmp   .Lx548_48
.Lx548_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx548_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx548_51
.Lx548_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx548_49
                        cmp              dl, 80;                              je    .Lx548_53
                                                                              jmp   .Lx548_52
.Lx548_49:              cmp              dl, 80;                              je    .Lx548_52
                        cmp              cl, 5;                               je    .Lx548_53
                        cmp              dl, 5;                               je    .Lx548_53
                        cmp              cl, 3;                               jne   .Lx548_50
                        cmp              dl, 3;                               jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx548_51
                                                                              jmp   .Lx548_52
.Lx548_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx548_53
.Lx548_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx548_54
.Lx548_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx548_54
.Lx548_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx548_54:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n489_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_suspend_α
n487_call_builtin_prolog_β:
                        mov              r11, 199;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n488_suspend_α:         mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx550_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1472];         jmp   rax
.Lx550_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n488_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n488_suspend_β]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   occ$2F5_γ
n488_suspend_β:         mov              r11, 200;                            jmp   n489_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n490_var_ref_α
n489_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n491_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 3
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n492_call_builtin_prolog_α
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          "daw"
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        mov              rsi, qword ptr [rip + .Lx555_2];     jmp   .Lx555_3
.Lx555_2:               .quad            .Lx555_2_s
.Lx555_2_s:             .string          "daw"
.Lx555_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n506_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_var_ref_α
n492_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n495_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_builtin_prolog_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        lea              r8, [rsp + 880]
.Lx560_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx560_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx560_41
                        cmp              esi, 1;                              jne   .Lx560_55
                        mov              r8, rax;                             jmp   .Lx560_40
.Lx560_55:              cmp              esi, 2;                              jne   .Lx560_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx560_41
                        mov              r8, rax;                             jmp   .Lx560_40
.Lx560_56:              cmp              al, 72;                              jne   .Lx560_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx560_41
                        cmp              rax, r8;                             je    .Lx560_41
                        mov              r8, rax;                             jmp   .Lx560_40
.Lx560_41:              lea              r9, [rsp + 896]
.Lx560_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx560_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx560_43
                        cmp              esi, 1;                              jne   .Lx560_57
                        mov              r9, rax;                             jmp   .Lx560_42
.Lx560_57:              cmp              esi, 2;                              jne   .Lx560_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx560_43
                        mov              r9, rax;                             jmp   .Lx560_42
.Lx560_58:              cmp              al, 72;                              jne   .Lx560_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx560_43
                        cmp              rax, r9;                             je    .Lx560_43
                        mov              r9, rax;                             jmp   .Lx560_42
.Lx560_43:              cmp              r8, r9;                              je    .Lx560_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx560_44
                        cmp              al, 104;                             je    .Lx560_44
                        cmp              al, 72;                              jne   .Lx560_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx560_44
                                                                              jmp   .Lx560_45
.Lx560_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx560_53
                        cmp              al, 104;                             je    .Lx560_53
                        cmp              al, 72;                              jne   .Lx560_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx560_53
                                                                              jmp   .Lx560_46
.Lx560_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx560_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx560_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx560_51
.Lx560_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx560_47
                        cmp              al, 104;                             je    .Lx560_47
                        cmp              al, 72;                              jne   .Lx560_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx560_47
                                                                              jmp   .Lx560_48
.Lx560_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx560_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx560_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx560_51
.Lx560_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx560_49
                        cmp              dl, 80;                              je    .Lx560_53
                                                                              jmp   .Lx560_52
.Lx560_49:              cmp              dl, 80;                              je    .Lx560_52
                        cmp              cl, 5;                               je    .Lx560_53
                        cmp              dl, 5;                               je    .Lx560_53
                        cmp              cl, 3;                               jne   .Lx560_50
                        cmp              dl, 3;                               jne   .Lx560_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx560_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx560_51
                                                                              jmp   .Lx560_52
.Lx560_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx560_53
.Lx560_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx560_54
.Lx560_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx560_54
.Lx560_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx560_54:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n506_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n496_var_ref_α
n495_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n498_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_prolog_α:
                        mov              r11, 210
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
.Lx565_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx565_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx565_41
                        cmp              esi, 1;                              jne   .Lx565_55
                        mov              r8, rax;                             jmp   .Lx565_40
.Lx565_55:              cmp              esi, 2;                              jne   .Lx565_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx565_41
                        mov              r8, rax;                             jmp   .Lx565_40
.Lx565_56:              cmp              al, 72;                              jne   .Lx565_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx565_41
                        cmp              rax, r8;                             je    .Lx565_41
                        mov              r8, rax;                             jmp   .Lx565_40
.Lx565_41:              lea              r9, [rsp + 816]
.Lx565_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx565_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx565_43
                        cmp              esi, 1;                              jne   .Lx565_57
                        mov              r9, rax;                             jmp   .Lx565_42
.Lx565_57:              cmp              esi, 2;                              jne   .Lx565_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx565_43
                        mov              r9, rax;                             jmp   .Lx565_42
.Lx565_58:              cmp              al, 72;                              jne   .Lx565_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx565_43
                        cmp              rax, r9;                             je    .Lx565_43
                        mov              r9, rax;                             jmp   .Lx565_42
.Lx565_43:              cmp              r8, r9;                              je    .Lx565_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx565_44
                        cmp              al, 104;                             je    .Lx565_44
                        cmp              al, 72;                              jne   .Lx565_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx565_44
                                                                              jmp   .Lx565_45
.Lx565_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx565_53
                        cmp              al, 104;                             je    .Lx565_53
                        cmp              al, 72;                              jne   .Lx565_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx565_53
                                                                              jmp   .Lx565_46
.Lx565_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx565_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx565_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx565_51
.Lx565_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx565_47
                        cmp              al, 104;                             je    .Lx565_47
                        cmp              al, 72;                              jne   .Lx565_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx565_47
                                                                              jmp   .Lx565_48
.Lx565_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx565_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx565_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx565_51
.Lx565_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx565_49
                        cmp              dl, 80;                              je    .Lx565_53
                                                                              jmp   .Lx565_52
.Lx565_49:              cmp              dl, 80;                              je    .Lx565_52
                        cmp              cl, 5;                               je    .Lx565_53
                        cmp              dl, 5;                               je    .Lx565_53
                        cmp              cl, 3;                               jne   .Lx565_50
                        cmp              dl, 3;                               jne   .Lx565_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx565_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx565_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx565_51
                                                                              jmp   .Lx565_52
.Lx565_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx565_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx565_53
.Lx565_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx565_54
.Lx565_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx565_54
.Lx565_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx565_54:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n506_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_var_ref_α
n498_call_builtin_prolog_β:
                        mov              r11, 210;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n500_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n501_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_prolog_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        lea              r8, [rsp + 720]
.Lx570_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx570_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_41
                        cmp              esi, 1;                              jne   .Lx570_55
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_55:              cmp              esi, 2;                              jne   .Lx570_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_41
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_56:              cmp              al, 72;                              jne   .Lx570_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_41
                        cmp              rax, r8;                             je    .Lx570_41
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_41:              lea              r9, [rsp + 736]
.Lx570_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx570_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_43
                        cmp              esi, 1;                              jne   .Lx570_57
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_57:              cmp              esi, 2;                              jne   .Lx570_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_43
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_58:              cmp              al, 72;                              jne   .Lx570_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_43
                        cmp              rax, r9;                             je    .Lx570_43
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_43:              cmp              r8, r9;                              je    .Lx570_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx570_44
                        cmp              al, 104;                             je    .Lx570_44
                        cmp              al, 72;                              jne   .Lx570_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx570_44
                                                                              jmp   .Lx570_45
.Lx570_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx570_53
                        cmp              al, 104;                             je    .Lx570_53
                        cmp              al, 72;                              jne   .Lx570_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_53
                                                                              jmp   .Lx570_46
.Lx570_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx570_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx570_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx570_51
.Lx570_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx570_47
                        cmp              al, 104;                             je    .Lx570_47
                        cmp              al, 72;                              jne   .Lx570_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_47
                                                                              jmp   .Lx570_48
.Lx570_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx570_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx570_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx570_51
.Lx570_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx570_49
                        cmp              dl, 80;                              je    .Lx570_53
                                                                              jmp   .Lx570_52
.Lx570_49:              cmp              dl, 80;                              je    .Lx570_52
                        cmp              cl, 5;                               je    .Lx570_53
                        cmp              dl, 5;                               je    .Lx570_53
                        cmp              cl, 3;                               jne   .Lx570_50
                        cmp              dl, 3;                               jne   .Lx570_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx570_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx570_51
                                                                              jmp   .Lx570_52
.Lx570_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx570_53
.Lx570_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx570_54
.Lx570_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx570_54
.Lx570_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx570_54:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n506_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n502_var_ref_α
n501_call_builtin_prolog_β:
                        mov              r11, 213;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              r11, 216
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
.Lx575_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx575_41
                        cmp              esi, 1;                              jne   .Lx575_55
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_55:              cmp              esi, 2;                              jne   .Lx575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx575_41
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_56:              cmp              al, 72;                              jne   .Lx575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx575_41
                        cmp              rax, r8;                             je    .Lx575_41
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_41:              lea              r9, [rsp + 656]
.Lx575_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx575_43
                        cmp              esi, 1;                              jne   .Lx575_57
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_57:              cmp              esi, 2;                              jne   .Lx575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx575_43
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_58:              cmp              al, 72;                              jne   .Lx575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx575_43
                        cmp              rax, r9;                             je    .Lx575_43
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_43:              cmp              r8, r9;                              je    .Lx575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx575_44
                        cmp              al, 104;                             je    .Lx575_44
                        cmp              al, 72;                              jne   .Lx575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx575_44
                                                                              jmp   .Lx575_45
.Lx575_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx575_53
                        cmp              al, 104;                             je    .Lx575_53
                        cmp              al, 72;                              jne   .Lx575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx575_53
                                                                              jmp   .Lx575_46
.Lx575_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx575_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx575_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx575_51
.Lx575_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx575_47
                        cmp              al, 104;                             je    .Lx575_47
                        cmp              al, 72;                              jne   .Lx575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx575_47
                                                                              jmp   .Lx575_48
.Lx575_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx575_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx575_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx575_51
.Lx575_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx575_49
                        cmp              dl, 80;                              je    .Lx575_53
                                                                              jmp   .Lx575_52
.Lx575_49:              cmp              dl, 80;                              je    .Lx575_52
                        cmp              cl, 5;                               je    .Lx575_53
                        cmp              dl, 5;                               je    .Lx575_53
                        cmp              cl, 3;                               jne   .Lx575_50
                        cmp              dl, 3;                               jne   .Lx575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx575_51
                                                                              jmp   .Lx575_52
.Lx575_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx575_53
.Lx575_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx575_54
.Lx575_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx575_54
.Lx575_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx575_54:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n506_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n505_suspend_α
n504_call_builtin_prolog_β:
                        mov              r11, 216;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n505_suspend_α:         mov              r11, 217
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx577_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1472];         jmp   rax
.Lx577_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n505_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n505_suspend_β]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   occ$2F5_γ
n505_suspend_β:         mov              r11, 217;                            jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_prolog_α:
                        mov              r11, 218
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_var_ref_α
n506_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n508_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n509_call_builtin_prolog_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "fuller"
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_prolog_α:
                        mov              r11, 221
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              rsi, qword ptr [rip + .Lx582_2];     jmp   .Lx582_3
.Lx582_2:               .quad            .Lx582_2_s
.Lx582_2_s:             .string          "fuller"
.Lx582_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n523_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n510_var_ref_α
n509_call_builtin_prolog_β:
                        mov              r11, 221;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n511_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lx587_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx587_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              esi, 1;                              jne   .Lx587_55
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_55:              cmp              esi, 2;                              jne   .Lx587_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_56:              cmp              al, 72;                              jne   .Lx587_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              rax, r8;                             je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_41:              lea              r9, [rsp + 448]
.Lx587_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx587_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              esi, 1;                              jne   .Lx587_57
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_57:              cmp              esi, 2;                              jne   .Lx587_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_58:              cmp              al, 72;                              jne   .Lx587_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              rax, r9;                             je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_43:              cmp              r8, r9;                              je    .Lx587_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx587_44
                        cmp              al, 104;                             je    .Lx587_44
                        cmp              al, 72;                              jne   .Lx587_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx587_44
                                                                              jmp   .Lx587_45
.Lx587_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx587_53
                        cmp              al, 104;                             je    .Lx587_53
                        cmp              al, 72;                              jne   .Lx587_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_53
                                                                              jmp   .Lx587_46
.Lx587_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx587_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx587_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx587_51
.Lx587_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx587_47
                        cmp              al, 104;                             je    .Lx587_47
                        cmp              al, 72;                              jne   .Lx587_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_47
                                                                              jmp   .Lx587_48
.Lx587_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx587_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx587_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx587_51
.Lx587_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx587_49
                        cmp              dl, 80;                              je    .Lx587_53
                                                                              jmp   .Lx587_52
.Lx587_49:              cmp              dl, 80;                              je    .Lx587_52
                        cmp              cl, 5;                               je    .Lx587_53
                        cmp              dl, 5;                               je    .Lx587_53
                        cmp              cl, 3;                               jne   .Lx587_50
                        cmp              dl, 3;                               jne   .Lx587_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx587_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx587_51
                                                                              jmp   .Lx587_52
.Lx587_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx587_53
.Lx587_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx587_54
.Lx587_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx587_54
.Lx587_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx587_54:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n523_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n513_var_ref_α
n512_call_builtin_prolog_β:
                        mov              r11, 224;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n514_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n515_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_prolog_α:
                        mov              r11, 227
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
.Lx592_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              esi, 1;                              jne   .Lx592_55
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_55:              cmp              esi, 2;                              jne   .Lx592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_56:              cmp              al, 72;                              jne   .Lx592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              rax, r8;                             je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_41:              lea              r9, [rsp + 368]
.Lx592_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              esi, 1;                              jne   .Lx592_57
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_57:              cmp              esi, 2;                              jne   .Lx592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_58:              cmp              al, 72;                              jne   .Lx592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              rax, r9;                             je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_43:              cmp              r8, r9;                              je    .Lx592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx592_44
                        cmp              al, 104;                             je    .Lx592_44
                        cmp              al, 72;                              jne   .Lx592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx592_44
                                                                              jmp   .Lx592_45
.Lx592_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx592_53
                        cmp              al, 104;                             je    .Lx592_53
                        cmp              al, 72;                              jne   .Lx592_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_53
                                                                              jmp   .Lx592_46
.Lx592_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx592_51
.Lx592_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx592_47
                        cmp              al, 104;                             je    .Lx592_47
                        cmp              al, 72;                              jne   .Lx592_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_47
                                                                              jmp   .Lx592_48
.Lx592_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx592_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx592_51
.Lx592_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx592_49
                        cmp              dl, 80;                              je    .Lx592_53
                                                                              jmp   .Lx592_52
.Lx592_49:              cmp              dl, 80;                              je    .Lx592_52
                        cmp              cl, 5;                               je    .Lx592_53
                        cmp              dl, 5;                               je    .Lx592_53
                        cmp              cl, 3;                               jne   .Lx592_50
                        cmp              dl, 3;                               jne   .Lx592_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx592_51
                                                                              jmp   .Lx592_52
.Lx592_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx592_53
.Lx592_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx592_54
.Lx592_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx592_54
.Lx592_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n523_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_var_ref_α
n515_call_builtin_prolog_β:
                        mov              r11, 227;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        mov              r11, 230
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
.Lx597_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx597_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx597_41
                        cmp              esi, 1;                              jne   .Lx597_55
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_55:              cmp              esi, 2;                              jne   .Lx597_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx597_41
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_56:              cmp              al, 72;                              jne   .Lx597_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx597_41
                        cmp              rax, r8;                             je    .Lx597_41
                        mov              r8, rax;                             jmp   .Lx597_40
.Lx597_41:              lea              r9, [rsp + 288]
.Lx597_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx597_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx597_43
                        cmp              esi, 1;                              jne   .Lx597_57
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_57:              cmp              esi, 2;                              jne   .Lx597_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx597_43
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_58:              cmp              al, 72;                              jne   .Lx597_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx597_43
                        cmp              rax, r9;                             je    .Lx597_43
                        mov              r9, rax;                             jmp   .Lx597_42
.Lx597_43:              cmp              r8, r9;                              je    .Lx597_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx597_44
                        cmp              al, 104;                             je    .Lx597_44
                        cmp              al, 72;                              jne   .Lx597_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx597_44
                                                                              jmp   .Lx597_45
.Lx597_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx597_53
                        cmp              al, 104;                             je    .Lx597_53
                        cmp              al, 72;                              jne   .Lx597_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx597_53
                                                                              jmp   .Lx597_46
.Lx597_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx597_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx597_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx597_51
.Lx597_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx597_47
                        cmp              al, 104;                             je    .Lx597_47
                        cmp              al, 72;                              jne   .Lx597_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx597_47
                                                                              jmp   .Lx597_48
.Lx597_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx597_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx597_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx597_51
.Lx597_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx597_49
                        cmp              dl, 80;                              je    .Lx597_53
                                                                              jmp   .Lx597_52
.Lx597_49:              cmp              dl, 80;                              je    .Lx597_52
                        cmp              cl, 5;                               je    .Lx597_53
                        cmp              dl, 5;                               je    .Lx597_53
                        cmp              cl, 3;                               jne   .Lx597_50
                        cmp              dl, 3;                               jne   .Lx597_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx597_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx597_51
                                                                              jmp   .Lx597_52
.Lx597_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx597_53
.Lx597_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx597_54
.Lx597_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx597_54
.Lx597_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx597_54:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n523_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n519_var_ref_α
n518_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n520_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n521_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              r11, 233
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        lea              r8, [rsp + 192]
.Lx602_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx602_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_41
                        cmp              esi, 1;                              jne   .Lx602_55
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_55:              cmp              esi, 2;                              jne   .Lx602_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_41
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_56:              cmp              al, 72;                              jne   .Lx602_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx602_41
                        cmp              rax, r8;                             je    .Lx602_41
                        mov              r8, rax;                             jmp   .Lx602_40
.Lx602_41:              lea              r9, [rsp + 208]
.Lx602_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx602_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_43
                        cmp              esi, 1;                              jne   .Lx602_57
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_57:              cmp              esi, 2;                              jne   .Lx602_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx602_43
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_58:              cmp              al, 72;                              jne   .Lx602_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx602_43
                        cmp              rax, r9;                             je    .Lx602_43
                        mov              r9, rax;                             jmp   .Lx602_42
.Lx602_43:              cmp              r8, r9;                              je    .Lx602_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx602_44
                        cmp              al, 104;                             je    .Lx602_44
                        cmp              al, 72;                              jne   .Lx602_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx602_44
                                                                              jmp   .Lx602_45
.Lx602_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx602_53
                        cmp              al, 104;                             je    .Lx602_53
                        cmp              al, 72;                              jne   .Lx602_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_53
                                                                              jmp   .Lx602_46
.Lx602_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx602_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx602_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx602_51
.Lx602_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx602_47
                        cmp              al, 104;                             je    .Lx602_47
                        cmp              al, 72;                              jne   .Lx602_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx602_47
                                                                              jmp   .Lx602_48
.Lx602_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx602_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx602_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx602_51
.Lx602_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx602_49
                        cmp              dl, 80;                              je    .Lx602_53
                                                                              jmp   .Lx602_52
.Lx602_49:              cmp              dl, 80;                              je    .Lx602_52
                        cmp              cl, 5;                               je    .Lx602_53
                        cmp              dl, 5;                               je    .Lx602_53
                        cmp              cl, 3;                               jne   .Lx602_50
                        cmp              dl, 3;                               jne   .Lx602_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx602_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx602_51
                                                                              jmp   .Lx602_52
.Lx602_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx602_53
.Lx602_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx602_54
.Lx602_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx602_54
.Lx602_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx602_54:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n523_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_suspend_α
n521_call_builtin_prolog_β:
                        mov              r11, 233;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n522_suspend_α:         mov              r11, 234
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx604_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1472];         jmp   rax
.Lx604_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n522_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n522_suspend_β]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   occ$2F5_γ
n522_suspend_β:         mov              r11, 234;                            jmp   n523_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        mov              r11, 235
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
                        cmp              al, 104;                             je    occ$2F5_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   occ$2F5_ω
n523_call_builtin_prolog_β:
                        mov              r11, 235;                            jmp   occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
occ$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
occ$2F5_β:
                                                                              jmp   n488_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
occ$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx605_50
                        mov              qword ptr [rsp + 1472], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1472];         jmp   rax
.Lx605_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1560]
                        add              rsp, 1584;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
occ$2F5_ω:
                        mov              rcx, qword ptr [rsp + 1568]
                        add              rsp, 1584;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__display$2F3:
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
display$2F3_α_body:
                        lea              rax, [rip + n636_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_prolog_α:
                        mov              r11, 236
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx638_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx638_101
.Lx638_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx638_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx638_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx638_101
.Lx638_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx638_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    display$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n607_var_ref_α
n606_call_builtin_prolog_β:
                        mov              r11, 236;                            jmp   display$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n608_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_prolog_α:
                        mov              r11, 239
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
.Lx643_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx643_41
                        cmp              esi, 1;                              jne   .Lx643_55
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_55:              cmp              esi, 2;                              jne   .Lx643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx643_41
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_56:              cmp              al, 72;                              jne   .Lx643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx643_41
                        cmp              rax, r8;                             je    .Lx643_41
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_41:              lea              r9, [rsp + 992]
.Lx643_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx643_43
                        cmp              esi, 1;                              jne   .Lx643_57
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_57:              cmp              esi, 2;                              jne   .Lx643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx643_43
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_58:              cmp              al, 72;                              jne   .Lx643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx643_43
                        cmp              rax, r9;                             je    .Lx643_43
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_43:              cmp              r8, r9;                              je    .Lx643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx643_44
                        cmp              al, 104;                             je    .Lx643_44
                        cmp              al, 72;                              jne   .Lx643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx643_44
                                                                              jmp   .Lx643_45
.Lx643_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx643_53
                        cmp              al, 104;                             je    .Lx643_53
                        cmp              al, 72;                              jne   .Lx643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx643_53
                                                                              jmp   .Lx643_46
.Lx643_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx643_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx643_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx643_51
.Lx643_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx643_47
                        cmp              al, 104;                             je    .Lx643_47
                        cmp              al, 72;                              jne   .Lx643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx643_47
                                                                              jmp   .Lx643_48
.Lx643_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx643_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx643_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx643_51
.Lx643_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx643_49
                        cmp              dl, 80;                              je    .Lx643_53
                                                                              jmp   .Lx643_52
.Lx643_49:              cmp              dl, 80;                              je    .Lx643_52
                        cmp              cl, 5;                               je    .Lx643_53
                        cmp              dl, 5;                               je    .Lx643_53
                        cmp              cl, 3;                               jne   .Lx643_50
                        cmp              dl, 3;                               jne   .Lx643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx643_51
                                                                              jmp   .Lx643_52
.Lx643_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx643_53
.Lx643_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx643_54
.Lx643_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx643_54
.Lx643_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx643_54:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n637_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n610_var_ref_α
n609_call_builtin_prolog_β:
                        mov              r11, 239;                            jmp   n637_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n611_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n612_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        mov              r11, 242
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
.Lx648_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              esi, 1;                              jne   .Lx648_55
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_55:              cmp              esi, 2;                              jne   .Lx648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_56:              cmp              al, 72;                              jne   .Lx648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              rax, r8;                             je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_41:              lea              r9, [rsp + 912]
.Lx648_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              esi, 1;                              jne   .Lx648_57
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_57:              cmp              esi, 2;                              jne   .Lx648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_58:              cmp              al, 72;                              jne   .Lx648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              rax, r9;                             je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_43:              cmp              r8, r9;                              je    .Lx648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx648_44
                        cmp              al, 104;                             je    .Lx648_44
                        cmp              al, 72;                              jne   .Lx648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx648_44
                                                                              jmp   .Lx648_45
.Lx648_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_53
                        cmp              al, 104;                             je    .Lx648_53
                        cmp              al, 72;                              jne   .Lx648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_53
                                                                              jmp   .Lx648_46
.Lx648_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx648_51
.Lx648_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_47
                        cmp              al, 104;                             je    .Lx648_47
                        cmp              al, 72;                              jne   .Lx648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_47
                                                                              jmp   .Lx648_48
.Lx648_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx648_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx648_51
.Lx648_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx648_49
                        cmp              dl, 80;                              je    .Lx648_53
                                                                              jmp   .Lx648_52
.Lx648_49:              cmp              dl, 80;                              je    .Lx648_52
                        cmp              cl, 5;                               je    .Lx648_53
                        cmp              dl, 5;                               je    .Lx648_53
                        cmp              cl, 3;                               jne   .Lx648_50
                        cmp              dl, 3;                               jne   .Lx648_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx648_51
                                                                              jmp   .Lx648_52
.Lx648_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx648_53
.Lx648_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx648_54
.Lx648_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx648_54
.Lx648_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx648_54:              mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n637_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_var_ref_α
n612_call_builtin_prolog_β:
                        mov              r11, 242;                            jmp   n637_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n614_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n615_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_prolog_α:
                        mov              r11, 245
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
.Lx653_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx653_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              esi, 1;                              jne   .Lx653_55
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_55:              cmp              esi, 2;                              jne   .Lx653_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_56:              cmp              al, 72;                              jne   .Lx653_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx653_41
                        cmp              rax, r8;                             je    .Lx653_41
                        mov              r8, rax;                             jmp   .Lx653_40
.Lx653_41:              lea              r9, [rsp + 832]
.Lx653_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx653_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              esi, 1;                              jne   .Lx653_57
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_57:              cmp              esi, 2;                              jne   .Lx653_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_58:              cmp              al, 72;                              jne   .Lx653_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx653_43
                        cmp              rax, r9;                             je    .Lx653_43
                        mov              r9, rax;                             jmp   .Lx653_42
.Lx653_43:              cmp              r8, r9;                              je    .Lx653_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx653_44
                        cmp              al, 104;                             je    .Lx653_44
                        cmp              al, 72;                              jne   .Lx653_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx653_44
                                                                              jmp   .Lx653_45
.Lx653_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_53
                        cmp              al, 104;                             je    .Lx653_53
                        cmp              al, 72;                              jne   .Lx653_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_53
                                                                              jmp   .Lx653_46
.Lx653_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx653_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx653_51
.Lx653_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx653_47
                        cmp              al, 104;                             je    .Lx653_47
                        cmp              al, 72;                              jne   .Lx653_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx653_47
                                                                              jmp   .Lx653_48
.Lx653_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx653_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx653_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx653_51
.Lx653_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx653_49
                        cmp              dl, 80;                              je    .Lx653_53
                                                                              jmp   .Lx653_52
.Lx653_49:              cmp              dl, 80;                              je    .Lx653_52
                        cmp              cl, 5;                               je    .Lx653_53
                        cmp              dl, 5;                               je    .Lx653_53
                        cmp              cl, 3;                               jne   .Lx653_50
                        cmp              dl, 3;                               jne   .Lx653_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx653_51
                                                                              jmp   .Lx653_52
.Lx653_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx653_53
.Lx653_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx653_54
.Lx653_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx653_54
.Lx653_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx653_54:              mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n637_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_var_ref_α
n615_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   n637_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n618_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n619_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 9
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n620_lit_string_α
.Lx660_0:               .quad            .Lx660_0_s
.Lx660_0_s:             .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 5
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n621_call_proc_staged_α
.Lx661_0:               .quad            .Lx661_0_s
.Lx661_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n621_call_proc_staged_α:
                        mov              r11, 251
                        mov              qword ptr [rsp + 688], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_200
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx663_201
.Lx663_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx663_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_202
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx663_203
.Lx663_202:             mov              edi, 1
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
.Lx663_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_204
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx663_205
.Lx663_204:             mov              edi, 2
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
.Lx663_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_206
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx663_207
.Lx663_206:             mov              edi, 3
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
.Lx663_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx663_208
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx663_209
.Lx663_208:             mov              edi, 4
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
.Lx663_209:             lea              rax, [rip + .Lx663_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 5
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
.Lx663_3:               mov              qword ptr [rsp + 696], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 688]
                        test             rax, rax;                            jne   .Lx663_5
                        mov              qword ptr [rsp + 688], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx663_2
.Lx663_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx663_2
.Lx663_4:               mov              rax, qword ptr [rsp + 688]
                        test             rax, rax;                            jne   .Lx663_6
                        mov              qword ptr [rsp + 688], 1
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
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx663_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n637_call_builtin_prolog_α
                                                                              jmp   n622_var_ref_α
n621_call_proc_staged_β:
                        mov              r11, 251
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 688], 0
                        lea              rdi, [rsp + 704]
                        lea              rsi, [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n637_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              ecx, 96
                        mov              r8d, 1904
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 2
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
                        mov              edi, 3
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
                        mov              edi, 4
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
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n637_call_builtin_prolog_α
                        lea              r8, [rip + .Lx663_7]
                        push             r8
                        lea              rcx, [rip + .Lx663_3]
                        lea              rdx, [rip + .Lx663_4];               jmp   rax
.Lx663_7:               add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n637_call_builtin_prolog_α
                                                                              jmp   n622_var_ref_α
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n623_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n624_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n625_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 7
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n626_lit_string_α
.Lx670_0:               .quad            .Lx670_0_s
.Lx670_0_s:             .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 3
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n627_call_proc_staged_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "daw"
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        mov              r11, 257
                        mov              qword ptr [rsp + 480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx673_200
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx673_201
.Lx673_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx673_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx673_202
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx673_203
.Lx673_202:             mov              edi, 1
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
.Lx673_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx673_204
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx673_205
.Lx673_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx673_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx673_206
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx673_207
.Lx673_206:             mov              edi, 3
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
.Lx673_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx673_208
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx673_209
.Lx673_208:             mov              edi, 4
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
.Lx673_209:             lea              rax, [rip + .Lx673_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx673_1
                        lea              rcx, [rip + .Lx673_3]
                        lea              rdx, [rip + .Lx673_4];               jmp   rax
.Lx673_3:               mov              qword ptr [rsp + 488], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx673_5
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx673_2
.Lx673_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx673_2
.Lx673_4:               mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx673_6
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx673_2
.Lx673_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx673_2
.Lx673_1:               call             rt_faildescr@PLT
.Lx673_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx673_29
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
.Lx673_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n628_var_ref_α
n627_call_proc_staged_β:
                        mov              r11, 257
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 480], 0
                        lea              rdi, [rsp + 496]
                        lea              rsi, [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n621_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              ecx, 96
                        mov              r8d, 1904
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
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
                        mov              edi, 4
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
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n621_call_proc_staged_β
                        lea              r8, [rip + .Lx673_7]
                        push             r8
                        lea              rcx, [rip + .Lx673_3]
                        lea              rdx, [rip + .Lx673_4];               jmp   rax
.Lx673_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n628_var_ref_α
.Lx673_0:               .quad            .Lx673_0_s
.Lx673_0_s:             .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1056]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n629_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1072]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n630_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1088]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n631_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 7
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n632_lit_string_α
.Lx680_0:               .quad            .Lx680_0_s
.Lx680_0_s:             .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:      mov              r11, 262
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 6
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n633_call_proc_staged_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "fuller"
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        mov              r11, 263
                        mov              qword ptr [rsp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_200
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx683_201
.Lx683_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx683_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_202
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx683_203
.Lx683_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx683_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_204
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx683_205
.Lx683_204:             mov              edi, 2
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
.Lx683_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_206
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx683_207
.Lx683_206:             mov              edi, 3
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
.Lx683_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx683_208
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx683_209
.Lx683_208:             mov              edi, 4
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
.Lx683_209:             lea              rax, [rip + .Lx683_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 5
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
.Lx683_3:               mov              qword ptr [rsp + 280], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx683_5
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx683_2
.Lx683_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx683_2
.Lx683_4:               mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx683_6
                        mov              qword ptr [rsp + 272], 1
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx683_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n627_call_proc_staged_β
                                                                              jmp   n634_lit_string_α
n633_call_proc_staged_β:
                        mov              r11, 263
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 272], 0
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n627_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              ecx, 96
                        mov              r8d, 1904
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 3
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
                        mov              edi, 4
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
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n627_call_proc_staged_β
                        lea              r8, [rip + .Lx683_7]
                        push             r8
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4];               jmp   rax
.Lx683_7:               add              rsp, 8
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n627_call_proc_staged_β
                                                                              jmp   n634_lit_string_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n635_call_builtin_prolog_α
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_prolog_α:
                        mov              r11, 265
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn686:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n633_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n636_suspend_α
n635_call_builtin_prolog_β:
                        mov              r11, 265;                            jmp   n633_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n636_suspend_α:         mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx688_61
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
.Lx688_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n636_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n636_suspend_β]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   display$2F3_γ
n636_suspend_β:         mov              r11, 266;                            jmp   n633_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n637_call_builtin_prolog_α:
                        mov              r11, 267
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
                        cmp              al, 104;                             je    display$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   display$2F3_ω
n637_call_builtin_prolog_β:
                        mov              r11, 267;                            jmp   display$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
display$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display$2F3_β:
                                                                              jmp   n636_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
display$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx689_50
                        mov              qword ptr [rsp + 1040], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040];         jmp   rax
.Lx689_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1128]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
display$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1136]
                        add              rsp, 1152;                           jmp   rcx
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
n690_call_builtin_prolog_α:
                        mov              r11, 268
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx695_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx695_101
.Lx695_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx695_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx695_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx695_101
.Lx695_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx695_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n691_call_proc_staged_α
n690_call_builtin_prolog_β:
                        mov              r11, 268;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n691_call_proc_staged_α:
                        mov              r11, 269
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx697_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx697_1
                        lea              rcx, [rip + .Lx697_3]
                        lea              rdx, [rip + .Lx697_4];               jmp   rax
.Lx697_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx697_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx697_2
.Lx697_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx697_2
.Lx697_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx697_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx697_2
.Lx697_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx697_2
.Lx697_1:               call             rt_faildescr@PLT
.Lx697_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx697_29
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
.Lx697_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n694_call_builtin_prolog_α
                                                                              jmp   n692_move_label_α
n691_call_proc_staged_β:
                        mov              r11, 269
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
                        test             rax, rax;                            je    n694_call_builtin_prolog_α
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
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n694_call_builtin_prolog_α
                        lea              r8, [rip + .Lx697_7]
                        push             r8
                        lea              rcx, [rip + .Lx697_3]
                        lea              rdx, [rip + .Lx697_4];               jmp   rax
.Lx697_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n694_call_builtin_prolog_α
                                                                              jmp   n692_move_label_α
.Lx697_0:               .quad            .Lx697_0_s
.Lx697_0_s:             .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n692_move_label_α:      mov              r11, 270
                        lea              rax, [rip + n691_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n693_disjunction_α:     mov              r11, 271
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
n693_disjunction_β:     mov              r11, 271;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n694_call_builtin_prolog_α:
                        mov              r11, 272
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n694_call_builtin_prolog_β:
                        mov              r11, 272;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n693_disjunction_α
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
.Lstartup_pname0:       .string          "differ/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__differ$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1344
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "write_occ/5"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__write_occ$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            2016
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
                        .long            832
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "occupation/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__occupation$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            656
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj0/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
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
.Lstartup_pname6:       .string          "occ/5"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__occ$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            1536
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "display/3"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__display$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1104
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
