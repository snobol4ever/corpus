                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sumdigit$2F5:
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rcx
                        mov              qword ptr [rsp + 1440], rdx
                        mov              qword ptr [rsp + 1448], rsp
                        mov              rdi, rsp
                        mov              esi, 1296
                        mov              edx, 1424
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sumdigit$2F5_α_body:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rsp + 1296], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx42_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx42_101
.Lx42_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx42_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx42_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx42_101
.Lx42_100:              lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx42_101:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_ω
                                                                              jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   sumdigit$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        lea              r8, [rsp + 1232]
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
.Lx47_41:               lea              r9, [rsp + 1248]
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
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx47_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx47_51
.Lx47_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx47_47
                        cmp              al, 104;                             je    .Lx47_47
                        cmp              al, 72;                              jne   .Lx47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx47_47
                                                                              jmp   .Lx47_48
.Lx47_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx47_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx47_54:               mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
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
.Lx52_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx52_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx52_41
                        cmp              esi, 1;                              jne   .Lx52_55
                        mov              r8, rax;                             jmp   .Lx52_40
.Lx52_55:               cmp              esi, 2;                              jne   .Lx52_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx52_41
                        mov              r8, rax;                             jmp   .Lx52_40
.Lx52_56:               cmp              al, 72;                              jne   .Lx52_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx52_41
                        cmp              rax, r8;                             je    .Lx52_41
                        mov              r8, rax;                             jmp   .Lx52_40
.Lx52_41:               lea              r9, [rsp + 1168]
.Lx52_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx52_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx52_43
                        cmp              esi, 1;                              jne   .Lx52_57
                        mov              r9, rax;                             jmp   .Lx52_42
.Lx52_57:               cmp              esi, 2;                              jne   .Lx52_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx52_43
                        mov              r9, rax;                             jmp   .Lx52_42
.Lx52_58:               cmp              al, 72;                              jne   .Lx52_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx52_43
                        cmp              rax, r9;                             je    .Lx52_43
                        mov              r9, rax;                             jmp   .Lx52_42
.Lx52_43:               cmp              r8, r9;                              je    .Lx52_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx52_44
                        cmp              al, 104;                             je    .Lx52_44
                        cmp              al, 72;                              jne   .Lx52_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx52_44
                                                                              jmp   .Lx52_45
.Lx52_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx52_53
                        cmp              al, 104;                             je    .Lx52_53
                        cmp              al, 72;                              jne   .Lx52_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx52_53
                                                                              jmp   .Lx52_46
.Lx52_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx52_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx52_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx52_51
.Lx52_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx52_47
                        cmp              al, 104;                             je    .Lx52_47
                        cmp              al, 72;                              jne   .Lx52_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx52_47
                                                                              jmp   .Lx52_48
.Lx52_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx52_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx52_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx52_51
.Lx52_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx52_49
                        cmp              dl, 80;                              je    .Lx52_53
                                                                              jmp   .Lx52_52
.Lx52_49:               cmp              dl, 80;                              je    .Lx52_52
                        cmp              cl, 5;                               je    .Lx52_53
                        cmp              dl, 5;                               je    .Lx52_53
                        cmp              cl, 3;                               jne   .Lx52_50
                        cmp              dl, 3;                               jne   .Lx52_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx52_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx52_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx52_51
                                                                              jmp   .Lx52_52
.Lx52_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx52_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx52_53
.Lx52_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx52_54
.Lx52_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx52_54
.Lx52_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx52_54:               mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
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
.Lx57_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx57_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx57_41
                        cmp              esi, 1;                              jne   .Lx57_55
                        mov              r8, rax;                             jmp   .Lx57_40
.Lx57_55:               cmp              esi, 2;                              jne   .Lx57_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx57_41
                        mov              r8, rax;                             jmp   .Lx57_40
.Lx57_56:               cmp              al, 72;                              jne   .Lx57_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx57_41
                        cmp              rax, r8;                             je    .Lx57_41
                        mov              r8, rax;                             jmp   .Lx57_40
.Lx57_41:               lea              r9, [rsp + 1088]
.Lx57_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx57_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx57_43
                        cmp              esi, 1;                              jne   .Lx57_57
                        mov              r9, rax;                             jmp   .Lx57_42
.Lx57_57:               cmp              esi, 2;                              jne   .Lx57_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx57_43
                        mov              r9, rax;                             jmp   .Lx57_42
.Lx57_58:               cmp              al, 72;                              jne   .Lx57_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx57_43
                        cmp              rax, r9;                             je    .Lx57_43
                        mov              r9, rax;                             jmp   .Lx57_42
.Lx57_43:               cmp              r8, r9;                              je    .Lx57_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx57_44
                        cmp              al, 104;                             je    .Lx57_44
                        cmp              al, 72;                              jne   .Lx57_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx57_44
                                                                              jmp   .Lx57_45
.Lx57_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx57_53
                        cmp              al, 104;                             je    .Lx57_53
                        cmp              al, 72;                              jne   .Lx57_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx57_53
                                                                              jmp   .Lx57_46
.Lx57_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx57_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx57_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx57_51
.Lx57_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx57_47
                        cmp              al, 104;                             je    .Lx57_47
                        cmp              al, 72;                              jne   .Lx57_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx57_47
                                                                              jmp   .Lx57_48
.Lx57_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx57_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx57_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx57_51
.Lx57_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx57_49
                        cmp              dl, 80;                              je    .Lx57_53
                                                                              jmp   .Lx57_52
.Lx57_49:               cmp              dl, 80;                              je    .Lx57_52
                        cmp              cl, 5;                               je    .Lx57_53
                        cmp              dl, 5;                               je    .Lx57_53
                        cmp              cl, 3;                               jne   .Lx57_50
                        cmp              dl, 3;                               jne   .Lx57_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx57_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx57_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx57_51
                                                                              jmp   .Lx57_52
.Lx57_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx57_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx57_53
.Lx57_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx57_54
.Lx57_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx57_54
.Lx57_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx57_54:               mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
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
.Lx62_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx62_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx62_41
                        cmp              esi, 1;                              jne   .Lx62_55
                        mov              r8, rax;                             jmp   .Lx62_40
.Lx62_55:               cmp              esi, 2;                              jne   .Lx62_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_41
                        mov              r8, rax;                             jmp   .Lx62_40
.Lx62_56:               cmp              al, 72;                              jne   .Lx62_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx62_41
                        cmp              rax, r8;                             je    .Lx62_41
                        mov              r8, rax;                             jmp   .Lx62_40
.Lx62_41:               lea              r9, [rsp + 1008]
.Lx62_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx62_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_43
                        cmp              esi, 1;                              jne   .Lx62_57
                        mov              r9, rax;                             jmp   .Lx62_42
.Lx62_57:               cmp              esi, 2;                              jne   .Lx62_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx62_43
                        mov              r9, rax;                             jmp   .Lx62_42
.Lx62_58:               cmp              al, 72;                              jne   .Lx62_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx62_43
                        cmp              rax, r9;                             je    .Lx62_43
                        mov              r9, rax;                             jmp   .Lx62_42
.Lx62_43:               cmp              r8, r9;                              je    .Lx62_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx62_44
                        cmp              al, 104;                             je    .Lx62_44
                        cmp              al, 72;                              jne   .Lx62_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx62_44
                                                                              jmp   .Lx62_45
.Lx62_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx62_53
                        cmp              al, 104;                             je    .Lx62_53
                        cmp              al, 72;                              jne   .Lx62_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx62_53
                                                                              jmp   .Lx62_46
.Lx62_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx62_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx62_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx62_51
.Lx62_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx62_47
                        cmp              al, 104;                             je    .Lx62_47
                        cmp              al, 72;                              jne   .Lx62_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx62_47
                                                                              jmp   .Lx62_48
.Lx62_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx62_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx62_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx62_51
.Lx62_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx62_49
                        cmp              dl, 80;                              je    .Lx62_53
                                                                              jmp   .Lx62_52
.Lx62_49:               cmp              dl, 80;                              je    .Lx62_52
                        cmp              cl, 5;                               je    .Lx62_53
                        cmp              dl, 5;                               je    .Lx62_53
                        cmp              cl, 3;                               jne   .Lx62_50
                        cmp              dl, 3;                               jne   .Lx62_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx62_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx62_51
                                                                              jmp   .Lx62_52
.Lx62_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx62_53
.Lx62_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx62_54
.Lx62_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx62_54
.Lx62_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx62_54:               mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
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
.Lx67_41:               lea              r9, [rsp + 928]
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
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx67_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx67_51
.Lx67_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx67_47
                        cmp              al, 104;                             je    .Lx67_47
                        cmp              al, 72;                              jne   .Lx67_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx67_47
                                                                              jmp   .Lx67_48
.Lx67_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx67_53
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
.Lx67_54:               mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 856], rax;          jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 872], rax;          jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n20_var_α
n19_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 888], rax;          jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n23_var_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 632], rax;          jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n25_call_builtin_prolog_α
.Lx81_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n32_var_ref_α
                                                                              jmp   n26_var_ref_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
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
.Lx87_41:               lea              r9, [rsp + 288]
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
.Lx87_54:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n31_call_builtin_prolog_α
.Lx90_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n40_suspend_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 552], rax;          jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n35_call_builtin_prolog_α
.Lx96_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n37_var_ref_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n39_call_builtin_prolog_α
.Lx101_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n41_call_builtin_prolog_α
                                                                              jmp   n40_suspend_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:          mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx104_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296];         jmp   rax
.Lx104_61:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        lea              rdx, [rip + n40_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   sumdigit$2F5_γ
n40_suspend_β:          mov              r11, 41;                             jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              r11, 42
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
                        cmp              al, 104;                             je    sumdigit$2F5_ω
                                                                              jmp   sumdigit$2F5_ω
n41_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   sumdigit$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_β:
                                                                              jmp   n40_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx105_50
                        mov              qword ptr [rsp + 1296], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296];         jmp   rax
.Lx105_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1432]
                        add              rsp, 1456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ω:
                        mov              rcx, qword ptr [rsp + 1440]
                        add              rsp, 1456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__digit$2F1:
                        sub              rsp, 2528
                        mov              qword ptr [rsp + 2504], rcx
                        mov              qword ptr [rsp + 2512], rdx
                        mov              qword ptr [rsp + 2520], rsp
                        mov              rdi, rsp
                        mov              esi, 2464
                        mov              edx, 2496
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
digit$2F1_α_body:
                        lea              rax, [rip + n114_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              r11, 43
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx197_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx197_101
.Lx197_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx197_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx197_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx197_101
.Lx197_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx197_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              r11, 45
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n109_lit_integer_α
.Lx200_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 46
                        mov              qword ptr [rsp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n110_call_builtin_prolog_α
.Lx201_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        lea              rdi, [rsp + 2368]
                        lea              r8, [rsp + 2368]
.Lx202_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx202_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_111
                        cmp              esi, 1;                              jne   .Lx202_112
                        mov              r8, rax;                             jmp   .Lx202_110
.Lx202_112:             cmp              esi, 2;                              jne   .Lx202_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx202_111
                        mov              r8, rax;                             jmp   .Lx202_110
.Lx202_113:             cmp              al, 72;                              jne   .Lx202_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx202_111
                        cmp              rax, r8;                             je    .Lx202_111
                        mov              r8, rax;                             jmp   .Lx202_110
.Lx202_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx202_114
                        cmp              al, 104;                             je    .Lx202_114
                        cmp              al, 72;                              jne   .Lx202_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx202_114
                                                                              jmp   .Lx202_118
.Lx202_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx202_115
                        cmp              al, 3;                               jne   .Lx202_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx202_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx202_115
                                                                              jmp   .Lx202_114
.Lx202_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx202_117
.Lx202_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx202_117
.Lx202_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx202_117:             mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n116_var_ref_α
                                                                              jmp   n111_var_ref_α
n110_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 49
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n113_call_builtin_prolog_α
.Lx205_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        lea              rdi, [rsp + 2288]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                                                                              jmp   n114_suspend_α
n113_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_suspend_α:         mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx208_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx208_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n114_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n114_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n114_suspend_β:         mov              r11, 51;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2248], rax
                        lea              rdi, [rsp + 2240]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n118_lit_integer_α
.Lx212_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 55
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n119_call_builtin_prolog_α
.Lx213_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        lea              r8, [rsp + 2128]
.Lx214_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx214_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_111
                        cmp              esi, 1;                              jne   .Lx214_112
                        mov              r8, rax;                             jmp   .Lx214_110
.Lx214_112:             cmp              esi, 2;                              jne   .Lx214_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx214_111
                        mov              r8, rax;                             jmp   .Lx214_110
.Lx214_113:             cmp              al, 72;                              jne   .Lx214_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx214_111
                        cmp              rax, r8;                             je    .Lx214_111
                        mov              r8, rax;                             jmp   .Lx214_110
.Lx214_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx214_114
                        cmp              al, 104;                             je    .Lx214_114
                        cmp              al, 72;                              jne   .Lx214_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx214_114
                                                                              jmp   .Lx214_118
.Lx214_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx214_115
                        cmp              al, 3;                               jne   .Lx214_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx214_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx214_115
                                                                              jmp   .Lx214_114
.Lx214_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx214_117
.Lx214_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx214_117
.Lx214_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx214_117:             mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n125_var_ref_α
                                                                              jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              r11, 58
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n122_call_builtin_prolog_α
.Lx217_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        lea              rdi, [rsp + 2048]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n124_call_builtin_prolog_α
                                                                              jmp   n123_suspend_α
n122_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_suspend_α:         mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx220_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx220_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n123_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n123_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n123_suspend_β:         mov              r11, 60;                             jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n127_lit_integer_α
.Lx224_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              r11, 64
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n128_call_builtin_prolog_α
.Lx225_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lx226_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx226_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx226_111
                        cmp              esi, 1;                              jne   .Lx226_112
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_112:             cmp              esi, 2;                              jne   .Lx226_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx226_111
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_113:             cmp              al, 72;                              jne   .Lx226_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx226_111
                        cmp              rax, r8;                             je    .Lx226_111
                        mov              r8, rax;                             jmp   .Lx226_110
.Lx226_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx226_114
                        cmp              al, 104;                             je    .Lx226_114
                        cmp              al, 72;                              jne   .Lx226_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx226_114
                                                                              jmp   .Lx226_118
.Lx226_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx226_115
                        cmp              al, 3;                               jne   .Lx226_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx226_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx226_115
                                                                              jmp   .Lx226_114
.Lx226_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx226_117
.Lx226_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx226_117
.Lx226_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx226_117:             mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n134_var_ref_α
                                                                              jmp   n129_var_ref_α
n128_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n130_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 67
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n131_call_builtin_prolog_α
.Lx229_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n133_call_builtin_prolog_α
                                                                              jmp   n132_suspend_α
n131_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_suspend_α:         mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx232_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx232_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n132_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n132_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n132_suspend_β:         mov              r11, 69;                             jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n136_lit_integer_α
.Lx236_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n137_call_builtin_prolog_α
.Lx237_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        lea              r8, [rsp + 1648]
.Lx238_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx238_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx238_111
                        cmp              esi, 1;                              jne   .Lx238_112
                        mov              r8, rax;                             jmp   .Lx238_110
.Lx238_112:             cmp              esi, 2;                              jne   .Lx238_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx238_111
                        mov              r8, rax;                             jmp   .Lx238_110
.Lx238_113:             cmp              al, 72;                              jne   .Lx238_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx238_111
                        cmp              rax, r8;                             je    .Lx238_111
                        mov              r8, rax;                             jmp   .Lx238_110
.Lx238_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx238_114
                        cmp              al, 104;                             je    .Lx238_114
                        cmp              al, 72;                              jne   .Lx238_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx238_114
                                                                              jmp   .Lx238_118
.Lx238_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx238_115
                        cmp              al, 3;                               jne   .Lx238_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx238_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx238_115
                                                                              jmp   .Lx238_114
.Lx238_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx238_117
.Lx238_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx238_117
.Lx238_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx238_117:             mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n143_var_ref_α
                                                                              jmp   n138_var_ref_α
n137_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n139_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n140_call_builtin_prolog_α
.Lx241_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n142_call_builtin_prolog_α
                                                                              jmp   n141_suspend_α
n140_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_suspend_α:         mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx244_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx244_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n141_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n141_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n141_suspend_β:         mov              r11, 78;                             jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n143_var_ref_α
n142_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n145_lit_integer_α
.Lx248_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n146_call_builtin_prolog_α
.Lx249_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        lea              r8, [rsp + 1408]
.Lx250_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx250_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx250_111
                        cmp              esi, 1;                              jne   .Lx250_112
                        mov              r8, rax;                             jmp   .Lx250_110
.Lx250_112:             cmp              esi, 2;                              jne   .Lx250_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx250_111
                        mov              r8, rax;                             jmp   .Lx250_110
.Lx250_113:             cmp              al, 72;                              jne   .Lx250_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx250_111
                        cmp              rax, r8;                             je    .Lx250_111
                        mov              r8, rax;                             jmp   .Lx250_110
.Lx250_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx250_114
                        cmp              al, 104;                             je    .Lx250_114
                        cmp              al, 72;                              jne   .Lx250_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx250_114
                                                                              jmp   .Lx250_118
.Lx250_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx250_115
                        cmp              al, 3;                               jne   .Lx250_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx250_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx250_115
                                                                              jmp   .Lx250_114
.Lx250_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx250_117
.Lx250_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx250_117
.Lx250_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx250_117:             mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n152_var_ref_α
                                                                              jmp   n147_var_ref_α
n146_call_builtin_prolog_β:
                        mov              r11, 83;                             jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 85
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n149_call_builtin_prolog_α
.Lx253_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n151_call_builtin_prolog_α
                                                                              jmp   n150_suspend_α
n149_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_suspend_α:         mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx256_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx256_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n150_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n150_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n150_suspend_β:         mov              r11, 87;                             jmp   n151_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n152_var_ref_α
n151_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n154_lit_integer_α
.Lx260_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n155_call_builtin_prolog_α
.Lx261_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        lea              r8, [rsp + 1168]
.Lx262_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx262_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_111
                        cmp              esi, 1;                              jne   .Lx262_112
                        mov              r8, rax;                             jmp   .Lx262_110
.Lx262_112:             cmp              esi, 2;                              jne   .Lx262_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx262_111
                        mov              r8, rax;                             jmp   .Lx262_110
.Lx262_113:             cmp              al, 72;                              jne   .Lx262_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_111
                        cmp              rax, r8;                             je    .Lx262_111
                        mov              r8, rax;                             jmp   .Lx262_110
.Lx262_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx262_114
                        cmp              al, 104;                             je    .Lx262_114
                        cmp              al, 72;                              jne   .Lx262_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx262_114
                                                                              jmp   .Lx262_118
.Lx262_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx262_115
                        cmp              al, 3;                               jne   .Lx262_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx262_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx262_115
                                                                              jmp   .Lx262_114
.Lx262_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx262_117
.Lx262_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx262_117
.Lx262_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_117:             mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n161_var_ref_α
                                                                              jmp   n156_var_ref_α
n155_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n158_call_builtin_prolog_α
.Lx265_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n160_call_builtin_prolog_α
                                                                              jmp   n159_suspend_α
n158_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:         mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx268_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx268_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n159_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n159_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n159_suspend_β:         mov              r11, 96;                             jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n161_var_ref_α
n160_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n162_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n163_lit_integer_α
.Lx272_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n164_call_builtin_prolog_α
.Lx273_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lx274_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx274_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx274_111
                        cmp              esi, 1;                              jne   .Lx274_112
                        mov              r8, rax;                             jmp   .Lx274_110
.Lx274_112:             cmp              esi, 2;                              jne   .Lx274_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx274_111
                        mov              r8, rax;                             jmp   .Lx274_110
.Lx274_113:             cmp              al, 72;                              jne   .Lx274_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx274_111
                        cmp              rax, r8;                             je    .Lx274_111
                        mov              r8, rax;                             jmp   .Lx274_110
.Lx274_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx274_114
                        cmp              al, 104;                             je    .Lx274_114
                        cmp              al, 72;                              jne   .Lx274_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx274_114
                                                                              jmp   .Lx274_118
.Lx274_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx274_115
                        cmp              al, 3;                               jne   .Lx274_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx274_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx274_115
                                                                              jmp   .Lx274_114
.Lx274_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx274_117
.Lx274_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx274_117
.Lx274_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx274_117:             mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n170_var_ref_α
                                                                              jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                        mov              r11, 101;                            jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n167_call_builtin_prolog_α
.Lx277_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n169_call_builtin_prolog_α
                                                                              jmp   n168_suspend_α
n167_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:         mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx280_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx280_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n168_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n168_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n168_suspend_β:         mov              r11, 105;                            jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n170_var_ref_α
n169_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n172_lit_integer_α
.Lx284_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n173_call_builtin_prolog_α
.Lx285_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx286_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx286_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx286_111
                        cmp              esi, 1;                              jne   .Lx286_112
                        mov              r8, rax;                             jmp   .Lx286_110
.Lx286_112:             cmp              esi, 2;                              jne   .Lx286_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx286_111
                        mov              r8, rax;                             jmp   .Lx286_110
.Lx286_113:             cmp              al, 72;                              jne   .Lx286_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx286_111
                        cmp              rax, r8;                             je    .Lx286_111
                        mov              r8, rax;                             jmp   .Lx286_110
.Lx286_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx286_114
                        cmp              al, 104;                             je    .Lx286_114
                        cmp              al, 72;                              jne   .Lx286_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx286_114
                                                                              jmp   .Lx286_118
.Lx286_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx286_115
                        cmp              al, 3;                               jne   .Lx286_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx286_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx286_115
                                                                              jmp   .Lx286_114
.Lx286_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx286_117
.Lx286_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx286_117
.Lx286_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx286_117:             mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n179_var_ref_α
                                                                              jmp   n174_var_ref_α
n173_call_builtin_prolog_β:
                        mov              r11, 110;                            jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n176_call_builtin_prolog_α
.Lx289_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n178_call_builtin_prolog_α
                                                                              jmp   n177_suspend_α
n176_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n178_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_suspend_α:         mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx292_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx292_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n177_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n177_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n177_suspend_β:         mov              r11, 114;                            jmp   n178_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n179_var_ref_α
n178_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n181_lit_integer_α
.Lx296_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n182_call_builtin_prolog_α
.Lx297_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx298_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx298_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_111
                        cmp              esi, 1;                              jne   .Lx298_112
                        mov              r8, rax;                             jmp   .Lx298_110
.Lx298_112:             cmp              esi, 2;                              jne   .Lx298_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx298_111
                        mov              r8, rax;                             jmp   .Lx298_110
.Lx298_113:             cmp              al, 72;                              jne   .Lx298_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_111
                        cmp              rax, r8;                             je    .Lx298_111
                        mov              r8, rax;                             jmp   .Lx298_110
.Lx298_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx298_114
                        cmp              al, 104;                             je    .Lx298_114
                        cmp              al, 72;                              jne   .Lx298_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx298_114
                                                                              jmp   .Lx298_118
.Lx298_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx298_115
                        cmp              al, 3;                               jne   .Lx298_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx298_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx298_115
                                                                              jmp   .Lx298_114
.Lx298_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx298_117
.Lx298_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx298_117
.Lx298_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx298_117:             mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n188_var_ref_α
                                                                              jmp   n183_var_ref_α
n182_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n188_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n185_call_builtin_prolog_α
.Lx301_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              r11, 122
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n187_call_builtin_prolog_α
                                                                              jmp   n186_suspend_α
n185_call_builtin_prolog_β:
                        mov              r11, 122;                            jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n186_suspend_α:         mov              r11, 123
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx304_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx304_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n186_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n186_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n186_suspend_β:         mov              r11, 123;                            jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              r11, 124
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n188_var_ref_α
n187_call_builtin_prolog_β:
                        mov              r11, 124;                            jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n190_lit_integer_α
.Lx308_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n191_call_builtin_prolog_α
.Lx309_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              r11, 128
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
.Lx310_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx310_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx310_111
                        cmp              esi, 1;                              jne   .Lx310_112
                        mov              r8, rax;                             jmp   .Lx310_110
.Lx310_112:             cmp              esi, 2;                              jne   .Lx310_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx310_111
                        mov              r8, rax;                             jmp   .Lx310_110
.Lx310_113:             cmp              al, 72;                              jne   .Lx310_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx310_111
                        cmp              rax, r8;                             je    .Lx310_111
                        mov              r8, rax;                             jmp   .Lx310_110
.Lx310_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx310_114
                        cmp              al, 104;                             je    .Lx310_114
                        cmp              al, 72;                              jne   .Lx310_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx310_114
                                                                              jmp   .Lx310_118
.Lx310_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx310_115
                        cmp              al, 3;                               jne   .Lx310_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx310_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx310_115
                                                                              jmp   .Lx310_114
.Lx310_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx310_117
.Lx310_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx310_117
.Lx310_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx310_117:             mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n196_call_builtin_prolog_α
                                                                              jmp   n192_var_ref_α
n191_call_builtin_prolog_β:
                        mov              r11, 128;                            jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n193_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n194_call_builtin_prolog_α
.Lx313_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n196_call_builtin_prolog_α
                                                                              jmp   n195_suspend_α
n194_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_suspend_α:         mov              r11, 132
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx316_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx316_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n195_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   digit$2F1_γ
n195_suspend_β:         mov              r11, 132;                            jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              r11, 133
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
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   digit$2F1_ω
n196_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_β:
                                                                              jmp   n114_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx317_50
                        mov              qword ptr [rsp + 2464], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464];         jmp   rax
.Lx317_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2504]
                        add              rsp, 2528;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2512]
                        add              rsp, 2528;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__solve$2F8:
                        sub              rsp, 4560
                        mov              qword ptr [rsp + 4536], rcx
                        mov              qword ptr [rsp + 4544], rdx
                        mov              qword ptr [rsp + 4552], rsp
                        mov              rdi, rsp
                        mov              esi, 4320
                        mov              edx, 4528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 8
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
solve$2F8_α_body:
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rsp + 4320], rax
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              r11, 134
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx461_102
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152];          jmp   .Lx461_101
.Lx461_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx461_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx461_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx461_101
.Lx461_100:             lea              rdi, [rsp + 160]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx461_101:             mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    solve$2F8_ω
                                                                              jmp   n319_var_ref_α
n318_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   solve$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx;         jmp   n320_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n321_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              r11, 137
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4280], rax
                        mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 4264], rax
                        lea              rdi, [rsp + 4256]
                        lea              r8, [rsp + 4256]
.Lx466_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx466_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              esi, 1;                              jne   .Lx466_55
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_55:              cmp              esi, 2;                              jne   .Lx466_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_56:              cmp              al, 72;                              jne   .Lx466_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx466_41
                        cmp              rax, r8;                             je    .Lx466_41
                        mov              r8, rax;                             jmp   .Lx466_40
.Lx466_41:              lea              r9, [rsp + 4272]
.Lx466_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx466_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              esi, 1;                              jne   .Lx466_57
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_57:              cmp              esi, 2;                              jne   .Lx466_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_58:              cmp              al, 72;                              jne   .Lx466_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx466_43
                        cmp              rax, r9;                             je    .Lx466_43
                        mov              r9, rax;                             jmp   .Lx466_42
.Lx466_43:              cmp              r8, r9;                              je    .Lx466_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx466_44
                        cmp              al, 104;                             je    .Lx466_44
                        cmp              al, 72;                              jne   .Lx466_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx466_44
                                                                              jmp   .Lx466_45
.Lx466_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_53
                        cmp              al, 104;                             je    .Lx466_53
                        cmp              al, 72;                              jne   .Lx466_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_53
                                                                              jmp   .Lx466_46
.Lx466_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx466_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx466_51
.Lx466_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx466_47
                        cmp              al, 104;                             je    .Lx466_47
                        cmp              al, 72;                              jne   .Lx466_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx466_47
                                                                              jmp   .Lx466_48
.Lx466_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx466_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx466_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx466_51
.Lx466_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx466_49
                        cmp              dl, 80;                              je    .Lx466_53
                                                                              jmp   .Lx466_52
.Lx466_49:              cmp              dl, 80;                              je    .Lx466_52
                        cmp              cl, 5;                               je    .Lx466_53
                        cmp              dl, 5;                               je    .Lx466_53
                        cmp              cl, 3;                               jne   .Lx466_50
                        cmp              dl, 3;                               jne   .Lx466_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx466_51
                                                                              jmp   .Lx466_52
.Lx466_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx466_53
.Lx466_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx466_54
.Lx466_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx466_54
.Lx466_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx466_54:              mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n322_var_ref_α
n321_call_builtin_prolog_β:
                        mov              r11, 137;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx;         jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4184], rax
                        lea              rdi, [rsp + 4176]
                        lea              r8, [rsp + 4176]
.Lx471_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx471_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_41
                        cmp              esi, 1;                              jne   .Lx471_55
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_55:              cmp              esi, 2;                              jne   .Lx471_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_41
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_56:              cmp              al, 72;                              jne   .Lx471_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_41
                        cmp              rax, r8;                             je    .Lx471_41
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_41:              lea              r9, [rsp + 4192]
.Lx471_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx471_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx471_43
                        cmp              esi, 1;                              jne   .Lx471_57
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_57:              cmp              esi, 2;                              jne   .Lx471_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_43
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_58:              cmp              al, 72;                              jne   .Lx471_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx471_43
                        cmp              rax, r9;                             je    .Lx471_43
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_43:              cmp              r8, r9;                              je    .Lx471_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx471_44
                        cmp              al, 104;                             je    .Lx471_44
                        cmp              al, 72;                              jne   .Lx471_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx471_44
                                                                              jmp   .Lx471_45
.Lx471_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx471_53
                        cmp              al, 104;                             je    .Lx471_53
                        cmp              al, 72;                              jne   .Lx471_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx471_53
                                                                              jmp   .Lx471_46
.Lx471_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx471_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx471_51
.Lx471_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx471_47
                        cmp              al, 104;                             je    .Lx471_47
                        cmp              al, 72;                              jne   .Lx471_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx471_47
                                                                              jmp   .Lx471_48
.Lx471_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx471_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx471_51
.Lx471_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx471_49
                        cmp              dl, 80;                              je    .Lx471_53
                                                                              jmp   .Lx471_52
.Lx471_49:              cmp              dl, 80;                              je    .Lx471_52
                        cmp              cl, 5;                               je    .Lx471_53
                        cmp              dl, 5;                               je    .Lx471_53
                        cmp              cl, 3;                               jne   .Lx471_50
                        cmp              dl, 3;                               jne   .Lx471_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx471_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx471_51
                                                                              jmp   .Lx471_52
.Lx471_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx471_53
.Lx471_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx471_54
.Lx471_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx471_54
.Lx471_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx471_54:              mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n325_var_ref_α
n324_call_builtin_prolog_β:
                        mov              r11, 140;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n326_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n327_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rdi, [rsp + 4096]
                        lea              r8, [rsp + 4096]
.Lx476_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx476_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx476_41
                        cmp              esi, 1;                              jne   .Lx476_55
                        mov              r8, rax;                             jmp   .Lx476_40
.Lx476_55:              cmp              esi, 2;                              jne   .Lx476_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx476_41
                        mov              r8, rax;                             jmp   .Lx476_40
.Lx476_56:              cmp              al, 72;                              jne   .Lx476_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx476_41
                        cmp              rax, r8;                             je    .Lx476_41
                        mov              r8, rax;                             jmp   .Lx476_40
.Lx476_41:              lea              r9, [rsp + 4112]
.Lx476_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx476_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx476_43
                        cmp              esi, 1;                              jne   .Lx476_57
                        mov              r9, rax;                             jmp   .Lx476_42
.Lx476_57:              cmp              esi, 2;                              jne   .Lx476_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx476_43
                        mov              r9, rax;                             jmp   .Lx476_42
.Lx476_58:              cmp              al, 72;                              jne   .Lx476_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx476_43
                        cmp              rax, r9;                             je    .Lx476_43
                        mov              r9, rax;                             jmp   .Lx476_42
.Lx476_43:              cmp              r8, r9;                              je    .Lx476_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx476_44
                        cmp              al, 104;                             je    .Lx476_44
                        cmp              al, 72;                              jne   .Lx476_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx476_44
                                                                              jmp   .Lx476_45
.Lx476_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx476_53
                        cmp              al, 104;                             je    .Lx476_53
                        cmp              al, 72;                              jne   .Lx476_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx476_53
                                                                              jmp   .Lx476_46
.Lx476_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx476_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx476_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx476_51
.Lx476_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx476_47
                        cmp              al, 104;                             je    .Lx476_47
                        cmp              al, 72;                              jne   .Lx476_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx476_47
                                                                              jmp   .Lx476_48
.Lx476_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx476_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx476_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx476_51
.Lx476_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx476_49
                        cmp              dl, 80;                              je    .Lx476_53
                                                                              jmp   .Lx476_52
.Lx476_49:              cmp              dl, 80;                              je    .Lx476_52
                        cmp              cl, 5;                               je    .Lx476_53
                        cmp              dl, 5;                               je    .Lx476_53
                        cmp              cl, 3;                               jne   .Lx476_50
                        cmp              dl, 3;                               jne   .Lx476_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx476_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx476_51
                                                                              jmp   .Lx476_52
.Lx476_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx476_53
.Lx476_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx476_54
.Lx476_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx476_54
.Lx476_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx476_54:              mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n328_var_ref_α
n327_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n330_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_prolog_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 4040], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        lea              r8, [rsp + 4016]
.Lx481_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx481_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx481_41
                        cmp              esi, 1;                              jne   .Lx481_55
                        mov              r8, rax;                             jmp   .Lx481_40
.Lx481_55:              cmp              esi, 2;                              jne   .Lx481_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx481_41
                        mov              r8, rax;                             jmp   .Lx481_40
.Lx481_56:              cmp              al, 72;                              jne   .Lx481_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx481_41
                        cmp              rax, r8;                             je    .Lx481_41
                        mov              r8, rax;                             jmp   .Lx481_40
.Lx481_41:              lea              r9, [rsp + 4032]
.Lx481_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx481_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx481_43
                        cmp              esi, 1;                              jne   .Lx481_57
                        mov              r9, rax;                             jmp   .Lx481_42
.Lx481_57:              cmp              esi, 2;                              jne   .Lx481_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx481_43
                        mov              r9, rax;                             jmp   .Lx481_42
.Lx481_58:              cmp              al, 72;                              jne   .Lx481_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx481_43
                        cmp              rax, r9;                             je    .Lx481_43
                        mov              r9, rax;                             jmp   .Lx481_42
.Lx481_43:              cmp              r8, r9;                              je    .Lx481_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx481_44
                        cmp              al, 104;                             je    .Lx481_44
                        cmp              al, 72;                              jne   .Lx481_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx481_44
                                                                              jmp   .Lx481_45
.Lx481_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx481_53
                        cmp              al, 104;                             je    .Lx481_53
                        cmp              al, 72;                              jne   .Lx481_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx481_53
                                                                              jmp   .Lx481_46
.Lx481_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx481_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx481_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx481_51
.Lx481_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx481_47
                        cmp              al, 104;                             je    .Lx481_47
                        cmp              al, 72;                              jne   .Lx481_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx481_47
                                                                              jmp   .Lx481_48
.Lx481_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx481_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx481_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx481_51
.Lx481_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx481_49
                        cmp              dl, 80;                              je    .Lx481_53
                                                                              jmp   .Lx481_52
.Lx481_49:              cmp              dl, 80;                              je    .Lx481_52
                        cmp              cl, 5;                               je    .Lx481_53
                        cmp              dl, 5;                               je    .Lx481_53
                        cmp              cl, 3;                               jne   .Lx481_50
                        cmp              dl, 3;                               jne   .Lx481_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx481_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx481_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx481_51
                                                                              jmp   .Lx481_52
.Lx481_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx481_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx481_53
.Lx481_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx481_54
.Lx481_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx481_54
.Lx481_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx481_54:              mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n331_var_ref_α
n330_call_builtin_prolog_β:
                        mov              r11, 146;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx;         jmp   n333_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_prolog_α:
                        mov              r11, 149
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3944], rax
                        lea              rdi, [rsp + 3936]
                        lea              r8, [rsp + 3936]
.Lx486_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx486_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx486_41
                        cmp              esi, 1;                              jne   .Lx486_55
                        mov              r8, rax;                             jmp   .Lx486_40
.Lx486_55:              cmp              esi, 2;                              jne   .Lx486_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx486_41
                        mov              r8, rax;                             jmp   .Lx486_40
.Lx486_56:              cmp              al, 72;                              jne   .Lx486_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx486_41
                        cmp              rax, r8;                             je    .Lx486_41
                        mov              r8, rax;                             jmp   .Lx486_40
.Lx486_41:              lea              r9, [rsp + 3952]
.Lx486_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx486_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx486_43
                        cmp              esi, 1;                              jne   .Lx486_57
                        mov              r9, rax;                             jmp   .Lx486_42
.Lx486_57:              cmp              esi, 2;                              jne   .Lx486_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx486_43
                        mov              r9, rax;                             jmp   .Lx486_42
.Lx486_58:              cmp              al, 72;                              jne   .Lx486_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx486_43
                        cmp              rax, r9;                             je    .Lx486_43
                        mov              r9, rax;                             jmp   .Lx486_42
.Lx486_43:              cmp              r8, r9;                              je    .Lx486_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx486_44
                        cmp              al, 104;                             je    .Lx486_44
                        cmp              al, 72;                              jne   .Lx486_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx486_44
                                                                              jmp   .Lx486_45
.Lx486_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx486_53
                        cmp              al, 104;                             je    .Lx486_53
                        cmp              al, 72;                              jne   .Lx486_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx486_53
                                                                              jmp   .Lx486_46
.Lx486_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx486_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx486_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx486_51
.Lx486_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx486_47
                        cmp              al, 104;                             je    .Lx486_47
                        cmp              al, 72;                              jne   .Lx486_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx486_47
                                                                              jmp   .Lx486_48
.Lx486_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx486_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx486_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx486_51
.Lx486_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx486_49
                        cmp              dl, 80;                              je    .Lx486_53
                                                                              jmp   .Lx486_52
.Lx486_49:              cmp              dl, 80;                              je    .Lx486_52
                        cmp              cl, 5;                               je    .Lx486_53
                        cmp              dl, 5;                               je    .Lx486_53
                        cmp              cl, 3;                               jne   .Lx486_50
                        cmp              dl, 3;                               jne   .Lx486_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx486_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx486_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx486_51
                                                                              jmp   .Lx486_52
.Lx486_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx486_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx486_53
.Lx486_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx486_54
.Lx486_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx486_54
.Lx486_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx486_54:              mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n334_var_ref_α
n333_call_builtin_prolog_β:
                        mov              r11, 149;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx;         jmp   n335_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx;         jmp   n336_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_prolog_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3880], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3864], rax
                        lea              rdi, [rsp + 3856]
                        lea              r8, [rsp + 3856]
.Lx491_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx491_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx491_41
                        cmp              esi, 1;                              jne   .Lx491_55
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_55:              cmp              esi, 2;                              jne   .Lx491_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx491_41
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_56:              cmp              al, 72;                              jne   .Lx491_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx491_41
                        cmp              rax, r8;                             je    .Lx491_41
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_41:              lea              r9, [rsp + 3872]
.Lx491_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx491_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx491_43
                        cmp              esi, 1;                              jne   .Lx491_57
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_57:              cmp              esi, 2;                              jne   .Lx491_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx491_43
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_58:              cmp              al, 72;                              jne   .Lx491_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx491_43
                        cmp              rax, r9;                             je    .Lx491_43
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_43:              cmp              r8, r9;                              je    .Lx491_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx491_44
                        cmp              al, 104;                             je    .Lx491_44
                        cmp              al, 72;                              jne   .Lx491_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx491_44
                                                                              jmp   .Lx491_45
.Lx491_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx491_53
                        cmp              al, 104;                             je    .Lx491_53
                        cmp              al, 72;                              jne   .Lx491_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx491_53
                                                                              jmp   .Lx491_46
.Lx491_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx491_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx491_51
.Lx491_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx491_47
                        cmp              al, 104;                             je    .Lx491_47
                        cmp              al, 72;                              jne   .Lx491_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx491_47
                                                                              jmp   .Lx491_48
.Lx491_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx491_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx491_51
.Lx491_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx491_49
                        cmp              dl, 80;                              je    .Lx491_53
                                                                              jmp   .Lx491_52
.Lx491_49:              cmp              dl, 80;                              je    .Lx491_52
                        cmp              cl, 5;                               je    .Lx491_53
                        cmp              dl, 5;                               je    .Lx491_53
                        cmp              cl, 3;                               jne   .Lx491_50
                        cmp              dl, 3;                               jne   .Lx491_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx491_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx491_51
                                                                              jmp   .Lx491_52
.Lx491_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx491_53
.Lx491_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx491_54
.Lx491_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx491_54
.Lx491_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx491_54:              mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n337_var_ref_α
n336_call_builtin_prolog_β:
                        mov              r11, 152;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx;         jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n339_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n339_call_builtin_prolog_α:
                        mov              r11, 155
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3784], rax
                        lea              rdi, [rsp + 3776]
                        lea              r8, [rsp + 3776]
.Lx496_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx496_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx496_41
                        cmp              esi, 1;                              jne   .Lx496_55
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_55:              cmp              esi, 2;                              jne   .Lx496_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx496_41
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_56:              cmp              al, 72;                              jne   .Lx496_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx496_41
                        cmp              rax, r8;                             je    .Lx496_41
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_41:              lea              r9, [rsp + 3792]
.Lx496_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx496_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx496_43
                        cmp              esi, 1;                              jne   .Lx496_57
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_57:              cmp              esi, 2;                              jne   .Lx496_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx496_43
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_58:              cmp              al, 72;                              jne   .Lx496_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx496_43
                        cmp              rax, r9;                             je    .Lx496_43
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_43:              cmp              r8, r9;                              je    .Lx496_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx496_44
                        cmp              al, 104;                             je    .Lx496_44
                        cmp              al, 72;                              jne   .Lx496_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx496_44
                                                                              jmp   .Lx496_45
.Lx496_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx496_53
                        cmp              al, 104;                             je    .Lx496_53
                        cmp              al, 72;                              jne   .Lx496_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx496_53
                                                                              jmp   .Lx496_46
.Lx496_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx496_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx496_51
.Lx496_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx496_47
                        cmp              al, 104;                             je    .Lx496_47
                        cmp              al, 72;                              jne   .Lx496_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx496_47
                                                                              jmp   .Lx496_48
.Lx496_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx496_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx496_51
.Lx496_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx496_49
                        cmp              dl, 80;                              je    .Lx496_53
                                                                              jmp   .Lx496_52
.Lx496_49:              cmp              dl, 80;                              je    .Lx496_52
                        cmp              cl, 5;                               je    .Lx496_53
                        cmp              dl, 5;                               je    .Lx496_53
                        cmp              cl, 3;                               jne   .Lx496_50
                        cmp              dl, 3;                               jne   .Lx496_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx496_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx496_51
                                                                              jmp   .Lx496_52
.Lx496_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx496_53
.Lx496_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx496_54
.Lx496_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx496_54
.Lx496_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx496_54:              mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n340_var_ref_α
n339_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 128]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n342_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3696]
                        lea              r8, [rsp + 3696]
.Lx501_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx501_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx501_41
                        cmp              esi, 1;                              jne   .Lx501_55
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_55:              cmp              esi, 2;                              jne   .Lx501_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx501_41
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_56:              cmp              al, 72;                              jne   .Lx501_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx501_41
                        cmp              rax, r8;                             je    .Lx501_41
                        mov              r8, rax;                             jmp   .Lx501_40
.Lx501_41:              lea              r9, [rsp + 3712]
.Lx501_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx501_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx501_43
                        cmp              esi, 1;                              jne   .Lx501_57
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_57:              cmp              esi, 2;                              jne   .Lx501_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx501_43
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_58:              cmp              al, 72;                              jne   .Lx501_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx501_43
                        cmp              rax, r9;                             je    .Lx501_43
                        mov              r9, rax;                             jmp   .Lx501_42
.Lx501_43:              cmp              r8, r9;                              je    .Lx501_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx501_44
                        cmp              al, 104;                             je    .Lx501_44
                        cmp              al, 72;                              jne   .Lx501_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx501_44
                                                                              jmp   .Lx501_45
.Lx501_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx501_53
                        cmp              al, 104;                             je    .Lx501_53
                        cmp              al, 72;                              jne   .Lx501_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx501_53
                                                                              jmp   .Lx501_46
.Lx501_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx501_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx501_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx501_51
.Lx501_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx501_47
                        cmp              al, 104;                             je    .Lx501_47
                        cmp              al, 72;                              jne   .Lx501_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx501_47
                                                                              jmp   .Lx501_48
.Lx501_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx501_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx501_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx501_51
.Lx501_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx501_49
                        cmp              dl, 80;                              je    .Lx501_53
                                                                              jmp   .Lx501_52
.Lx501_49:              cmp              dl, 80;                              je    .Lx501_52
                        cmp              cl, 5;                               je    .Lx501_53
                        cmp              dl, 5;                               je    .Lx501_53
                        cmp              cl, 3;                               jne   .Lx501_50
                        cmp              dl, 3;                               jne   .Lx501_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx501_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx501_51
                                                                              jmp   .Lx501_52
.Lx501_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx501_53
.Lx501_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx501_54
.Lx501_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx501_54
.Lx501_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx501_54:              mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n343_var_ref_α
n342_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n344_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n344_call_proc_staged_α:
                        mov              r11, 160
                        mov              qword ptr [rsp + 3632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx505_200
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx505_201
.Lx505_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx505_201:             lea              rax, [rip + .Lx505_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx505_1
                        lea              rcx, [rip + .Lx505_4]
                        push             rcx
                        lea              rcx, [rip + .Lx505_3]
                        push             rcx
                        lea              rdx, [rip + .Lx505_4];               jmp   rax
.Lx505_3:               add              rsp, 16
                        mov              qword ptr [rsp + 3640], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lx505_5
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx505_2
.Lx505_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx505_2
.Lx505_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lx505_6
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx505_2
.Lx505_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx505_2
.Lx505_1:               call             rt_faildescr@PLT
.Lx505_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx505_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3600]
                        mov              rdx, qword ptr [rsp + 3608]
.Lx505_29:              mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n345_var_ref_α
n344_call_proc_staged_β:
                        mov              r11, 160
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3632], 0
                        lea              rdi, [rsp + 3648]
                        lea              rsi, [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n460_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        mov              ecx, 32
                        mov              r8d, 2464
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n460_call_builtin_prolog_α
                        lea              r8, [rip + .Lx505_7]
                        push             r8
                        lea              rcx, [rip + .Lx505_4]
                        push             rcx
                        lea              rcx, [rip + .Lx505_3]
                        push             rcx
                        lea              rdx, [rip + .Lx505_4];               jmp   rax
.Lx505_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n460_call_builtin_prolog_α
                                                                              jmp   n345_var_ref_α
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n346_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_proc_staged_α:
                        mov              r11, 162
                        mov              qword ptr [rsp + 3552], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx509_200
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx509_201
.Lx509_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx509_201:             lea              rax, [rip + .Lx509_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx509_1
                        lea              rcx, [rip + .Lx509_4]
                        push             rcx
                        lea              rcx, [rip + .Lx509_3]
                        push             rcx
                        lea              rdx, [rip + .Lx509_4];               jmp   rax
.Lx509_3:               add              rsp, 16
                        mov              qword ptr [rsp + 3560], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3552]
                        test             rax, rax;                            jne   .Lx509_5
                        mov              qword ptr [rsp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx509_2
.Lx509_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx509_2
.Lx509_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 3552]
                        test             rax, rax;                            jne   .Lx509_6
                        mov              qword ptr [rsp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx509_2
.Lx509_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx509_2
.Lx509_1:               call             rt_faildescr@PLT
.Lx509_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx509_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
.Lx509_29:              mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n344_call_proc_staged_β
                                                                              jmp   n347_var_α
n346_call_proc_staged_β:
                        mov              r11, 162
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3552], 0
                        lea              rdi, [rsp + 3568]
                        lea              rsi, [rsp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n344_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3568]
                        mov              rdx, qword ptr [rsp + 3576]
                        mov              ecx, 32
                        mov              r8d, 2464
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n344_call_proc_staged_β
                        lea              r8, [rip + .Lx509_7]
                        push             r8
                        lea              rcx, [rip + .Lx509_4]
                        push             rcx
                        lea              rcx, [rip + .Lx509_3]
                        push             rcx
                        lea              rdx, [rip + .Lx509_4];               jmp   rax
.Lx509_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n344_call_proc_staged_β
                                                                              jmp   n347_var_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n349_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              r11, 165
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3464], rax
                        lea              rdi, [rsp + 3456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              al, 104;                             je    n346_call_proc_staged_β
                                                                              jmp   n350_lit_integer_α
n349_call_builtin_prolog_β:
                        mov              r11, 165;                            jmp   n346_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 3360], 3            # result
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n351_var_ref_α
.Lx515_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n352_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n355_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rsp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_200
                        mov              rax, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx525_201
.Lx525_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_202
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx525_203
.Lx525_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_204
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx525_205
.Lx525_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_206
                        mov              rax, qword ptr [rsp + 3408]
                        mov              rdx, qword ptr [rsp + 3416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx525_207
.Lx525_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 3408]
                        mov              rdx, qword ptr [rsp + 3416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_208
                        mov              rax, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx525_209
.Lx525_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx525_209:             lea              rax, [rip + .Lx525_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx525_1
                        lea              rcx, [rip + .Lx525_4]
                        push             rcx
                        lea              rcx, [rip + .Lx525_3]
                        push             rcx
                        lea              rdx, [rip + .Lx525_4];               jmp   rax
.Lx525_3:               add              rsp, 16
                        mov              qword ptr [rsp + 3336], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3328]
                        test             rax, rax;                            jne   .Lx525_5
                        mov              qword ptr [rsp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx525_2
.Lx525_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx525_2
.Lx525_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 3328]
                        test             rax, rax;                            jne   .Lx525_6
                        mov              qword ptr [rsp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx525_2
.Lx525_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx525_2
.Lx525_1:               call             rt_faildescr@PLT
.Lx525_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx525_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
.Lx525_29:              mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n346_call_proc_staged_β
                                                                              jmp   n356_var_ref_α
n355_call_proc_staged_β:
                        mov              r11, 171
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3328], 0
                        lea              rdi, [rsp + 3344]
                        lea              rsi, [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n346_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3344]
                        mov              rdx, qword ptr [rsp + 3352]
                        mov              ecx, 96
                        mov              r8d, 1296
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 3408]
                        mov              rdx, qword ptr [rsp + 3416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n346_call_proc_staged_β
                        lea              r8, [rip + .Lx525_7]
                        push             r8
                        lea              rcx, [rip + .Lx525_4]
                        push             rcx
                        lea              rcx, [rip + .Lx525_3]
                        push             rcx
                        lea              rdx, [rip + .Lx525_4];               jmp   rax
.Lx525_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n346_call_proc_staged_β
                                                                              jmp   n356_var_ref_α
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx;         jmp   n357_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        mov              r11, 173
                        mov              qword ptr [rsp + 3184], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx529_200
                        mov              rax, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx529_201
.Lx529_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx529_201:             lea              rax, [rip + .Lx529_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx529_1
                        lea              rcx, [rip + .Lx529_4]
                        push             rcx
                        lea              rcx, [rip + .Lx529_3]
                        push             rcx
                        lea              rdx, [rip + .Lx529_4];               jmp   rax
.Lx529_3:               add              rsp, 16
                        mov              qword ptr [rsp + 3192], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3184]
                        test             rax, rax;                            jne   .Lx529_5
                        mov              qword ptr [rsp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx529_2
.Lx529_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx529_2
.Lx529_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 3184]
                        test             rax, rax;                            jne   .Lx529_6
                        mov              qword ptr [rsp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx529_2
.Lx529_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx529_2
.Lx529_1:               call             rt_faildescr@PLT
.Lx529_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx529_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
.Lx529_29:              mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n355_call_proc_staged_β
                                                                              jmp   n358_var_α
n357_call_proc_staged_β:
                        mov              r11, 173
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 3184], 0
                        lea              rdi, [rsp + 3200]
                        lea              rsi, [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n355_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              ecx, 32
                        mov              r8d, 2464
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n355_call_proc_staged_β
                        lea              r8, [rip + .Lx529_7]
                        push             r8
                        lea              rcx, [rip + .Lx529_4]
                        push             rcx
                        lea              rcx, [rip + .Lx529_3]
                        push             rcx
                        lea              rdx, [rip + .Lx529_4];               jmp   rax
.Lx529_7:               add              rsp, 8
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n355_call_proc_staged_β
                                                                              jmp   n358_var_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 174
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        lea              rdi, [rsp + 3088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n361_var_α
n360_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n363_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_prolog_α:
                        mov              r11, 179
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n364_var_α
n363_call_builtin_prolog_β:
                        mov              r11, 179;                            jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n366_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_prolog_α:
                        mov              r11, 182
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n367_var_ref_α
n366_call_builtin_prolog_β:
                        mov              r11, 182;                            jmp   n357_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n368_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        mov              r11, 184
                        mov              qword ptr [rsp + 2864], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx548_200
                        mov              rax, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx548_201
.Lx548_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx548_201:             lea              rax, [rip + .Lx548_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx548_1
                        lea              rcx, [rip + .Lx548_4]
                        push             rcx
                        lea              rcx, [rip + .Lx548_3]
                        push             rcx
                        lea              rdx, [rip + .Lx548_4];               jmp   rax
.Lx548_3:               add              rsp, 16
                        mov              qword ptr [rsp + 2872], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2864]
                        test             rax, rax;                            jne   .Lx548_5
                        mov              qword ptr [rsp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx548_2
.Lx548_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx548_2
.Lx548_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 2864]
                        test             rax, rax;                            jne   .Lx548_6
                        mov              qword ptr [rsp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx548_2
.Lx548_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx548_2
.Lx548_1:               call             rt_faildescr@PLT
.Lx548_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx548_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2832]
                        mov              rdx, qword ptr [rsp + 2840]
.Lx548_29:              mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n369_var_α
n368_call_proc_staged_β:
                        mov              r11, 184
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2864], 0
                        lea              rdi, [rsp + 2880]
                        lea              rsi, [rsp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n357_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2880]
                        mov              rdx, qword ptr [rsp + 2888]
                        mov              ecx, 32
                        mov              r8d, 2464
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n357_call_proc_staged_β
                        lea              r8, [rip + .Lx548_7]
                        push             r8
                        lea              rcx, [rip + .Lx548_4]
                        push             rcx
                        lea              rcx, [rip + .Lx548_3]
                        push             rcx
                        lea              rdx, [rip + .Lx548_4];               jmp   rax
.Lx548_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n369_var_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n371_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        lea              rdi, [rsp + 2768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n372_var_α
n371_call_builtin_prolog_β:
                        mov              r11, 187;                            jmp   n368_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n373_var_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2696], rax
                        lea              rdi, [rsp + 2688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n375_var_α
n374_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   n368_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 191
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n377_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_prolog_α:
                        mov              r11, 193
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2616], rax
                        lea              rdi, [rsp + 2608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n378_var_α
n377_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   n368_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n380_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2536], rax
                        lea              rdi, [rsp + 2528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n381_var_ref_α
n380_call_builtin_prolog_β:
                        mov              r11, 196;                            jmp   n368_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n382_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n384_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n386_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        mov              r11, 202
                        mov              qword ptr [rsp + 2400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx580_200
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx580_201
.Lx580_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx580_202
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx580_203
.Lx580_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx580_204
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx580_205
.Lx580_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx580_206
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx580_207
.Lx580_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx580_208
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx580_209
.Lx580_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_209:             lea              rax, [rip + .Lx580_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx580_1
                        lea              rcx, [rip + .Lx580_4]
                        push             rcx
                        lea              rcx, [rip + .Lx580_3]
                        push             rcx
                        lea              rdx, [rip + .Lx580_4];               jmp   rax
.Lx580_3:               add              rsp, 16
                        mov              qword ptr [rsp + 2408], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2400]
                        test             rax, rax;                            jne   .Lx580_5
                        mov              qword ptr [rsp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx580_2
.Lx580_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx580_2
.Lx580_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 2400]
                        test             rax, rax;                            jne   .Lx580_6
                        mov              qword ptr [rsp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx580_2
.Lx580_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx580_2
.Lx580_1:               call             rt_faildescr@PLT
.Lx580_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx580_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
.Lx580_29:              mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n387_var_ref_α
n386_call_proc_staged_β:
                        mov              r11, 202
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2400], 0
                        lea              rdi, [rsp + 2416]
                        lea              rsi, [rsp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n368_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2416]
                        mov              rdx, qword ptr [rsp + 2424]
                        mov              ecx, 96
                        mov              r8d, 1296
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n368_call_proc_staged_β
                        lea              r8, [rip + .Lx580_7]
                        push             r8
                        lea              rcx, [rip + .Lx580_4]
                        push             rcx
                        lea              rcx, [rip + .Lx580_3]
                        push             rcx
                        lea              rdx, [rip + .Lx580_4];               jmp   rax
.Lx580_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n387_var_ref_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n388_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        mov              r11, 204
                        mov              qword ptr [rsp + 2256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_200
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx584_201
.Lx584_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_201:             lea              rax, [rip + .Lx584_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx584_1
                        lea              rcx, [rip + .Lx584_4]
                        push             rcx
                        lea              rcx, [rip + .Lx584_3]
                        push             rcx
                        lea              rdx, [rip + .Lx584_4];               jmp   rax
.Lx584_3:               add              rsp, 16
                        mov              qword ptr [rsp + 2264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lx584_5
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx584_2
.Lx584_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx584_2
.Lx584_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lx584_6
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx584_2
.Lx584_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx584_2
.Lx584_1:               call             rt_faildescr@PLT
.Lx584_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx584_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
.Lx584_29:              mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n386_call_proc_staged_β
                                                                              jmp   n389_var_α
n388_call_proc_staged_β:
                        mov              r11, 204
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2256], 0
                        lea              rdi, [rsp + 2272]
                        lea              rsi, [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n386_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              ecx, 32
                        mov              r8d, 2464
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n386_call_proc_staged_β
                        lea              r8, [rip + .Lx584_7]
                        push             r8
                        lea              rcx, [rip + .Lx584_4]
                        push             rcx
                        lea              rcx, [rip + .Lx584_3]
                        push             rcx
                        lea              rdx, [rip + .Lx584_4];               jmp   rax
.Lx584_7:               add              rsp, 8
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n386_call_proc_staged_β
                                                                              jmp   n389_var_α
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n391_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_prolog_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2168], rax
                        lea              rdi, [rsp + 2160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n392_var_α
n391_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n393_var_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             mov              r11, 209
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n394_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_prolog_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax
                        lea              rdi, [rsp + 2080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n395_var_α
n394_call_builtin_prolog_β:
                        mov              r11, 210;                            jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n397_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_prolog_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n398_var_α
n397_call_builtin_prolog_β:
                        mov              r11, 213;                            jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 214
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n399_var_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        lea              rdi, [rsp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n401_var_α
n400_call_builtin_prolog_β:
                        mov              r11, 216;                            jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n403_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              r11, 219
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        lea              rdi, [rsp + 1840]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n404_var_ref_α
n403_call_builtin_prolog_β:
                        mov              r11, 219;                            jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n405_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n407_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n408_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n409_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_proc_staged_α:
                        mov              r11, 225
                        mov              qword ptr [rsp + 1712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx621_200
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx621_201
.Lx621_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx621_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx621_202
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx621_203
.Lx621_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx621_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx621_204
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx621_205
.Lx621_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx621_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx621_206
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx621_207
.Lx621_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx621_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx621_208
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx621_209
.Lx621_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx621_209:             lea              rax, [rip + .Lx621_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx621_1
                        lea              rcx, [rip + .Lx621_4]
                        push             rcx
                        lea              rcx, [rip + .Lx621_3]
                        push             rcx
                        lea              rdx, [rip + .Lx621_4];               jmp   rax
.Lx621_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1720], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1712]
                        test             rax, rax;                            jne   .Lx621_5
                        mov              qword ptr [rsp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx621_2
.Lx621_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx621_2
.Lx621_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1712]
                        test             rax, rax;                            jne   .Lx621_6
                        mov              qword ptr [rsp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx621_2
.Lx621_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx621_2
.Lx621_1:               call             rt_faildescr@PLT
.Lx621_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx621_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
.Lx621_29:              mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n410_var_ref_α
n409_call_proc_staged_β:
                        mov              r11, 225
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1712], 0
                        lea              rdi, [rsp + 1728]
                        lea              rsi, [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n388_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1728]
                        mov              rdx, qword ptr [rsp + 1736]
                        mov              ecx, 96
                        mov              r8d, 1296
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n388_call_proc_staged_β
                        lea              r8, [rip + .Lx621_7]
                        push             r8
                        lea              rcx, [rip + .Lx621_4]
                        push             rcx
                        lea              rcx, [rip + .Lx621_3]
                        push             rcx
                        lea              rdx, [rip + .Lx621_4];               jmp   rax
.Lx621_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n410_var_ref_α
.Lx621_0:               .quad            .Lx621_0_s
.Lx621_0_s:             .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n411_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        mov              r11, 227
                        mov              qword ptr [rsp + 1568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_200
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx625_201
.Lx625_200:             mov              edi, 0
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
.Lx625_201:             lea              rax, [rip + .Lx625_7]
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
                        test             rax, rax;                            je    .Lx625_1
                        lea              rcx, [rip + .Lx625_4]
                        push             rcx
                        lea              rcx, [rip + .Lx625_3]
                        push             rcx
                        lea              rdx, [rip + .Lx625_4];               jmp   rax
.Lx625_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1576], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx625_5
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx625_2
.Lx625_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx625_2
.Lx625_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx625_6
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx625_2
.Lx625_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx625_2
.Lx625_1:               call             rt_faildescr@PLT
.Lx625_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx625_29
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
.Lx625_29:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n409_call_proc_staged_β
                                                                              jmp   n412_var_α
n411_call_proc_staged_β:
                        mov              r11, 227
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
                        test             rax, rax;                            je    n409_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
                        mov              ecx, 32
                        mov              r8d, 2224
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
                        test             rax, rax;                            je    n409_call_proc_staged_β
                        lea              r8, [rip + .Lx625_7]
                        push             r8
                        lea              rcx, [rip + .Lx625_4]
                        push             rcx
                        lea              rcx, [rip + .Lx625_3]
                        push             rcx
                        lea              rdx, [rip + .Lx625_4];               jmp   rax
.Lx625_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n409_call_proc_staged_β
                                                                              jmp   n412_var_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "leftdigit/1"
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 228
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n413_var_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n414_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_prolog_α:
                        mov              r11, 230
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n415_var_α
n414_call_builtin_prolog_β:
                        mov              r11, 230;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n417_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              r11, 233
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n418_var_α
n417_call_builtin_prolog_β:
                        mov              r11, 233;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n419_var_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n420_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              r11, 236
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n421_var_α
n420_call_builtin_prolog_β:
                        mov              r11, 236;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n423_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              r11, 239
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n424_var_α
n423_call_builtin_prolog_β:
                        mov              r11, 239;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n426_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              r11, 242
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n427_var_α
n426_call_builtin_prolog_β:
                        mov              r11, 242;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n429_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              r11, 245
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n430_var_ref_α
n429_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n431_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_proc_staged_α:
                        mov              r11, 247
                        mov              qword ptr [rsp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx659_200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx659_201
.Lx659_200:             mov              edi, 0
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
.Lx659_201:             lea              rax, [rip + .Lx659_7]
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
                        test             rax, rax;                            je    .Lx659_1
                        lea              rcx, [rip + .Lx659_4]
                        push             rcx
                        lea              rcx, [rip + .Lx659_3]
                        push             rcx
                        lea              rdx, [rip + .Lx659_4];               jmp   rax
.Lx659_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1016], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lx659_5
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx659_2
.Lx659_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx659_2
.Lx659_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lx659_6
                        mov              qword ptr [rsp + 1008], 1
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
.Lx659_29:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n432_var_α
n431_call_proc_staged_β:
                        mov              r11, 247
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
                        test             rax, rax;                            je    n411_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              ecx, 32
                        mov              r8d, 2224
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
                        test             rax, rax;                            je    n411_call_proc_staged_β
                        lea              r8, [rip + .Lx659_7]
                        push             r8
                        lea              rcx, [rip + .Lx659_4]
                        push             rcx
                        lea              rcx, [rip + .Lx659_3]
                        push             rcx
                        lea              rdx, [rip + .Lx659_4];               jmp   rax
.Lx659_7:               add              rsp, 8
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n432_var_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "leftdigit/1"
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 952], rax;          jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 968], rax;          jmp   n434_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 250
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n435_var_α
n434_call_builtin_prolog_β:
                        mov              r11, 250;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 872], rax;          jmp   n436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 888], rax;          jmp   n437_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              r11, 253
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n438_var_α
n437_call_builtin_prolog_β:
                        mov              r11, 253;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 792], rax;          jmp   n439_var_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 808], rax;          jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              r11, 256
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n441_var_α
n440_call_builtin_prolog_β:
                        mov              r11, 256;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:             mov              r11, 257
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 712], rax;          jmp   n442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 728], rax;          jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
                        mov              r11, 259
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n444_var_α
n443_call_builtin_prolog_β:
                        mov              r11, 259;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 632], rax;          jmp   n445_var_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 648], rax;          jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n447_var_α
n446_call_builtin_prolog_β:
                        mov              r11, 262;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             mov              r11, 263
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 552], rax;          jmp   n448_var_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             mov              r11, 264
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 568], rax;          jmp   n449_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              r11, 265
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n450_var_α
n449_call_builtin_prolog_β:
                        mov              r11, 265;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              r11, 266
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 472], rax;          jmp   n451_var_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 488], rax;          jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_prolog_α:
                        mov              r11, 268
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n453_var_ref_α
n452_call_builtin_prolog_β:
                        mov              r11, 268;                            jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n454_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n455_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n458_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_proc_staged_α:
                        mov              r11, 274
                        mov              qword ptr [rsp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx706_200
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx706_201
.Lx706_200:             mov              edi, 0
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
.Lx706_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx706_202
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx706_203
.Lx706_202:             mov              edi, 1
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
.Lx706_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx706_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx706_205
.Lx706_204:             mov              edi, 2
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
.Lx706_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx706_206
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx706_207
.Lx706_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx706_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx706_208
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx706_209
.Lx706_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx706_209:             lea              rax, [rip + .Lx706_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx706_1
                        lea              rcx, [rip + .Lx706_4]
                        push             rcx
                        lea              rcx, [rip + .Lx706_3]
                        push             rcx
                        lea              rdx, [rip + .Lx706_4];               jmp   rax
.Lx706_3:               add              rsp, 16
                        mov              qword ptr [rsp + 312], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lx706_5
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx706_2
.Lx706_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx706_2
.Lx706_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lx706_6
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx706_2
.Lx706_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx706_2
.Lx706_1:               call             rt_faildescr@PLT
.Lx706_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx706_29
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
.Lx706_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n459_suspend_α
n458_call_proc_staged_β:
                        mov              r11, 274
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
                        test             rax, rax;                            je    n431_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              ecx, 96
                        mov              r8d, 1296
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
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n431_call_proc_staged_β
                        lea              r8, [rip + .Lx706_7]
                        push             r8
                        lea              rcx, [rip + .Lx706_4]
                        push             rcx
                        lea              rcx, [rip + .Lx706_3]
                        push             rcx
                        lea              rdx, [rip + .Lx706_4];               jmp   rax
.Lx706_7:               add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n459_suspend_α
.Lx706_0:               .quad            .Lx706_0_s
.Lx706_0_s:             .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n459_suspend_α:         mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx708_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4320];         jmp   rax
.Lx708_61:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        lea              rdx, [rip + n459_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   solve$2F8_γ
n459_suspend_β:         mov              r11, 275;                            jmp   n458_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_prolog_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    solve$2F8_ω
                                                                              jmp   solve$2F8_ω
n460_call_builtin_prolog_β:
                        mov              r11, 276;                            jmp   solve$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_β:
                                                                              jmp   n459_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx709_50
                        mov              qword ptr [rsp + 4320], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4320];         jmp   rax
.Lx709_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4536]
                        add              rsp, 4560;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ω:
                        mov              rcx, qword ptr [rsp + 4544]
                        add              rsp, 4560;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__leftdigit$2F1:
                        sub              rsp, 2288
                        mov              qword ptr [rsp + 2264], rcx
                        mov              qword ptr [rsp + 2272], rdx
                        mov              qword ptr [rsp + 2280], rsp
                        mov              rdi, rsp
                        mov              esi, 2224
                        mov              edx, 2256
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
leftdigit$2F1_α_body:
                        lea              rax, [rip + n718_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
#-----------------------------------------------------------------------------------------------------------------------
n710_call_builtin_prolog_α:
                        mov              r11, 277
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx792_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx792_101
.Lx792_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx792_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx792_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx792_101
.Lx792_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx792_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n711_var_ref_α
n710_call_builtin_prolog_β:
                        mov              r11, 277;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n712_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n713_lit_integer_α
.Lx795_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n714_call_builtin_prolog_α
.Lx796_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n714_call_builtin_prolog_α:
                        mov              r11, 281
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        lea              r8, [rsp + 2128]
.Lx797_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx797_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx797_111
                        cmp              esi, 1;                              jne   .Lx797_112
                        mov              r8, rax;                             jmp   .Lx797_110
.Lx797_112:             cmp              esi, 2;                              jne   .Lx797_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx797_111
                        mov              r8, rax;                             jmp   .Lx797_110
.Lx797_113:             cmp              al, 72;                              jne   .Lx797_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx797_111
                        cmp              rax, r8;                             je    .Lx797_111
                        mov              r8, rax;                             jmp   .Lx797_110
.Lx797_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx797_114
                        cmp              al, 104;                             je    .Lx797_114
                        cmp              al, 72;                              jne   .Lx797_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx797_114
                                                                              jmp   .Lx797_118
.Lx797_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx797_115
                        cmp              al, 3;                               jne   .Lx797_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx797_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx797_115
                                                                              jmp   .Lx797_114
.Lx797_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx797_117
.Lx797_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx797_117
.Lx797_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx797_117:             mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n720_var_ref_α
                                                                              jmp   n715_var_ref_α
n714_call_builtin_prolog_β:
                        mov              r11, 281;                            jmp   n720_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n716_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n717_call_builtin_prolog_α
.Lx800_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n717_call_builtin_prolog_α:
                        mov              r11, 284
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        lea              rdi, [rsp + 2048]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n719_call_builtin_prolog_α
                                                                              jmp   n718_suspend_α
n717_call_builtin_prolog_β:
                        mov              r11, 284;                            jmp   n719_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n718_suspend_α:         mov              r11, 285
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx803_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx803_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n718_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n718_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n718_suspend_β:         mov              r11, 285;                            jmp   n719_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_prolog_α:
                        mov              r11, 286
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n720_var_ref_α
n719_call_builtin_prolog_β:
                        mov              r11, 286;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n722_lit_integer_α
.Lx807_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:     mov              r11, 289
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n723_call_builtin_prolog_α
.Lx808_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n723_call_builtin_prolog_α:
                        mov              r11, 290
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lx809_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx809_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx809_111
                        cmp              esi, 1;                              jne   .Lx809_112
                        mov              r8, rax;                             jmp   .Lx809_110
.Lx809_112:             cmp              esi, 2;                              jne   .Lx809_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx809_111
                        mov              r8, rax;                             jmp   .Lx809_110
.Lx809_113:             cmp              al, 72;                              jne   .Lx809_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx809_111
                        cmp              rax, r8;                             je    .Lx809_111
                        mov              r8, rax;                             jmp   .Lx809_110
.Lx809_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx809_114
                        cmp              al, 104;                             je    .Lx809_114
                        cmp              al, 72;                              jne   .Lx809_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx809_114
                                                                              jmp   .Lx809_118
.Lx809_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx809_115
                        cmp              al, 3;                               jne   .Lx809_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx809_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx809_115
                                                                              jmp   .Lx809_114
.Lx809_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx809_117
.Lx809_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx809_117
.Lx809_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx809_117:             mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n729_var_ref_α
                                                                              jmp   n724_var_ref_α
n723_call_builtin_prolog_β:
                        mov              r11, 290;                            jmp   n729_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n725_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:     mov              r11, 292
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n726_call_builtin_prolog_α
.Lx812_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n726_call_builtin_prolog_α:
                        mov              r11, 293
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n728_call_builtin_prolog_α
                                                                              jmp   n727_suspend_α
n726_call_builtin_prolog_β:
                        mov              r11, 293;                            jmp   n728_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n727_suspend_α:         mov              r11, 294
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx815_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx815_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n727_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n727_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n727_suspend_β:         mov              r11, 294;                            jmp   n728_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_prolog_α:
                        mov              r11, 295
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n729_var_ref_α
n728_call_builtin_prolog_β:
                        mov              r11, 295;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n730_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n731_lit_integer_α
.Lx819_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:     mov              r11, 298
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n732_call_builtin_prolog_α
.Lx820_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n732_call_builtin_prolog_α:
                        mov              r11, 299
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        lea              r8, [rsp + 1648]
.Lx821_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx821_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx821_111
                        cmp              esi, 1;                              jne   .Lx821_112
                        mov              r8, rax;                             jmp   .Lx821_110
.Lx821_112:             cmp              esi, 2;                              jne   .Lx821_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx821_111
                        mov              r8, rax;                             jmp   .Lx821_110
.Lx821_113:             cmp              al, 72;                              jne   .Lx821_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx821_111
                        cmp              rax, r8;                             je    .Lx821_111
                        mov              r8, rax;                             jmp   .Lx821_110
.Lx821_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx821_114
                        cmp              al, 104;                             je    .Lx821_114
                        cmp              al, 72;                              jne   .Lx821_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx821_114
                                                                              jmp   .Lx821_118
.Lx821_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx821_115
                        cmp              al, 3;                               jne   .Lx821_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx821_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx821_115
                                                                              jmp   .Lx821_114
.Lx821_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx821_117
.Lx821_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx821_117
.Lx821_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx821_117:             mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n738_var_ref_α
                                                                              jmp   n733_var_ref_α
n732_call_builtin_prolog_β:
                        mov              r11, 299;                            jmp   n738_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n734_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 301
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n735_call_builtin_prolog_α
.Lx824_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_prolog_α:
                        mov              r11, 302
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n737_call_builtin_prolog_α
                                                                              jmp   n736_suspend_α
n735_call_builtin_prolog_β:
                        mov              r11, 302;                            jmp   n737_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n736_suspend_α:         mov              r11, 303
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx827_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx827_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n736_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n736_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n736_suspend_β:         mov              r11, 303;                            jmp   n737_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_prolog_α:
                        mov              r11, 304
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n738_var_ref_α
n737_call_builtin_prolog_β:
                        mov              r11, 304;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n739_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_integer_α:     mov              r11, 306
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n740_lit_integer_α
.Lx831_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:     mov              r11, 307
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n741_call_builtin_prolog_α
.Lx832_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n741_call_builtin_prolog_α:
                        mov              r11, 308
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax
                        lea              rdi, [rsp + 1408]
                        lea              r8, [rsp + 1408]
.Lx833_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx833_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx833_111
                        cmp              esi, 1;                              jne   .Lx833_112
                        mov              r8, rax;                             jmp   .Lx833_110
.Lx833_112:             cmp              esi, 2;                              jne   .Lx833_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx833_111
                        mov              r8, rax;                             jmp   .Lx833_110
.Lx833_113:             cmp              al, 72;                              jne   .Lx833_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx833_111
                        cmp              rax, r8;                             je    .Lx833_111
                        mov              r8, rax;                             jmp   .Lx833_110
.Lx833_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx833_114
                        cmp              al, 104;                             je    .Lx833_114
                        cmp              al, 72;                              jne   .Lx833_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx833_114
                                                                              jmp   .Lx833_118
.Lx833_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx833_115
                        cmp              al, 3;                               jne   .Lx833_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx833_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx833_115
                                                                              jmp   .Lx833_114
.Lx833_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx833_117
.Lx833_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx833_117
.Lx833_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx833_117:             mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n747_var_ref_α
                                                                              jmp   n742_var_ref_α
n741_call_builtin_prolog_β:
                        mov              r11, 308;                            jmp   n747_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n743_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx836_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n744_call_builtin_prolog_α
.Lx836_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n744_call_builtin_prolog_α:
                        mov              r11, 311
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n746_call_builtin_prolog_α
                                                                              jmp   n745_suspend_α
n744_call_builtin_prolog_β:
                        mov              r11, 311;                            jmp   n746_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n745_suspend_α:         mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx839_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx839_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n745_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n745_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n745_suspend_β:         mov              r11, 312;                            jmp   n746_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n746_call_builtin_prolog_α:
                        mov              r11, 313
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n747_var_ref_α
n746_call_builtin_prolog_β:
                        mov              r11, 313;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n747_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n748_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:     mov              r11, 315
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n749_lit_integer_α
.Lx843_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:     mov              r11, 316
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n750_call_builtin_prolog_α
.Lx844_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n750_call_builtin_prolog_α:
                        mov              r11, 317
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        lea              r8, [rsp + 1168]
.Lx845_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx845_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx845_111
                        cmp              esi, 1;                              jne   .Lx845_112
                        mov              r8, rax;                             jmp   .Lx845_110
.Lx845_112:             cmp              esi, 2;                              jne   .Lx845_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx845_111
                        mov              r8, rax;                             jmp   .Lx845_110
.Lx845_113:             cmp              al, 72;                              jne   .Lx845_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx845_111
                        cmp              rax, r8;                             je    .Lx845_111
                        mov              r8, rax;                             jmp   .Lx845_110
.Lx845_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx845_114
                        cmp              al, 104;                             je    .Lx845_114
                        cmp              al, 72;                              jne   .Lx845_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx845_114
                                                                              jmp   .Lx845_118
.Lx845_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx845_115
                        cmp              al, 3;                               jne   .Lx845_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx845_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx845_115
                                                                              jmp   .Lx845_114
.Lx845_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx845_117
.Lx845_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx845_117
.Lx845_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx845_117:             mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n756_var_ref_α
                                                                              jmp   n751_var_ref_α
n750_call_builtin_prolog_β:
                        mov              r11, 317;                            jmp   n756_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n751_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n752_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n753_call_builtin_prolog_α
.Lx848_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_prolog_α:
                        mov              r11, 320
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n755_call_builtin_prolog_α
                                                                              jmp   n754_suspend_α
n753_call_builtin_prolog_β:
                        mov              r11, 320;                            jmp   n755_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n754_suspend_α:         mov              r11, 321
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx851_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx851_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n754_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n754_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n754_suspend_β:         mov              r11, 321;                            jmp   n755_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n755_call_builtin_prolog_α:
                        mov              r11, 322
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n756_var_ref_α
n755_call_builtin_prolog_β:
                        mov              r11, 322;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n757_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_integer_α:     mov              r11, 324
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n758_lit_integer_α
.Lx855_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:     mov              r11, 325
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n759_call_builtin_prolog_α
.Lx856_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_prolog_α:
                        mov              r11, 326
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lx857_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx857_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx857_111
                        cmp              esi, 1;                              jne   .Lx857_112
                        mov              r8, rax;                             jmp   .Lx857_110
.Lx857_112:             cmp              esi, 2;                              jne   .Lx857_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx857_111
                        mov              r8, rax;                             jmp   .Lx857_110
.Lx857_113:             cmp              al, 72;                              jne   .Lx857_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx857_111
                        cmp              rax, r8;                             je    .Lx857_111
                        mov              r8, rax;                             jmp   .Lx857_110
.Lx857_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx857_114
                        cmp              al, 104;                             je    .Lx857_114
                        cmp              al, 72;                              jne   .Lx857_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx857_114
                                                                              jmp   .Lx857_118
.Lx857_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx857_115
                        cmp              al, 3;                               jne   .Lx857_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx857_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx857_115
                                                                              jmp   .Lx857_114
.Lx857_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx857_117
.Lx857_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx857_117
.Lx857_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx857_117:             mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n765_var_ref_α
                                                                              jmp   n760_var_ref_α
n759_call_builtin_prolog_β:
                        mov              r11, 326;                            jmp   n765_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n760_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n761_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:     mov              r11, 328
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n762_call_builtin_prolog_α
.Lx860_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_prolog_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n764_call_builtin_prolog_α
                                                                              jmp   n763_suspend_α
n762_call_builtin_prolog_β:
                        mov              r11, 329;                            jmp   n764_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n763_suspend_α:         mov              r11, 330
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx863_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx863_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n763_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n763_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n763_suspend_β:         mov              r11, 330;                            jmp   n764_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n764_call_builtin_prolog_α:
                        mov              r11, 331
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n765_var_ref_α
n764_call_builtin_prolog_β:
                        mov              r11, 331;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n766_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n767_lit_integer_α
.Lx867_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n768_call_builtin_prolog_α
.Lx868_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n768_call_builtin_prolog_α:
                        mov              r11, 335
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx869_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx869_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx869_111
                        cmp              esi, 1;                              jne   .Lx869_112
                        mov              r8, rax;                             jmp   .Lx869_110
.Lx869_112:             cmp              esi, 2;                              jne   .Lx869_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx869_111
                        mov              r8, rax;                             jmp   .Lx869_110
.Lx869_113:             cmp              al, 72;                              jne   .Lx869_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx869_111
                        cmp              rax, r8;                             je    .Lx869_111
                        mov              r8, rax;                             jmp   .Lx869_110
.Lx869_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx869_114
                        cmp              al, 104;                             je    .Lx869_114
                        cmp              al, 72;                              jne   .Lx869_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx869_114
                                                                              jmp   .Lx869_118
.Lx869_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx869_115
                        cmp              al, 3;                               jne   .Lx869_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx869_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx869_115
                                                                              jmp   .Lx869_114
.Lx869_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx869_117
.Lx869_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx869_117
.Lx869_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx869_117:             mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n774_var_ref_α
                                                                              jmp   n769_var_ref_α
n768_call_builtin_prolog_β:
                        mov              r11, 335;                            jmp   n774_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n771_call_builtin_prolog_α
.Lx872_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_prolog_α:
                        mov              r11, 338
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n773_call_builtin_prolog_α
                                                                              jmp   n772_suspend_α
n771_call_builtin_prolog_β:
                        mov              r11, 338;                            jmp   n773_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n772_suspend_α:         mov              r11, 339
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx875_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx875_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n772_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n772_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n772_suspend_β:         mov              r11, 339;                            jmp   n773_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_prolog_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n774_var_ref_α
n773_call_builtin_prolog_β:
                        mov              r11, 340;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n774_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n775_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n776_lit_integer_α
.Lx879_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n777_call_builtin_prolog_α
.Lx880_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n777_call_builtin_prolog_α:
                        mov              r11, 344
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx881_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx881_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx881_111
                        cmp              esi, 1;                              jne   .Lx881_112
                        mov              r8, rax;                             jmp   .Lx881_110
.Lx881_112:             cmp              esi, 2;                              jne   .Lx881_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx881_111
                        mov              r8, rax;                             jmp   .Lx881_110
.Lx881_113:             cmp              al, 72;                              jne   .Lx881_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx881_111
                        cmp              rax, r8;                             je    .Lx881_111
                        mov              r8, rax;                             jmp   .Lx881_110
.Lx881_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx881_114
                        cmp              al, 104;                             je    .Lx881_114
                        cmp              al, 72;                              jne   .Lx881_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx881_114
                                                                              jmp   .Lx881_118
.Lx881_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx881_115
                        cmp              al, 3;                               jne   .Lx881_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx881_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx881_115
                                                                              jmp   .Lx881_114
.Lx881_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx881_117
.Lx881_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx881_117
.Lx881_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx881_117:             mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n783_var_ref_α
                                                                              jmp   n778_var_ref_α
n777_call_builtin_prolog_β:
                        mov              r11, 344;                            jmp   n783_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n779_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_integer_α:     mov              r11, 346
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n780_call_builtin_prolog_α
.Lx884_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n780_call_builtin_prolog_α:
                        mov              r11, 347
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n782_call_builtin_prolog_α
                                                                              jmp   n781_suspend_α
n780_call_builtin_prolog_β:
                        mov              r11, 347;                            jmp   n782_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n781_suspend_α:         mov              r11, 348
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx887_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx887_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n781_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n781_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n781_suspend_β:         mov              r11, 348;                            jmp   n782_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_call_builtin_prolog_α:
                        mov              r11, 349
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n783_var_ref_α
n782_call_builtin_prolog_β:
                        mov              r11, 349;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n784_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n785_lit_integer_α
.Lx891_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_integer_α:     mov              r11, 352
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n786_call_builtin_prolog_α
.Lx892_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n786_call_builtin_prolog_α:
                        mov              r11, 353
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        lea              r8, [rsp + 208]
.Lx893_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx893_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx893_111
                        cmp              esi, 1;                              jne   .Lx893_112
                        mov              r8, rax;                             jmp   .Lx893_110
.Lx893_112:             cmp              esi, 2;                              jne   .Lx893_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx893_111
                        mov              r8, rax;                             jmp   .Lx893_110
.Lx893_113:             cmp              al, 72;                              jne   .Lx893_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx893_111
                        cmp              rax, r8;                             je    .Lx893_111
                        mov              r8, rax;                             jmp   .Lx893_110
.Lx893_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx893_114
                        cmp              al, 104;                             je    .Lx893_114
                        cmp              al, 72;                              jne   .Lx893_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx893_114
                                                                              jmp   .Lx893_118
.Lx893_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx893_115
                        cmp              al, 3;                               jne   .Lx893_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx893_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lx893_115
                                                                              jmp   .Lx893_114
.Lx893_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx893_117
.Lx893_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx893_117
.Lx893_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx893_117:             mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n791_call_builtin_prolog_α
                                                                              jmp   n787_var_ref_α
n786_call_builtin_prolog_β:
                        mov              r11, 353;                            jmp   n791_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n788_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_integer_α:     mov              r11, 355
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n789_call_builtin_prolog_α
.Lx896_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n789_call_builtin_prolog_α:
                        mov              r11, 356
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n791_call_builtin_prolog_α
                                                                              jmp   n790_suspend_α
n789_call_builtin_prolog_β:
                        mov              r11, 356;                            jmp   n791_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n790_suspend_α:         mov              r11, 357
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx899_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx899_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n790_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n790_suspend_β]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   leftdigit$2F1_γ
n790_suspend_β:         mov              r11, 357;                            jmp   n791_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n791_call_builtin_prolog_α:
                        mov              r11, 358
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
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   leftdigit$2F1_ω
n791_call_builtin_prolog_β:
                        mov              r11, 358;                            jmp   leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_β:
                                                                              jmp   n718_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx900_50
                        mov              qword ptr [rsp + 2224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2224];         jmp   rax
.Lx900_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2264]
                        add              rsp, 2288;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2272]
                        add              rsp, 2288;                           jmp   rcx
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
                        sub              rsp, 1616
                        mov              qword ptr [rsp + 1592], rcx
                        mov              qword ptr [rsp + 1600], rdx
                        mov              qword ptr [rsp + 1608], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1584
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
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
n901_call_builtin_prolog_α:
                        mov              r11, 359
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx944_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx944_101
.Lx944_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx944_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx944_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx944_101
.Lx944_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx944_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n902_var_ref_α
n901_call_builtin_prolog_β:
                        mov              r11, 359;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n902_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n903_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n904_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n904_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n905_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n905_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n906_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n907_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n908_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n908_var_ref_α:         mov              r11, 366
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n909_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n910_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n910_call_proc_staged_α:
                        mov              r11, 368
                        mov              qword ptr [rsp + 1280], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_200
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx962_201
.Lx962_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_202
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx962_203
.Lx962_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_204
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx962_205
.Lx962_204:             mov              edi, 2
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
.Lx962_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_206
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx962_207
.Lx962_206:             mov              edi, 3
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
.Lx962_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_208
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx962_209
.Lx962_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_210
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx962_211
.Lx962_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_212
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx962_213
.Lx962_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx962_214
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx962_215
.Lx962_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx962_215:             lea              rax, [rip + .Lx962_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx962_1
                        lea              rcx, [rip + .Lx962_4]
                        push             rcx
                        lea              rcx, [rip + .Lx962_3]
                        push             rcx
                        lea              rdx, [rip + .Lx962_4];               jmp   rax
.Lx962_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1288], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lx962_5
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx962_2
.Lx962_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx962_2
.Lx962_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lx962_6
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx962_2
.Lx962_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx962_2
.Lx962_1:               call             rt_faildescr@PLT
.Lx962_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx962_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
.Lx962_29:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n937_lit_string_α
                                                                              jmp   n911_lit_string_α
n910_call_proc_staged_β:
                        mov              r11, 368
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1280], 0
                        lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n937_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              ecx, 144
                        mov              r8d, 4320
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 3
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
                        mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n937_lit_string_α
                        lea              r8, [rip + .Lx962_7]
                        push             r8
                        lea              rcx, [rip + .Lx962_4]
                        push             rcx
                        lea              rcx, [rip + .Lx962_3]
                        push             rcx
                        lea              rdx, [rip + .Lx962_4];               jmp   rax
.Lx962_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n937_lit_string_α
                                                                              jmp   n911_lit_string_α
.Lx962_0:               .quad            .Lx962_0_s
.Lx962_0_s:             .string          "solve/8"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n912_var_ref_α
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n912_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n913_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n914_var_ref_α
.Lx966_0:               .quad            .Lx966_0_s
.Lx966_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n914_var_ref_α:         mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n915_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n916_var_ref_α
.Lx969_0:               .quad            .Lx969_0_s
.Lx969_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n916_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n917_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n917_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n918_var_ref_α
.Lx972_0:               .quad            .Lx972_0_s
.Lx972_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n918_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n919_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n920_var_ref_α
.Lx975_0:               .quad            .Lx975_0_s
.Lx975_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n921_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n922_var_ref_α
.Lx978_0:               .quad            .Lx978_0_s
.Lx978_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n923_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n924_var_ref_α
.Lx981_0:               .quad            .Lx981_0_s
.Lx981_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n924_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n925_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n926_var_ref_α
.Lx984_0:               .quad            .Lx984_0_s
.Lx984_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n926_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n927_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx987_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n928_call_builtin_prolog_α
.Lx987_0:               .quad            .Lx987_0_s
.Lx987_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n928_call_builtin_prolog_α:
                        mov              r11, 386
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n929_call_builtin_prolog_α
n928_call_builtin_prolog_β:
                        mov              r11, 386;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n929_call_builtin_prolog_α:
                        mov              r11, 387
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 216]
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
                                                                              jmp   n930_call_builtin_prolog_α
n929_call_builtin_prolog_β:
                        mov              r11, 387;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n930_call_builtin_prolog_α:
                        mov              r11, 388
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
                                                                              jmp   n931_call_builtin_prolog_α
n930_call_builtin_prolog_β:
                        mov              r11, 388;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n931_call_builtin_prolog_α:
                        mov              r11, 389
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
                                                                              jmp   n932_call_builtin_prolog_α
n931_call_builtin_prolog_β:
                        mov              r11, 389;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n932_call_builtin_prolog_α:
                        mov              r11, 390
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
                                                                              jmp   n933_call_builtin_prolog_α
n932_call_builtin_prolog_β:
                        mov              r11, 390;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n933_call_builtin_prolog_α:
                        mov              r11, 391
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
                                                                              jmp   n934_call_builtin_prolog_α
n933_call_builtin_prolog_β:
                        mov              r11, 391;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n934_call_builtin_prolog_α:
                        mov              r11, 392
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
                                                                              jmp   n935_call_builtin_prolog_α
n934_call_builtin_prolog_β:
                        mov              r11, 392;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n935_call_builtin_prolog_α:
                        mov              r11, 393
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
                        cmp              al, 104;                             je    n943_call_builtin_prolog_α
                                                                              jmp   n936_call_builtin_prolog_α
n935_call_builtin_prolog_β:
                        mov              r11, 393;                            jmp   n943_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n936_call_builtin_prolog_α:
                        mov              r11, 394
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn997:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn997]
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
                        cmp              al, 104;                             je    n943_call_builtin_prolog_α
                                                                              jmp   n939_lit_string_α
n936_call_builtin_prolog_β:
                        mov              r11, 394;                            jmp   n943_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_string_α:      mov              r11, 395
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 4
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n938_call_builtin_prolog_α
.Lx998_0:               .quad            .Lx998_0_s
.Lx998_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n938_call_builtin_prolog_α:
                        mov              r11, 396
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn1000:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1000]
                        lea              rsi, [rsp + 1104]
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
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n943_call_builtin_prolog_α
                                                                              jmp   n939_lit_string_α
n938_call_builtin_prolog_β:
                        mov              r11, 396;                            jmp   n943_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n939_lit_string_α:      mov              r11, 397
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n940_call_builtin_prolog_α
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n940_call_builtin_prolog_α:
                        mov              r11, 398
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn1003:             .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1003]
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
                        cmp              al, 104;                             je    n943_call_builtin_prolog_α
                                                                              jmp   n941_move_label_α
n940_call_builtin_prolog_β:
                        mov              r11, 398;                            jmp   n943_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n941_move_label_α:      mov              r11, 399
                        lea              rax, [rip + n943_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n942_disjunction_α:     mov              r11, 400
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
n942_disjunction_β:     mov              r11, 400;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n943_call_builtin_prolog_α:
                        mov              r11, 401
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
n943_call_builtin_prolog_β:
                        mov              r11, 401;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n942_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1592]
                        add              rsp, 1616;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1600]
                        add              rsp, 1616;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sumdigit/5"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sumdigit$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            1408
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "digit/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__digit$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "solve/8"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__solve$2F8
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            8
                        .long            0
                        .long            4512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "leftdigit/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__leftdigit$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2240
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
