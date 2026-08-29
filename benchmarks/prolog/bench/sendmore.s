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
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_42_102
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lsumdigit$2F5_α_42_101
.Lsumdigit$2F5_α_42_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lsumdigit$2F5_α_42_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lsumdigit$2F5_α_42_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lsumdigit$2F5_α_42_101
.Lsumdigit$2F5_α_42_100:
                        lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_42_101:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   sumdigit$2F5_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
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
.Lsumdigit$2F5_α_47_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_47_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_47_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_47_40
.Lsumdigit$2F5_α_47_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_47_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_47_40
.Lsumdigit$2F5_α_47_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_47_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_47_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_47_40
.Lsumdigit$2F5_α_47_41: lea              r9, [rsp + 1248]
.Lsumdigit$2F5_α_47_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_47_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_47_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_47_42
.Lsumdigit$2F5_α_47_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_47_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_47_42
.Lsumdigit$2F5_α_47_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_47_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_47_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_47_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_47_42
.Lsumdigit$2F5_α_47_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_47_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_47_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_47_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_47_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_47_44
                                                                              jmp   .Lsumdigit$2F5_α_47_45
.Lsumdigit$2F5_α_47_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_47_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_47_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_47_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_47_53
                                                                              jmp   .Lsumdigit$2F5_α_47_46
.Lsumdigit$2F5_α_47_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_47_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_47_51
.Lsumdigit$2F5_α_47_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_47_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_47_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_47_47
                                                                              jmp   .Lsumdigit$2F5_α_47_48
.Lsumdigit$2F5_α_47_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_47_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_47_51
.Lsumdigit$2F5_α_47_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_47_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_47_53
                                                                              jmp   .Lsumdigit$2F5_α_47_52
.Lsumdigit$2F5_α_47_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_47_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_47_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_47_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_47_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_47_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_47_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_47_51
                                                                              jmp   .Lsumdigit$2F5_α_47_52
.Lsumdigit$2F5_α_47_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_47_53
.Lsumdigit$2F5_α_47_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_47_54
.Lsumdigit$2F5_α_47_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_47_54
.Lsumdigit$2F5_α_47_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_47_54: mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n41_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n5_var_ref_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n6_call_prolog_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_call_prolog_bx, @function
n6_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_prolog_α:       mov              r11, 7
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
.Lsumdigit$2F5_α_52_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_52_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_52_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_52_40
.Lsumdigit$2F5_α_52_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_52_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_52_40
.Lsumdigit$2F5_α_52_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_52_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_52_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_52_40
.Lsumdigit$2F5_α_52_41: lea              r9, [rsp + 1168]
.Lsumdigit$2F5_α_52_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_52_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_52_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_52_42
.Lsumdigit$2F5_α_52_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_52_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_52_42
.Lsumdigit$2F5_α_52_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_52_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_52_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_52_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_52_42
.Lsumdigit$2F5_α_52_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_52_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_52_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_52_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_52_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_52_44
                                                                              jmp   .Lsumdigit$2F5_α_52_45
.Lsumdigit$2F5_α_52_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_52_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_52_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_52_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_52_53
                                                                              jmp   .Lsumdigit$2F5_α_52_46
.Lsumdigit$2F5_α_52_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_52_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_52_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_52_51
.Lsumdigit$2F5_α_52_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_52_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_52_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_52_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_52_47
                                                                              jmp   .Lsumdigit$2F5_α_52_48
.Lsumdigit$2F5_α_52_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_52_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_52_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_52_51
.Lsumdigit$2F5_α_52_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_52_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_52_53
                                                                              jmp   .Lsumdigit$2F5_α_52_52
.Lsumdigit$2F5_α_52_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_52_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_52_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_52_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_52_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_52_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_52_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_52_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_52_51
                                                                              jmp   .Lsumdigit$2F5_α_52_52
.Lsumdigit$2F5_α_52_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_52_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_52_53
.Lsumdigit$2F5_α_52_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_52_54
.Lsumdigit$2F5_α_52_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_52_54
.Lsumdigit$2F5_α_52_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_52_54: mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n41_call_prolog_α
                        .size            n6_call_prolog_bx, .-n6_call_prolog_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n8_var_ref_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n9_call_prolog_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_call_prolog_bx, @function
n9_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_prolog_α:       mov              r11, 10
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
.Lsumdigit$2F5_α_57_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_57_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_57_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_57_40
.Lsumdigit$2F5_α_57_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_57_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_57_40
.Lsumdigit$2F5_α_57_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_57_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_57_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_57_40
.Lsumdigit$2F5_α_57_41: lea              r9, [rsp + 1088]
.Lsumdigit$2F5_α_57_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_57_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_57_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_57_42
.Lsumdigit$2F5_α_57_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_57_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_57_42
.Lsumdigit$2F5_α_57_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_57_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_57_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_57_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_57_42
.Lsumdigit$2F5_α_57_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_57_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_57_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_57_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_57_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_57_44
                                                                              jmp   .Lsumdigit$2F5_α_57_45
.Lsumdigit$2F5_α_57_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_57_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_57_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_57_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_57_53
                                                                              jmp   .Lsumdigit$2F5_α_57_46
.Lsumdigit$2F5_α_57_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_57_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_57_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_57_51
.Lsumdigit$2F5_α_57_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_57_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_57_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_57_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_57_47
                                                                              jmp   .Lsumdigit$2F5_α_57_48
.Lsumdigit$2F5_α_57_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_57_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_57_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_57_51
.Lsumdigit$2F5_α_57_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_57_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_57_53
                                                                              jmp   .Lsumdigit$2F5_α_57_52
.Lsumdigit$2F5_α_57_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_57_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_57_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_57_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_57_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_57_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_57_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_57_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_57_51
                                                                              jmp   .Lsumdigit$2F5_α_57_52
.Lsumdigit$2F5_α_57_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_57_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_57_53
.Lsumdigit$2F5_α_57_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_57_54
.Lsumdigit$2F5_α_57_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_57_54
.Lsumdigit$2F5_α_57_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_57_54: mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n10_var_ref_α
n9_call_prolog_β:       mov              r11, 10;                             jmp   n41_call_prolog_α
                        .size            n9_call_prolog_bx, .-n9_call_prolog_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n12_call_prolog_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
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
.Lsumdigit$2F5_α_62_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_62_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_62_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_62_40
.Lsumdigit$2F5_α_62_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_62_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_62_40
.Lsumdigit$2F5_α_62_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_62_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_62_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_62_40
.Lsumdigit$2F5_α_62_41: lea              r9, [rsp + 1008]
.Lsumdigit$2F5_α_62_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_62_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_62_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_62_42
.Lsumdigit$2F5_α_62_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_62_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_62_42
.Lsumdigit$2F5_α_62_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_62_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_62_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_62_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_62_42
.Lsumdigit$2F5_α_62_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_62_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_62_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_62_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_62_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_62_44
                                                                              jmp   .Lsumdigit$2F5_α_62_45
.Lsumdigit$2F5_α_62_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_62_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_62_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_62_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_62_53
                                                                              jmp   .Lsumdigit$2F5_α_62_46
.Lsumdigit$2F5_α_62_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_62_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_62_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_62_51
.Lsumdigit$2F5_α_62_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_62_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_62_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_62_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_62_47
                                                                              jmp   .Lsumdigit$2F5_α_62_48
.Lsumdigit$2F5_α_62_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_62_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_62_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_62_51
.Lsumdigit$2F5_α_62_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_62_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_62_53
                                                                              jmp   .Lsumdigit$2F5_α_62_52
.Lsumdigit$2F5_α_62_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_62_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_62_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_62_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_62_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_62_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_62_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_62_51
                                                                              jmp   .Lsumdigit$2F5_α_62_52
.Lsumdigit$2F5_α_62_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_62_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_62_53
.Lsumdigit$2F5_α_62_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_62_54
.Lsumdigit$2F5_α_62_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_62_54
.Lsumdigit$2F5_α_62_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_62_54: mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n13_var_ref_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   n41_call_prolog_α
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n14_var_ref_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n15_call_prolog_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
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
.Lsumdigit$2F5_α_67_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_67_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_67_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_67_40
.Lsumdigit$2F5_α_67_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_67_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_67_40
.Lsumdigit$2F5_α_67_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_67_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_67_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_67_40
.Lsumdigit$2F5_α_67_41: lea              r9, [rsp + 928]
.Lsumdigit$2F5_α_67_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_67_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_67_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_67_42
.Lsumdigit$2F5_α_67_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_67_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_67_42
.Lsumdigit$2F5_α_67_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_67_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_67_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_67_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_67_42
.Lsumdigit$2F5_α_67_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_67_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_67_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_67_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_67_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_67_44
                                                                              jmp   .Lsumdigit$2F5_α_67_45
.Lsumdigit$2F5_α_67_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_67_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_67_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_67_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_67_53
                                                                              jmp   .Lsumdigit$2F5_α_67_46
.Lsumdigit$2F5_α_67_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_67_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_67_51
.Lsumdigit$2F5_α_67_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_67_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_67_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_67_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_67_47
                                                                              jmp   .Lsumdigit$2F5_α_67_48
.Lsumdigit$2F5_α_67_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_67_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_67_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_67_51
.Lsumdigit$2F5_α_67_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_67_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_67_53
                                                                              jmp   .Lsumdigit$2F5_α_67_52
.Lsumdigit$2F5_α_67_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_67_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_67_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_67_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_67_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_67_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_67_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_67_51
                                                                              jmp   .Lsumdigit$2F5_α_67_52
.Lsumdigit$2F5_α_67_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_67_53
.Lsumdigit$2F5_α_67_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_67_54
.Lsumdigit$2F5_α_67_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_67_54
.Lsumdigit$2F5_α_67_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_67_54: mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n41_call_prolog_α
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n17_var_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 856], rax;          jmp   n18_var_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 872], rax;          jmp   n19_call_prolog_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n20_var_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n41_call_prolog_α
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 888], rax;          jmp   n21_call_prolog_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n22_call_prolog_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n41_call_prolog_α
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n23_var_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   n41_call_prolog_α
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 632], rax;          jmp   n24_lit_integer_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lsumdigit$2F5_α_81_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n25_call_prolog_α
.Lsumdigit$2F5_α_81_0:  .quad            10
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_call_prolog_bx, @function
n25_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_prolog_α:      mov              r11, 26
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
n25_call_prolog_β:      mov              r11, 26;                             jmp   n32_var_ref_α
                        .size            n25_call_prolog_bx, .-n25_call_prolog_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n28_call_prolog_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
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
.Lsumdigit$2F5_α_87_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_41
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_87_55
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_87_40
.Lsumdigit$2F5_α_87_55: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_87_40
.Lsumdigit$2F5_α_87_56: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_41
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_87_41
                        mov              r8, rax;                             jmp   .Lsumdigit$2F5_α_87_40
.Lsumdigit$2F5_α_87_41: lea              r9, [rsp + 288]
.Lsumdigit$2F5_α_87_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsumdigit$2F5_α_87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_43
                        cmp              esi, 1;                              jne   .Lsumdigit$2F5_α_87_57
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_87_42
.Lsumdigit$2F5_α_87_57: cmp              esi, 2;                              jne   .Lsumdigit$2F5_α_87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_87_42
.Lsumdigit$2F5_α_87_58: cmp              al, 72;                              jne   .Lsumdigit$2F5_α_87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_87_43
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_87_43
                        mov              r9, rax;                             jmp   .Lsumdigit$2F5_α_87_42
.Lsumdigit$2F5_α_87_43: cmp              r8, r9;                              je    .Lsumdigit$2F5_α_87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_87_44
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_87_44
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsumdigit$2F5_α_87_44
                                                                              jmp   .Lsumdigit$2F5_α_87_45
.Lsumdigit$2F5_α_87_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_87_53
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_87_53
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_87_53
                                                                              jmp   .Lsumdigit$2F5_α_87_46
.Lsumdigit$2F5_α_87_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_87_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsumdigit$2F5_α_87_51
.Lsumdigit$2F5_α_87_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsumdigit$2F5_α_87_47
                        cmp              al, 104;                             je    .Lsumdigit$2F5_α_87_47
                        cmp              al, 72;                              jne   .Lsumdigit$2F5_α_87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsumdigit$2F5_α_87_47
                                                                              jmp   .Lsumdigit$2F5_α_87_48
.Lsumdigit$2F5_α_87_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsumdigit$2F5_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsumdigit$2F5_α_87_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsumdigit$2F5_α_87_51
.Lsumdigit$2F5_α_87_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsumdigit$2F5_α_87_49
                        cmp              dl, 80;                              je    .Lsumdigit$2F5_α_87_53
                                                                              jmp   .Lsumdigit$2F5_α_87_52
.Lsumdigit$2F5_α_87_49: cmp              dl, 80;                              je    .Lsumdigit$2F5_α_87_52
                        cmp              cl, 5;                               je    .Lsumdigit$2F5_α_87_53
                        cmp              dl, 5;                               je    .Lsumdigit$2F5_α_87_53
                        cmp              cl, 3;                               jne   .Lsumdigit$2F5_α_87_50
                        cmp              dl, 3;                               jne   .Lsumdigit$2F5_α_87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsumdigit$2F5_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsumdigit$2F5_α_87_51
                                                                              jmp   .Lsumdigit$2F5_α_87_52
.Lsumdigit$2F5_α_87_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsumdigit$2F5_α_87_53
.Lsumdigit$2F5_α_87_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsumdigit$2F5_α_87_54
.Lsumdigit$2F5_α_87_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsumdigit$2F5_α_87_54
.Lsumdigit$2F5_α_87_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsumdigit$2F5_α_87_54: mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n29_var_ref_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n41_call_prolog_α
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n30_lit_integer_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lsumdigit$2F5_α_90_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n31_call_prolog_α
.Lsumdigit$2F5_α_90_0:  .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_prolog_bx, @function
n31_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_prolog_α:      mov              r11, 32
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n40_suspend_α
n31_call_prolog_β:      mov              r11, 32;                             jmp   n41_call_prolog_α
                        .size            n31_call_prolog_bx, .-n31_call_prolog_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n33_var_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 552], rax;          jmp   n34_lit_integer_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lsumdigit$2F5_α_96_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n35_call_prolog_α
.Lsumdigit$2F5_α_96_0:  .quad            10
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_call_prolog_bx, @function
n35_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n36_call_prolog_α
n35_call_prolog_β:      mov              r11, 36;                             jmp   n41_call_prolog_α
                        .size            n35_call_prolog_bx, .-n35_call_prolog_bx
                        .type            n36_call_prolog_bx, @function
n36_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_prolog_α:      mov              r11, 37
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n37_var_ref_α
n36_call_prolog_β:      mov              r11, 37;                             jmp   n41_call_prolog_α
                        .size            n36_call_prolog_bx, .-n36_call_prolog_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n38_lit_integer_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lsumdigit$2F5_α_101_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n39_call_prolog_α
.Lsumdigit$2F5_α_101_0: .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_call_prolog_bx, @function
n39_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_prolog_α:      mov              r11, 40
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
                        cmp              al, 104;                             je    n41_call_prolog_α
                                                                              jmp   n40_suspend_α
n39_call_prolog_β:      mov              r11, 40;                             jmp   n41_call_prolog_α
                        .size            n39_call_prolog_bx, .-n39_call_prolog_bx
                        .type            n40_suspend_bx, @function
n40_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:          mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsumdigit$2F5_α_104_61
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
.Lsumdigit$2F5_α_104_61:
                        mov              rdi, qword ptr [rsp + 96]
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
n40_suspend_β:          mov              r11, 41;                             jmp   n41_call_prolog_α
                        .size            n40_suspend_bx, .-n40_suspend_bx
                        .type            n41_call_prolog_bx, @function
n41_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_prolog_α:      mov              r11, 42
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
n41_call_prolog_β:      mov              r11, 42;                             jmp   sumdigit$2F5_ω
                        .size            n41_call_prolog_bx, .-n41_call_prolog_bx
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
                        test             r12, r12;                            je    .Lsumdigit$2F5_α_105_50
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
.Lsumdigit$2F5_α_105_50:
                        mov              rdi, rax
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
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 43
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Ldigit$2F1_α_197_102
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Ldigit$2F1_α_197_101
.Ldigit$2F1_α_197_102:  lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Ldigit$2F1_α_197_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Ldigit$2F1_α_197_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Ldigit$2F1_α_197_101
.Ldigit$2F1_α_197_100:  lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_197_101:  mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 43;                             jmp   digit$2F1_ω
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n108_lit_integer_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_lit_integer_bx, @function
n108_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              r11, 45
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_200_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n109_lit_integer_α
.Ldigit$2F1_α_200_0:    .quad            1
                        .size            n108_lit_integer_bx, .-n108_lit_integer_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 46
                        mov              qword ptr [rsp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_201_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n110_call_prolog_α
.Ldigit$2F1_α_201_0:    .quad            0
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_call_prolog_bx, @function
n110_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_prolog_α:     mov              r11, 47
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
.Ldigit$2F1_α_202_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_202_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_202_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_202_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_202_110
.Ldigit$2F1_α_202_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_202_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_202_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_202_110
.Ldigit$2F1_α_202_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_202_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_202_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_202_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_202_110
.Ldigit$2F1_α_202_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_202_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_202_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_202_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_202_114
                                                                              jmp   .Ldigit$2F1_α_202_118
.Ldigit$2F1_α_202_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_202_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_202_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_202_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_202_115
                                                                              jmp   .Ldigit$2F1_α_202_114
.Ldigit$2F1_α_202_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_202_117
.Ldigit$2F1_α_202_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_202_117
.Ldigit$2F1_α_202_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_202_117:  mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n116_var_ref_α
                                                                              jmp   n111_var_ref_α
n110_call_prolog_β:     mov              r11, 47;                             jmp   n116_var_ref_α
                        .size            n110_call_prolog_bx, .-n110_call_prolog_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n112_lit_integer_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 49
                        mov              qword ptr [rsp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_205_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n113_call_prolog_α
.Ldigit$2F1_α_205_0:    .quad            0
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_prolog_bx, @function
n113_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_prolog_α:     mov              r11, 50
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
                        cmp              al, 104;                             je    n115_call_prolog_α
                                                                              jmp   n114_suspend_α
n113_call_prolog_β:     mov              r11, 50;                             jmp   n115_call_prolog_α
                        .size            n113_call_prolog_bx, .-n113_call_prolog_bx
                        .type            n114_suspend_bx, @function
n114_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_suspend_α:         mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_208_61
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
.Ldigit$2F1_α_208_61:   mov              rdi, qword ptr [rsp + 32]
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
n114_suspend_β:         mov              r11, 51;                             jmp   n115_call_prolog_α
                        .size            n114_suspend_bx, .-n114_suspend_bx
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 52
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
n115_call_prolog_β:     mov              r11, 52;                             jmp   digit$2F1_ω
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n117_lit_integer_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_212_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n118_lit_integer_α
.Ldigit$2F1_α_212_0:    .quad            1
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 55
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_213_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n119_call_prolog_α
.Ldigit$2F1_α_213_0:    .quad            1
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_prolog_bx, @function
n119_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_prolog_α:     mov              r11, 56
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
.Ldigit$2F1_α_214_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_214_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_214_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_214_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_214_110
.Ldigit$2F1_α_214_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_214_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_214_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_214_110
.Ldigit$2F1_α_214_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_214_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_214_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_214_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_214_110
.Ldigit$2F1_α_214_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_214_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_214_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_214_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_214_114
                                                                              jmp   .Ldigit$2F1_α_214_118
.Ldigit$2F1_α_214_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_214_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_214_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_214_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_214_115
                                                                              jmp   .Ldigit$2F1_α_214_114
.Ldigit$2F1_α_214_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_214_117
.Ldigit$2F1_α_214_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_214_117
.Ldigit$2F1_α_214_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_214_117:  mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n125_var_ref_α
                                                                              jmp   n120_var_ref_α
n119_call_prolog_β:     mov              r11, 56;                             jmp   n125_var_ref_α
                        .size            n119_call_prolog_bx, .-n119_call_prolog_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n121_lit_integer_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_lit_integer_bx, @function
n121_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              r11, 58
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_217_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n122_call_prolog_α
.Ldigit$2F1_α_217_0:    .quad            1
                        .size            n121_lit_integer_bx, .-n121_lit_integer_bx
                        .type            n122_call_prolog_bx, @function
n122_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_prolog_α:     mov              r11, 59
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
                        cmp              al, 104;                             je    n124_call_prolog_α
                                                                              jmp   n123_suspend_α
n122_call_prolog_β:     mov              r11, 59;                             jmp   n124_call_prolog_α
                        .size            n122_call_prolog_bx, .-n122_call_prolog_bx
                        .type            n123_suspend_bx, @function
n123_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_suspend_α:         mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_220_61
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
.Ldigit$2F1_α_220_61:   mov              rdi, qword ptr [rsp + 32]
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
n123_suspend_β:         mov              r11, 60;                             jmp   n124_call_prolog_α
                        .size            n123_suspend_bx, .-n123_suspend_bx
                        .type            n124_call_prolog_bx, @function
n124_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_prolog_α:     mov              r11, 61
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
n124_call_prolog_β:     mov              r11, 61;                             jmp   digit$2F1_ω
                        .size            n124_call_prolog_bx, .-n124_call_prolog_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n126_lit_integer_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_224_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n127_lit_integer_α
.Ldigit$2F1_α_224_0:    .quad            1
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              r11, 64
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_225_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n128_call_prolog_α
.Ldigit$2F1_α_225_0:    .quad            2
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_call_prolog_bx, @function
n128_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_prolog_α:     mov              r11, 65
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
.Ldigit$2F1_α_226_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_226_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_226_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_226_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_226_110
.Ldigit$2F1_α_226_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_226_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_226_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_226_110
.Ldigit$2F1_α_226_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_226_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_226_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_226_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_226_110
.Ldigit$2F1_α_226_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_226_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_226_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_226_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_226_114
                                                                              jmp   .Ldigit$2F1_α_226_118
.Ldigit$2F1_α_226_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_226_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_226_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_226_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_226_115
                                                                              jmp   .Ldigit$2F1_α_226_114
.Ldigit$2F1_α_226_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_226_117
.Ldigit$2F1_α_226_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_226_117
.Ldigit$2F1_α_226_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_226_117:  mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n134_var_ref_α
                                                                              jmp   n129_var_ref_α
n128_call_prolog_β:     mov              r11, 65;                             jmp   n134_var_ref_α
                        .size            n128_call_prolog_bx, .-n128_call_prolog_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n130_lit_integer_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 67
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_229_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n131_call_prolog_α
.Ldigit$2F1_α_229_0:    .quad            2
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_prolog_bx, @function
n131_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_prolog_α:     mov              r11, 68
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
                        cmp              al, 104;                             je    n133_call_prolog_α
                                                                              jmp   n132_suspend_α
n131_call_prolog_β:     mov              r11, 68;                             jmp   n133_call_prolog_α
                        .size            n131_call_prolog_bx, .-n131_call_prolog_bx
                        .type            n132_suspend_bx, @function
n132_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_suspend_α:         mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_232_61
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
.Ldigit$2F1_α_232_61:   mov              rdi, qword ptr [rsp + 32]
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
n132_suspend_β:         mov              r11, 69;                             jmp   n133_call_prolog_α
                        .size            n132_suspend_bx, .-n132_suspend_bx
                        .type            n133_call_prolog_bx, @function
n133_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_prolog_α:     mov              r11, 70
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
n133_call_prolog_β:     mov              r11, 70;                             jmp   digit$2F1_ω
                        .size            n133_call_prolog_bx, .-n133_call_prolog_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n135_lit_integer_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_lit_integer_bx, @function
n135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_236_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n136_lit_integer_α
.Ldigit$2F1_α_236_0:    .quad            1
                        .size            n135_lit_integer_bx, .-n135_lit_integer_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_237_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n137_call_prolog_α
.Ldigit$2F1_α_237_0:    .quad            3
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_call_prolog_bx, @function
n137_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_prolog_α:     mov              r11, 74
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
.Ldigit$2F1_α_238_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_238_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_238_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_238_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_238_110
.Ldigit$2F1_α_238_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_238_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_238_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_238_110
.Ldigit$2F1_α_238_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_238_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_238_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_238_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_238_110
.Ldigit$2F1_α_238_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_238_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_238_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_238_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_238_114
                                                                              jmp   .Ldigit$2F1_α_238_118
.Ldigit$2F1_α_238_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_238_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_238_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_238_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_238_115
                                                                              jmp   .Ldigit$2F1_α_238_114
.Ldigit$2F1_α_238_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_238_117
.Ldigit$2F1_α_238_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_238_117
.Ldigit$2F1_α_238_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_238_117:  mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n143_var_ref_α
                                                                              jmp   n138_var_ref_α
n137_call_prolog_β:     mov              r11, 74;                             jmp   n143_var_ref_α
                        .size            n137_call_prolog_bx, .-n137_call_prolog_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n139_lit_integer_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_241_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n140_call_prolog_α
.Ldigit$2F1_α_241_0:    .quad            3
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_call_prolog_bx, @function
n140_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_prolog_α:     mov              r11, 77
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
                        cmp              al, 104;                             je    n142_call_prolog_α
                                                                              jmp   n141_suspend_α
n140_call_prolog_β:     mov              r11, 77;                             jmp   n142_call_prolog_α
                        .size            n140_call_prolog_bx, .-n140_call_prolog_bx
                        .type            n141_suspend_bx, @function
n141_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_suspend_α:         mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_244_61
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
.Ldigit$2F1_α_244_61:   mov              rdi, qword ptr [rsp + 32]
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
n141_suspend_β:         mov              r11, 78;                             jmp   n142_call_prolog_α
                        .size            n141_suspend_bx, .-n141_suspend_bx
                        .type            n142_call_prolog_bx, @function
n142_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_prolog_α:     mov              r11, 79
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
n142_call_prolog_β:     mov              r11, 79;                             jmp   digit$2F1_ω
                        .size            n142_call_prolog_bx, .-n142_call_prolog_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n144_lit_integer_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_248_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n145_lit_integer_α
.Ldigit$2F1_α_248_0:    .quad            1
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_249_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n146_call_prolog_α
.Ldigit$2F1_α_249_0:    .quad            4
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_call_prolog_bx, @function
n146_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_prolog_α:     mov              r11, 83
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
.Ldigit$2F1_α_250_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_250_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_250_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_250_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_250_110
.Ldigit$2F1_α_250_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_250_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_250_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_250_110
.Ldigit$2F1_α_250_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_250_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_250_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_250_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_250_110
.Ldigit$2F1_α_250_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_250_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_250_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_250_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_250_114
                                                                              jmp   .Ldigit$2F1_α_250_118
.Ldigit$2F1_α_250_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_250_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_250_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_250_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_250_115
                                                                              jmp   .Ldigit$2F1_α_250_114
.Ldigit$2F1_α_250_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_250_117
.Ldigit$2F1_α_250_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_250_117
.Ldigit$2F1_α_250_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_250_117:  mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n152_var_ref_α
                                                                              jmp   n147_var_ref_α
n146_call_prolog_β:     mov              r11, 83;                             jmp   n152_var_ref_α
                        .size            n146_call_prolog_bx, .-n146_call_prolog_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n148_lit_integer_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 85
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_253_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n149_call_prolog_α
.Ldigit$2F1_α_253_0:    .quad            4
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_call_prolog_bx, @function
n149_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_prolog_α:     mov              r11, 86
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
                        cmp              al, 104;                             je    n151_call_prolog_α
                                                                              jmp   n150_suspend_α
n149_call_prolog_β:     mov              r11, 86;                             jmp   n151_call_prolog_α
                        .size            n149_call_prolog_bx, .-n149_call_prolog_bx
                        .type            n150_suspend_bx, @function
n150_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_suspend_α:         mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_256_61
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
.Ldigit$2F1_α_256_61:   mov              rdi, qword ptr [rsp + 32]
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
n150_suspend_β:         mov              r11, 87;                             jmp   n151_call_prolog_α
                        .size            n150_suspend_bx, .-n150_suspend_bx
                        .type            n151_call_prolog_bx, @function
n151_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_prolog_α:     mov              r11, 88
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
n151_call_prolog_β:     mov              r11, 88;                             jmp   digit$2F1_ω
                        .size            n151_call_prolog_bx, .-n151_call_prolog_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n153_lit_integer_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_260_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n154_lit_integer_α
.Ldigit$2F1_α_260_0:    .quad            1
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_261_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n155_call_prolog_α
.Ldigit$2F1_α_261_0:    .quad            5
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_call_prolog_bx, @function
n155_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_prolog_α:     mov              r11, 92
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
.Ldigit$2F1_α_262_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_262_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_262_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_262_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_262_110
.Ldigit$2F1_α_262_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_262_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_262_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_262_110
.Ldigit$2F1_α_262_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_262_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_262_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_262_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_262_110
.Ldigit$2F1_α_262_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_262_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_262_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_262_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_262_114
                                                                              jmp   .Ldigit$2F1_α_262_118
.Ldigit$2F1_α_262_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_262_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_262_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_262_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_262_115
                                                                              jmp   .Ldigit$2F1_α_262_114
.Ldigit$2F1_α_262_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_262_117
.Ldigit$2F1_α_262_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_262_117
.Ldigit$2F1_α_262_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_262_117:  mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n161_var_ref_α
                                                                              jmp   n156_var_ref_α
n155_call_prolog_β:     mov              r11, 92;                             jmp   n161_var_ref_α
                        .size            n155_call_prolog_bx, .-n155_call_prolog_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n157_lit_integer_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_265_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n158_call_prolog_α
.Ldigit$2F1_α_265_0:    .quad            5
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_prolog_bx, @function
n158_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 95
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
                        cmp              al, 104;                             je    n160_call_prolog_α
                                                                              jmp   n159_suspend_α
n158_call_prolog_β:     mov              r11, 95;                             jmp   n160_call_prolog_α
                        .size            n158_call_prolog_bx, .-n158_call_prolog_bx
                        .type            n159_suspend_bx, @function
n159_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_suspend_α:         mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_268_61
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
.Ldigit$2F1_α_268_61:   mov              rdi, qword ptr [rsp + 32]
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
n159_suspend_β:         mov              r11, 96;                             jmp   n160_call_prolog_α
                        .size            n159_suspend_bx, .-n159_suspend_bx
                        .type            n160_call_prolog_bx, @function
n160_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_prolog_α:     mov              r11, 97
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
n160_call_prolog_β:     mov              r11, 97;                             jmp   digit$2F1_ω
                        .size            n160_call_prolog_bx, .-n160_call_prolog_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n162_lit_integer_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_lit_integer_bx, @function
n162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_272_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n163_lit_integer_α
.Ldigit$2F1_α_272_0:    .quad            1
                        .size            n162_lit_integer_bx, .-n162_lit_integer_bx
                        .type            n163_lit_integer_bx, @function
n163_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_273_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n164_call_prolog_α
.Ldigit$2F1_α_273_0:    .quad            6
                        .size            n163_lit_integer_bx, .-n163_lit_integer_bx
                        .type            n164_call_prolog_bx, @function
n164_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_prolog_α:     mov              r11, 101
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
.Ldigit$2F1_α_274_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_274_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_274_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_274_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_274_110
.Ldigit$2F1_α_274_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_274_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_274_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_274_110
.Ldigit$2F1_α_274_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_274_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_274_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_274_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_274_110
.Ldigit$2F1_α_274_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_274_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_274_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_274_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_274_114
                                                                              jmp   .Ldigit$2F1_α_274_118
.Ldigit$2F1_α_274_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_274_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_274_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_274_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_274_115
                                                                              jmp   .Ldigit$2F1_α_274_114
.Ldigit$2F1_α_274_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_274_117
.Ldigit$2F1_α_274_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_274_117
.Ldigit$2F1_α_274_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_274_117:  mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n170_var_ref_α
                                                                              jmp   n165_var_ref_α
n164_call_prolog_β:     mov              r11, 101;                            jmp   n170_var_ref_α
                        .size            n164_call_prolog_bx, .-n164_call_prolog_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n166_lit_integer_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_277_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n167_call_prolog_α
.Ldigit$2F1_α_277_0:    .quad            6
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_call_prolog_bx, @function
n167_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_prolog_α:     mov              r11, 104
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
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n168_suspend_α
n167_call_prolog_β:     mov              r11, 104;                            jmp   n169_call_prolog_α
                        .size            n167_call_prolog_bx, .-n167_call_prolog_bx
                        .type            n168_suspend_bx, @function
n168_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:         mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_280_61
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
.Ldigit$2F1_α_280_61:   mov              rdi, qword ptr [rsp + 32]
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
n168_suspend_β:         mov              r11, 105;                            jmp   n169_call_prolog_α
                        .size            n168_suspend_bx, .-n168_suspend_bx
                        .type            n169_call_prolog_bx, @function
n169_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_prolog_α:     mov              r11, 106
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
n169_call_prolog_β:     mov              r11, 106;                            jmp   digit$2F1_ω
                        .size            n169_call_prolog_bx, .-n169_call_prolog_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n171_lit_integer_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_lit_integer_bx, @function
n171_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_284_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n172_lit_integer_α
.Ldigit$2F1_α_284_0:    .quad            1
                        .size            n171_lit_integer_bx, .-n171_lit_integer_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_285_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n173_call_prolog_α
.Ldigit$2F1_α_285_0:    .quad            7
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_call_prolog_bx, @function
n173_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_prolog_α:     mov              r11, 110
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
.Ldigit$2F1_α_286_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_286_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_286_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_286_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_286_110
.Ldigit$2F1_α_286_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_286_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_286_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_286_110
.Ldigit$2F1_α_286_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_286_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_286_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_286_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_286_110
.Ldigit$2F1_α_286_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_286_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_286_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_286_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_286_114
                                                                              jmp   .Ldigit$2F1_α_286_118
.Ldigit$2F1_α_286_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_286_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_286_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_286_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_286_115
                                                                              jmp   .Ldigit$2F1_α_286_114
.Ldigit$2F1_α_286_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_286_117
.Ldigit$2F1_α_286_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_286_117
.Ldigit$2F1_α_286_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_286_117:  mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n179_var_ref_α
                                                                              jmp   n174_var_ref_α
n173_call_prolog_β:     mov              r11, 110;                            jmp   n179_var_ref_α
                        .size            n173_call_prolog_bx, .-n173_call_prolog_bx
                        .type            n174_var_ref_bx, @function
n174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n175_lit_integer_α
                        .size            n174_var_ref_bx, .-n174_var_ref_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_289_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n176_call_prolog_α
.Ldigit$2F1_α_289_0:    .quad            7
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_call_prolog_bx, @function
n176_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_prolog_α:     mov              r11, 113
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
                        cmp              al, 104;                             je    n178_call_prolog_α
                                                                              jmp   n177_suspend_α
n176_call_prolog_β:     mov              r11, 113;                            jmp   n178_call_prolog_α
                        .size            n176_call_prolog_bx, .-n176_call_prolog_bx
                        .type            n177_suspend_bx, @function
n177_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_suspend_α:         mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_292_61
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
.Ldigit$2F1_α_292_61:   mov              rdi, qword ptr [rsp + 32]
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
n177_suspend_β:         mov              r11, 114;                            jmp   n178_call_prolog_α
                        .size            n177_suspend_bx, .-n177_suspend_bx
                        .type            n178_call_prolog_bx, @function
n178_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_prolog_α:     mov              r11, 115
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
n178_call_prolog_β:     mov              r11, 115;                            jmp   digit$2F1_ω
                        .size            n178_call_prolog_bx, .-n178_call_prolog_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n180_lit_integer_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_lit_integer_bx, @function
n180_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_296_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n181_lit_integer_α
.Ldigit$2F1_α_296_0:    .quad            1
                        .size            n180_lit_integer_bx, .-n180_lit_integer_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_297_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n182_call_prolog_α
.Ldigit$2F1_α_297_0:    .quad            8
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_call_prolog_bx, @function
n182_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_prolog_α:     mov              r11, 119
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
.Ldigit$2F1_α_298_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_298_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_298_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_298_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_298_110
.Ldigit$2F1_α_298_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_298_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_298_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_298_110
.Ldigit$2F1_α_298_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_298_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_298_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_298_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_298_110
.Ldigit$2F1_α_298_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_298_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_298_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_298_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_298_114
                                                                              jmp   .Ldigit$2F1_α_298_118
.Ldigit$2F1_α_298_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_298_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_298_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_298_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_298_115
                                                                              jmp   .Ldigit$2F1_α_298_114
.Ldigit$2F1_α_298_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_298_117
.Ldigit$2F1_α_298_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_298_117
.Ldigit$2F1_α_298_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_298_117:  mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n188_var_ref_α
                                                                              jmp   n183_var_ref_α
n182_call_prolog_β:     mov              r11, 119;                            jmp   n188_var_ref_α
                        .size            n182_call_prolog_bx, .-n182_call_prolog_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n184_lit_integer_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_lit_integer_bx, @function
n184_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_301_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n185_call_prolog_α
.Ldigit$2F1_α_301_0:    .quad            8
                        .size            n184_lit_integer_bx, .-n184_lit_integer_bx
                        .type            n185_call_prolog_bx, @function
n185_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_prolog_α:     mov              r11, 122
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
                        cmp              al, 104;                             je    n187_call_prolog_α
                                                                              jmp   n186_suspend_α
n185_call_prolog_β:     mov              r11, 122;                            jmp   n187_call_prolog_α
                        .size            n185_call_prolog_bx, .-n185_call_prolog_bx
                        .type            n186_suspend_bx, @function
n186_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_suspend_α:         mov              r11, 123
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_304_61
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
.Ldigit$2F1_α_304_61:   mov              rdi, qword ptr [rsp + 32]
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
n186_suspend_β:         mov              r11, 123;                            jmp   n187_call_prolog_α
                        .size            n186_suspend_bx, .-n186_suspend_bx
                        .type            n187_call_prolog_bx, @function
n187_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_prolog_α:     mov              r11, 124
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
n187_call_prolog_β:     mov              r11, 124;                            jmp   digit$2F1_ω
                        .size            n187_call_prolog_bx, .-n187_call_prolog_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n189_lit_integer_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_308_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n190_lit_integer_α
.Ldigit$2F1_α_308_0:    .quad            1
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_lit_integer_bx, @function
n190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_309_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n191_call_prolog_α
.Ldigit$2F1_α_309_0:    .quad            9
                        .size            n190_lit_integer_bx, .-n190_lit_integer_bx
                        .type            n191_call_prolog_bx, @function
n191_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_prolog_α:     mov              r11, 128
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
.Ldigit$2F1_α_310_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldigit$2F1_α_310_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_310_111
                        cmp              esi, 1;                              jne   .Ldigit$2F1_α_310_112
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_310_110
.Ldigit$2F1_α_310_112:  cmp              esi, 2;                              jne   .Ldigit$2F1_α_310_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_310_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_310_110
.Ldigit$2F1_α_310_113:  cmp              al, 72;                              jne   .Ldigit$2F1_α_310_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldigit$2F1_α_310_111
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_310_111
                        mov              r8, rax;                             jmp   .Ldigit$2F1_α_310_110
.Ldigit$2F1_α_310_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldigit$2F1_α_310_114
                        cmp              al, 104;                             je    .Ldigit$2F1_α_310_114
                        cmp              al, 72;                              jne   .Ldigit$2F1_α_310_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldigit$2F1_α_310_114
                                                                              jmp   .Ldigit$2F1_α_310_118
.Ldigit$2F1_α_310_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldigit$2F1_α_310_115
                        cmp              al, 3;                               jne   .Ldigit$2F1_α_310_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldigit$2F1_α_310_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Ldigit$2F1_α_310_115
                                                                              jmp   .Ldigit$2F1_α_310_114
.Ldigit$2F1_α_310_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldigit$2F1_α_310_117
.Ldigit$2F1_α_310_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldigit$2F1_α_310_117
.Ldigit$2F1_α_310_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldigit$2F1_α_310_117:  mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n196_call_prolog_α
                                                                              jmp   n192_var_ref_α
n191_call_prolog_β:     mov              r11, 128;                            jmp   n196_call_prolog_α
                        .size            n191_call_prolog_bx, .-n191_call_prolog_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n193_lit_integer_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Ldigit$2F1_α_313_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n194_call_prolog_α
.Ldigit$2F1_α_313_0:    .quad            9
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_call_prolog_bx, @function
n194_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_prolog_α:     mov              r11, 131
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
                        cmp              al, 104;                             je    n196_call_prolog_α
                                                                              jmp   n195_suspend_α
n194_call_prolog_β:     mov              r11, 131;                            jmp   n196_call_prolog_α
                        .size            n194_call_prolog_bx, .-n194_call_prolog_bx
                        .type            n195_suspend_bx, @function
n195_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_suspend_α:         mov              r11, 132
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldigit$2F1_α_316_61
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
.Ldigit$2F1_α_316_61:   mov              rdi, qword ptr [rsp + 32]
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
n195_suspend_β:         mov              r11, 132;                            jmp   n196_call_prolog_α
                        .size            n195_suspend_bx, .-n195_suspend_bx
                        .type            n196_call_prolog_bx, @function
n196_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_prolog_α:     mov              r11, 133
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
n196_call_prolog_β:     mov              r11, 133;                            jmp   digit$2F1_ω
                        .size            n196_call_prolog_bx, .-n196_call_prolog_bx
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
                        test             r12, r12;                            je    .Ldigit$2F1_α_317_50
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
.Ldigit$2F1_α_317_50:   mov              rdi, rax
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
                        .type            n318_call_prolog_bx, @function
n318_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_prolog_α:     mov              r11, 134
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lsolve$2F8_α_461_102
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152];          jmp   .Lsolve$2F8_α_461_101
.Lsolve$2F8_α_461_102:  lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_461_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lsolve$2F8_α_461_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lsolve$2F8_α_461_101
.Lsolve$2F8_α_461_100:  lea              rdi, [rsp + 160]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_461_101:  mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    solve$2F8_ω
                                                                              jmp   n319_var_ref_α
n318_call_prolog_β:     mov              r11, 134;                            jmp   solve$2F8_ω
                        .size            n318_call_prolog_bx, .-n318_call_prolog_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx;         jmp   n320_var_ref_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n321_call_prolog_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_call_prolog_bx, @function
n321_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_prolog_α:     mov              r11, 137
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
.Lsolve$2F8_α_466_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_466_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_466_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_466_40
.Lsolve$2F8_α_466_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_466_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_466_40
.Lsolve$2F8_α_466_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_466_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_466_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_466_40
.Lsolve$2F8_α_466_41:   lea              r9, [rsp + 4272]
.Lsolve$2F8_α_466_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_466_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_466_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_466_42
.Lsolve$2F8_α_466_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_466_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_466_42
.Lsolve$2F8_α_466_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_466_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_466_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_466_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_466_42
.Lsolve$2F8_α_466_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_466_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_466_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_466_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_466_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_466_44
                                                                              jmp   .Lsolve$2F8_α_466_45
.Lsolve$2F8_α_466_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_466_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_466_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_466_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_466_53
                                                                              jmp   .Lsolve$2F8_α_466_46
.Lsolve$2F8_α_466_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_466_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_466_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_466_51
.Lsolve$2F8_α_466_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_466_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_466_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_466_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_466_47
                                                                              jmp   .Lsolve$2F8_α_466_48
.Lsolve$2F8_α_466_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_466_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_466_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_466_51
.Lsolve$2F8_α_466_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_466_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_466_53
                                                                              jmp   .Lsolve$2F8_α_466_52
.Lsolve$2F8_α_466_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_466_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_466_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_466_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_466_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_466_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_466_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_466_51
                                                                              jmp   .Lsolve$2F8_α_466_52
.Lsolve$2F8_α_466_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_466_53
.Lsolve$2F8_α_466_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_466_54
.Lsolve$2F8_α_466_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_466_54
.Lsolve$2F8_α_466_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_466_54:   mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n322_var_ref_α
n321_call_prolog_β:     mov              r11, 137;                            jmp   n460_call_prolog_α
                        .size            n321_call_prolog_bx, .-n321_call_prolog_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n323_var_ref_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx;         jmp   n324_call_prolog_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_call_prolog_bx, @function
n324_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_prolog_α:     mov              r11, 140
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
.Lsolve$2F8_α_471_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_471_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_471_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_471_40
.Lsolve$2F8_α_471_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_471_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_471_40
.Lsolve$2F8_α_471_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_471_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_471_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_471_40
.Lsolve$2F8_α_471_41:   lea              r9, [rsp + 4192]
.Lsolve$2F8_α_471_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_471_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_471_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_471_42
.Lsolve$2F8_α_471_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_471_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_471_42
.Lsolve$2F8_α_471_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_471_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_471_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_471_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_471_42
.Lsolve$2F8_α_471_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_471_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_471_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_471_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_471_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_471_44
                                                                              jmp   .Lsolve$2F8_α_471_45
.Lsolve$2F8_α_471_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_471_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_471_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_471_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_471_53
                                                                              jmp   .Lsolve$2F8_α_471_46
.Lsolve$2F8_α_471_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_471_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_471_51
.Lsolve$2F8_α_471_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_471_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_471_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_471_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_471_47
                                                                              jmp   .Lsolve$2F8_α_471_48
.Lsolve$2F8_α_471_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_471_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_471_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_471_51
.Lsolve$2F8_α_471_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_471_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_471_53
                                                                              jmp   .Lsolve$2F8_α_471_52
.Lsolve$2F8_α_471_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_471_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_471_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_471_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_471_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_471_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_471_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_471_51
                                                                              jmp   .Lsolve$2F8_α_471_52
.Lsolve$2F8_α_471_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_471_53
.Lsolve$2F8_α_471_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_471_54
.Lsolve$2F8_α_471_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_471_54
.Lsolve$2F8_α_471_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_471_54:   mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n325_var_ref_α
n324_call_prolog_β:     mov              r11, 140;                            jmp   n460_call_prolog_α
                        .size            n324_call_prolog_bx, .-n324_call_prolog_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n326_var_ref_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n327_call_prolog_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_call_prolog_bx, @function
n327_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_prolog_α:     mov              r11, 143
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
.Lsolve$2F8_α_476_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_476_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_476_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_476_40
.Lsolve$2F8_α_476_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_476_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_476_40
.Lsolve$2F8_α_476_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_476_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_476_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_476_40
.Lsolve$2F8_α_476_41:   lea              r9, [rsp + 4112]
.Lsolve$2F8_α_476_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_476_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_476_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_476_42
.Lsolve$2F8_α_476_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_476_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_476_42
.Lsolve$2F8_α_476_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_476_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_476_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_476_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_476_42
.Lsolve$2F8_α_476_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_476_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_476_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_476_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_476_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_476_44
                                                                              jmp   .Lsolve$2F8_α_476_45
.Lsolve$2F8_α_476_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_476_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_476_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_476_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_476_53
                                                                              jmp   .Lsolve$2F8_α_476_46
.Lsolve$2F8_α_476_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_476_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_476_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_476_51
.Lsolve$2F8_α_476_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_476_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_476_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_476_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_476_47
                                                                              jmp   .Lsolve$2F8_α_476_48
.Lsolve$2F8_α_476_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_476_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_476_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_476_51
.Lsolve$2F8_α_476_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_476_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_476_53
                                                                              jmp   .Lsolve$2F8_α_476_52
.Lsolve$2F8_α_476_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_476_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_476_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_476_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_476_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_476_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_476_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_476_51
                                                                              jmp   .Lsolve$2F8_α_476_52
.Lsolve$2F8_α_476_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_476_53
.Lsolve$2F8_α_476_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_476_54
.Lsolve$2F8_α_476_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_476_54
.Lsolve$2F8_α_476_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_476_54:   mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n328_var_ref_α
n327_call_prolog_β:     mov              r11, 143;                            jmp   n460_call_prolog_α
                        .size            n327_call_prolog_bx, .-n327_call_prolog_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n329_var_ref_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n330_call_prolog_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_call_prolog_bx, @function
n330_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_prolog_α:     mov              r11, 146
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
.Lsolve$2F8_α_481_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_481_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_481_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_481_40
.Lsolve$2F8_α_481_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_481_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_481_40
.Lsolve$2F8_α_481_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_481_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_481_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_481_40
.Lsolve$2F8_α_481_41:   lea              r9, [rsp + 4032]
.Lsolve$2F8_α_481_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_481_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_481_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_481_42
.Lsolve$2F8_α_481_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_481_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_481_42
.Lsolve$2F8_α_481_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_481_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_481_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_481_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_481_42
.Lsolve$2F8_α_481_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_481_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_481_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_481_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_481_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_481_44
                                                                              jmp   .Lsolve$2F8_α_481_45
.Lsolve$2F8_α_481_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_481_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_481_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_481_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_481_53
                                                                              jmp   .Lsolve$2F8_α_481_46
.Lsolve$2F8_α_481_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_481_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_481_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_481_51
.Lsolve$2F8_α_481_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_481_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_481_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_481_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_481_47
                                                                              jmp   .Lsolve$2F8_α_481_48
.Lsolve$2F8_α_481_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_481_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_481_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_481_51
.Lsolve$2F8_α_481_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_481_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_481_53
                                                                              jmp   .Lsolve$2F8_α_481_52
.Lsolve$2F8_α_481_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_481_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_481_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_481_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_481_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_481_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_481_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_481_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_481_51
                                                                              jmp   .Lsolve$2F8_α_481_52
.Lsolve$2F8_α_481_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_481_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_481_53
.Lsolve$2F8_α_481_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_481_54
.Lsolve$2F8_α_481_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_481_54
.Lsolve$2F8_α_481_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_481_54:   mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n331_var_ref_α
n330_call_prolog_β:     mov              r11, 146;                            jmp   n460_call_prolog_α
                        .size            n330_call_prolog_bx, .-n330_call_prolog_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n332_var_ref_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx;         jmp   n333_call_prolog_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_call_prolog_bx, @function
n333_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_prolog_α:     mov              r11, 149
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
.Lsolve$2F8_α_486_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_486_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_486_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_486_40
.Lsolve$2F8_α_486_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_486_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_486_40
.Lsolve$2F8_α_486_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_486_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_486_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_486_40
.Lsolve$2F8_α_486_41:   lea              r9, [rsp + 3952]
.Lsolve$2F8_α_486_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_486_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_486_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_486_42
.Lsolve$2F8_α_486_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_486_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_486_42
.Lsolve$2F8_α_486_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_486_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_486_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_486_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_486_42
.Lsolve$2F8_α_486_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_486_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_486_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_486_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_486_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_486_44
                                                                              jmp   .Lsolve$2F8_α_486_45
.Lsolve$2F8_α_486_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_486_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_486_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_486_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_486_53
                                                                              jmp   .Lsolve$2F8_α_486_46
.Lsolve$2F8_α_486_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_486_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_486_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_486_51
.Lsolve$2F8_α_486_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_486_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_486_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_486_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_486_47
                                                                              jmp   .Lsolve$2F8_α_486_48
.Lsolve$2F8_α_486_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_486_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_486_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_486_51
.Lsolve$2F8_α_486_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_486_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_486_53
                                                                              jmp   .Lsolve$2F8_α_486_52
.Lsolve$2F8_α_486_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_486_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_486_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_486_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_486_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_486_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_486_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_486_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_486_51
                                                                              jmp   .Lsolve$2F8_α_486_52
.Lsolve$2F8_α_486_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_486_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_486_53
.Lsolve$2F8_α_486_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_486_54
.Lsolve$2F8_α_486_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_486_54
.Lsolve$2F8_α_486_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_486_54:   mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n334_var_ref_α
n333_call_prolog_β:     mov              r11, 149;                            jmp   n460_call_prolog_α
                        .size            n333_call_prolog_bx, .-n333_call_prolog_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx;         jmp   n335_var_ref_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx;         jmp   n336_call_prolog_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_call_prolog_bx, @function
n336_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_prolog_α:     mov              r11, 152
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
.Lsolve$2F8_α_491_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_491_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_491_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_491_40
.Lsolve$2F8_α_491_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_491_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_491_40
.Lsolve$2F8_α_491_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_491_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_491_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_491_40
.Lsolve$2F8_α_491_41:   lea              r9, [rsp + 3872]
.Lsolve$2F8_α_491_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_491_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_491_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_491_42
.Lsolve$2F8_α_491_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_491_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_491_42
.Lsolve$2F8_α_491_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_491_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_491_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_491_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_491_42
.Lsolve$2F8_α_491_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_491_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_491_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_491_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_491_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_491_44
                                                                              jmp   .Lsolve$2F8_α_491_45
.Lsolve$2F8_α_491_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_491_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_491_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_491_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_491_53
                                                                              jmp   .Lsolve$2F8_α_491_46
.Lsolve$2F8_α_491_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_491_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_491_51
.Lsolve$2F8_α_491_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_491_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_491_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_491_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_491_47
                                                                              jmp   .Lsolve$2F8_α_491_48
.Lsolve$2F8_α_491_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_491_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_491_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_491_51
.Lsolve$2F8_α_491_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_491_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_491_53
                                                                              jmp   .Lsolve$2F8_α_491_52
.Lsolve$2F8_α_491_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_491_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_491_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_491_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_491_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_491_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_491_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_491_51
                                                                              jmp   .Lsolve$2F8_α_491_52
.Lsolve$2F8_α_491_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_491_53
.Lsolve$2F8_α_491_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_491_54
.Lsolve$2F8_α_491_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_491_54
.Lsolve$2F8_α_491_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_491_54:   mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n337_var_ref_α
n336_call_prolog_β:     mov              r11, 152;                            jmp   n460_call_prolog_α
                        .size            n336_call_prolog_bx, .-n336_call_prolog_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx;         jmp   n338_var_ref_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n339_call_prolog_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_call_prolog_bx, @function
n339_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_prolog_α:     mov              r11, 155
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
.Lsolve$2F8_α_496_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_496_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_496_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_496_40
.Lsolve$2F8_α_496_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_496_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_496_40
.Lsolve$2F8_α_496_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_496_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_496_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_496_40
.Lsolve$2F8_α_496_41:   lea              r9, [rsp + 3792]
.Lsolve$2F8_α_496_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_496_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_496_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_496_42
.Lsolve$2F8_α_496_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_496_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_496_42
.Lsolve$2F8_α_496_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_496_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_496_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_496_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_496_42
.Lsolve$2F8_α_496_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_496_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_496_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_496_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_496_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_496_44
                                                                              jmp   .Lsolve$2F8_α_496_45
.Lsolve$2F8_α_496_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_496_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_496_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_496_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_496_53
                                                                              jmp   .Lsolve$2F8_α_496_46
.Lsolve$2F8_α_496_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_496_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_496_51
.Lsolve$2F8_α_496_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_496_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_496_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_496_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_496_47
                                                                              jmp   .Lsolve$2F8_α_496_48
.Lsolve$2F8_α_496_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_496_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_496_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_496_51
.Lsolve$2F8_α_496_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_496_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_496_53
                                                                              jmp   .Lsolve$2F8_α_496_52
.Lsolve$2F8_α_496_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_496_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_496_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_496_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_496_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_496_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_496_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_496_51
                                                                              jmp   .Lsolve$2F8_α_496_52
.Lsolve$2F8_α_496_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_496_53
.Lsolve$2F8_α_496_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_496_54
.Lsolve$2F8_α_496_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_496_54
.Lsolve$2F8_α_496_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_496_54:   mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n340_var_ref_α
n339_call_prolog_β:     mov              r11, 155;                            jmp   n460_call_prolog_α
                        .size            n339_call_prolog_bx, .-n339_call_prolog_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 128]
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx;         jmp   n341_var_ref_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n342_call_prolog_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_call_prolog_bx, @function
n342_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_prolog_α:     mov              r11, 158
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
.Lsolve$2F8_α_501_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_501_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_41
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_501_55
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_501_40
.Lsolve$2F8_α_501_55:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_501_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_501_40
.Lsolve$2F8_α_501_56:   cmp              al, 72;                              jne   .Lsolve$2F8_α_501_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_41
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_501_41
                        mov              r8, rax;                             jmp   .Lsolve$2F8_α_501_40
.Lsolve$2F8_α_501_41:   lea              r9, [rsp + 3712]
.Lsolve$2F8_α_501_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lsolve$2F8_α_501_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_43
                        cmp              esi, 1;                              jne   .Lsolve$2F8_α_501_57
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_501_42
.Lsolve$2F8_α_501_57:   cmp              esi, 2;                              jne   .Lsolve$2F8_α_501_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_501_42
.Lsolve$2F8_α_501_58:   cmp              al, 72;                              jne   .Lsolve$2F8_α_501_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lsolve$2F8_α_501_43
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_501_43
                        mov              r9, rax;                             jmp   .Lsolve$2F8_α_501_42
.Lsolve$2F8_α_501_43:   cmp              r8, r9;                              je    .Lsolve$2F8_α_501_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_501_44
                        cmp              al, 104;                             je    .Lsolve$2F8_α_501_44
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_501_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lsolve$2F8_α_501_44
                                                                              jmp   .Lsolve$2F8_α_501_45
.Lsolve$2F8_α_501_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_501_53
                        cmp              al, 104;                             je    .Lsolve$2F8_α_501_53
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_501_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_501_53
                                                                              jmp   .Lsolve$2F8_α_501_46
.Lsolve$2F8_α_501_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_501_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_501_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lsolve$2F8_α_501_51
.Lsolve$2F8_α_501_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lsolve$2F8_α_501_47
                        cmp              al, 104;                             je    .Lsolve$2F8_α_501_47
                        cmp              al, 72;                              jne   .Lsolve$2F8_α_501_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lsolve$2F8_α_501_47
                                                                              jmp   .Lsolve$2F8_α_501_48
.Lsolve$2F8_α_501_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lsolve$2F8_α_501_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lsolve$2F8_α_501_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lsolve$2F8_α_501_51
.Lsolve$2F8_α_501_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lsolve$2F8_α_501_49
                        cmp              dl, 80;                              je    .Lsolve$2F8_α_501_53
                                                                              jmp   .Lsolve$2F8_α_501_52
.Lsolve$2F8_α_501_49:   cmp              dl, 80;                              je    .Lsolve$2F8_α_501_52
                        cmp              cl, 5;                               je    .Lsolve$2F8_α_501_53
                        cmp              dl, 5;                               je    .Lsolve$2F8_α_501_53
                        cmp              cl, 3;                               jne   .Lsolve$2F8_α_501_50
                        cmp              dl, 3;                               jne   .Lsolve$2F8_α_501_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_501_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lsolve$2F8_α_501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lsolve$2F8_α_501_51
                                                                              jmp   .Lsolve$2F8_α_501_52
.Lsolve$2F8_α_501_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lsolve$2F8_α_501_53
.Lsolve$2F8_α_501_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lsolve$2F8_α_501_54
.Lsolve$2F8_α_501_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lsolve$2F8_α_501_54
.Lsolve$2F8_α_501_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_501_54:   mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n343_var_ref_α
n342_call_prolog_β:     mov              r11, 158;                            jmp   n460_call_prolog_α
                        .size            n342_call_prolog_bx, .-n342_call_prolog_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n344_call_proc_staged_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_call_proc_staged_bx, @function
n344_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_proc_staged_α:
                        mov              r11, 160
                        mov              qword ptr [rsp + 3632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_505_200
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_505_201
.Lsolve$2F8_α_505_200:  mov              edi, 0
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
.Lsolve$2F8_α_505_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_505_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_505_1
                        lea              rcx, [rip + .Lsolve$2F8_α_505_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_505_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_505_4];    jmp   rax
.Lsolve$2F8_α_505_3:    add              rsp, 16
                        mov              qword ptr [rsp + 3640], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_505_5
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_505_2
.Lsolve$2F8_α_505_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_505_2
.Lsolve$2F8_α_505_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3632]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_505_6
                        mov              qword ptr [rsp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_505_2
.Lsolve$2F8_α_505_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_505_2
.Lsolve$2F8_α_505_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_505_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_505_29
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
.Lsolve$2F8_α_505_29:   mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
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
                        test             rax, rax;                            je    n460_call_prolog_α
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
                        test             rax, rax;                            je    n460_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_505_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_505_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_505_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_505_4];    jmp   rax
.Lsolve$2F8_α_505_7:    add              rsp, 16
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n460_call_prolog_α
                                                                              jmp   n345_var_ref_α
.Lsolve$2F8_β_505_0:    .quad            .Lsolve$2F8_β_505_0_s
.Lsolve$2F8_β_505_0_s:  .string          "digit/1"
                        .size            n344_call_proc_staged_bx, .-n344_call_proc_staged_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n346_call_proc_staged_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_call_proc_staged_bx, @function
n346_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_proc_staged_α:
                        mov              r11, 162
                        mov              qword ptr [rsp + 3552], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_509_200
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_509_201
.Lsolve$2F8_α_509_200:  mov              edi, 0
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
.Lsolve$2F8_α_509_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_509_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_509_1
                        lea              rcx, [rip + .Lsolve$2F8_α_509_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_509_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_509_4];    jmp   rax
.Lsolve$2F8_α_509_3:    add              rsp, 16
                        mov              qword ptr [rsp + 3560], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3552]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_509_5
                        mov              qword ptr [rsp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_509_2
.Lsolve$2F8_α_509_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_509_2
.Lsolve$2F8_α_509_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3552]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_509_6
                        mov              qword ptr [rsp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_509_2
.Lsolve$2F8_α_509_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_509_2
.Lsolve$2F8_α_509_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_509_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_509_29
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
.Lsolve$2F8_α_509_29:   mov              qword ptr [rsp + 3520], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_509_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_509_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_509_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_509_4];    jmp   rax
.Lsolve$2F8_α_509_7:    add              rsp, 16
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              al, 104;                             je    n344_call_proc_staged_β
                                                                              jmp   n347_var_α
.Lsolve$2F8_β_509_0:    .quad            .Lsolve$2F8_β_509_0_s
.Lsolve$2F8_β_509_0_s:  .string          "digit/1"
                        .size            n346_call_proc_staged_bx, .-n346_call_proc_staged_bx
                        .type            n347_var_bx, @function
n347_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n348_var_α
                        .size            n347_var_bx, .-n347_var_bx
                        .type            n348_var_bx, @function
n348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n349_call_prolog_α
                        .size            n348_var_bx, .-n348_var_bx
                        .type            n349_call_prolog_bx, @function
n349_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_prolog_α:     mov              r11, 165
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
n349_call_prolog_β:     mov              r11, 165;                            jmp   n346_call_proc_staged_β
                        .size            n349_call_prolog_bx, .-n349_call_prolog_bx
                        .type            n350_lit_integer_bx, @function
n350_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 3360], 3            # result
                        mov              rax, qword ptr [rip + .Lsolve$2F8_α_515_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n351_var_ref_α
.Lsolve$2F8_α_515_0:    .quad            0
                        .size            n350_lit_integer_bx, .-n350_lit_integer_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4400]
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx;         jmp   n352_var_ref_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n353_var_ref_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_var_ref_bx, @function
n353_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n354_var_ref_α
                        .size            n353_var_ref_bx, .-n353_var_ref_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n355_call_proc_staged_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_call_proc_staged_bx, @function
n355_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rsp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_525_200
                        mov              rax, qword ptr [rsp + 3360]
                        mov              rdx, qword ptr [rsp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_525_201
.Lsolve$2F8_α_525_200:  mov              edi, 0
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
.Lsolve$2F8_α_525_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_525_202
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lsolve$2F8_α_525_203
.Lsolve$2F8_α_525_202:  mov              edi, 1
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
.Lsolve$2F8_α_525_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_525_204
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lsolve$2F8_α_525_205
.Lsolve$2F8_α_525_204:  mov              edi, 2
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
.Lsolve$2F8_α_525_205:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_525_206
                        mov              rax, qword ptr [rsp + 3408]
                        mov              rdx, qword ptr [rsp + 3416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lsolve$2F8_α_525_207
.Lsolve$2F8_α_525_206:  mov              edi, 3
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
.Lsolve$2F8_α_525_207:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_525_208
                        mov              rax, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lsolve$2F8_α_525_209
.Lsolve$2F8_α_525_208:  mov              edi, 4
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
.Lsolve$2F8_α_525_209:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_525_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_525_1
                        lea              rcx, [rip + .Lsolve$2F8_α_525_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_525_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_525_4];    jmp   rax
.Lsolve$2F8_α_525_3:    add              rsp, 16
                        mov              qword ptr [rsp + 3336], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3328]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_525_5
                        mov              qword ptr [rsp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_525_2
.Lsolve$2F8_α_525_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_525_2
.Lsolve$2F8_α_525_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3328]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_525_6
                        mov              qword ptr [rsp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_525_2
.Lsolve$2F8_α_525_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_525_2
.Lsolve$2F8_α_525_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_525_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_525_29
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
.Lsolve$2F8_α_525_29:   mov              qword ptr [rsp + 3232], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_525_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_525_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_525_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_525_4];    jmp   rax
.Lsolve$2F8_α_525_7:    add              rsp, 16
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n346_call_proc_staged_β
                                                                              jmp   n356_var_ref_α
.Lsolve$2F8_β_525_0:    .quad            .Lsolve$2F8_β_525_0_s
.Lsolve$2F8_β_525_0_s:  .string          "sumdigit/5"
                        .size            n355_call_proc_staged_bx, .-n355_call_proc_staged_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx;         jmp   n357_call_proc_staged_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_call_proc_staged_bx, @function
n357_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        mov              r11, 173
                        mov              qword ptr [rsp + 3184], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_529_200
                        mov              rax, qword ptr [rsp + 3216]
                        mov              rdx, qword ptr [rsp + 3224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_529_201
.Lsolve$2F8_α_529_200:  mov              edi, 0
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
.Lsolve$2F8_α_529_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_529_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_529_1
                        lea              rcx, [rip + .Lsolve$2F8_α_529_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_529_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_529_4];    jmp   rax
.Lsolve$2F8_α_529_3:    add              rsp, 16
                        mov              qword ptr [rsp + 3192], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3184]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_529_5
                        mov              qword ptr [rsp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_529_2
.Lsolve$2F8_α_529_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_529_2
.Lsolve$2F8_α_529_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3184]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_529_6
                        mov              qword ptr [rsp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_529_2
.Lsolve$2F8_α_529_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_529_2
.Lsolve$2F8_α_529_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_529_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_529_29
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
.Lsolve$2F8_α_529_29:   mov              qword ptr [rsp + 3152], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_529_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_529_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_529_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_529_4];    jmp   rax
.Lsolve$2F8_α_529_7:    add              rsp, 16
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n355_call_proc_staged_β
                                                                              jmp   n358_var_α
.Lsolve$2F8_β_529_0:    .quad            .Lsolve$2F8_β_529_0_s
.Lsolve$2F8_β_529_0_s:  .string          "digit/1"
                        .size            n357_call_proc_staged_bx, .-n357_call_proc_staged_bx
                        .type            n358_var_bx, @function
n358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 174
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n359_var_α
                        .size            n358_var_bx, .-n358_var_bx
                        .type            n359_var_bx, @function
n359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n360_call_prolog_α
                        .size            n359_var_bx, .-n359_var_bx
                        .type            n360_call_prolog_bx, @function
n360_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_prolog_α:     mov              r11, 176
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
n360_call_prolog_β:     mov              r11, 176;                            jmp   n357_call_proc_staged_β
                        .size            n360_call_prolog_bx, .-n360_call_prolog_bx
                        .type            n361_var_bx, @function
n361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n362_var_α
                        .size            n361_var_bx, .-n361_var_bx
                        .type            n362_var_bx, @function
n362_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n363_call_prolog_α
                        .size            n362_var_bx, .-n362_var_bx
                        .type            n363_call_prolog_bx, @function
n363_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_prolog_α:     mov              r11, 179
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
n363_call_prolog_β:     mov              r11, 179;                            jmp   n357_call_proc_staged_β
                        .size            n363_call_prolog_bx, .-n363_call_prolog_bx
                        .type            n364_var_bx, @function
n364_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n365_var_α
                        .size            n364_var_bx, .-n364_var_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n366_call_prolog_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_call_prolog_bx, @function
n366_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_prolog_α:     mov              r11, 182
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
n366_call_prolog_β:     mov              r11, 182;                            jmp   n357_call_proc_staged_β
                        .size            n366_call_prolog_bx, .-n366_call_prolog_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n368_call_proc_staged_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_call_proc_staged_bx, @function
n368_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        mov              r11, 184
                        mov              qword ptr [rsp + 2864], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_548_200
                        mov              rax, qword ptr [rsp + 2896]
                        mov              rdx, qword ptr [rsp + 2904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_548_201
.Lsolve$2F8_α_548_200:  mov              edi, 0
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
.Lsolve$2F8_α_548_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_548_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_548_1
                        lea              rcx, [rip + .Lsolve$2F8_α_548_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_548_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_548_4];    jmp   rax
.Lsolve$2F8_α_548_3:    add              rsp, 16
                        mov              qword ptr [rsp + 2872], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2864]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_548_5
                        mov              qword ptr [rsp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_548_2
.Lsolve$2F8_α_548_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_548_2
.Lsolve$2F8_α_548_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2864]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_548_6
                        mov              qword ptr [rsp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_548_2
.Lsolve$2F8_α_548_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_548_2
.Lsolve$2F8_α_548_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_548_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_548_29
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
.Lsolve$2F8_α_548_29:   mov              qword ptr [rsp + 2832], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_548_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_548_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_548_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_548_4];    jmp   rax
.Lsolve$2F8_α_548_7:    add              rsp, 16
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n369_var_α
.Lsolve$2F8_β_548_0:    .quad            .Lsolve$2F8_β_548_0_s
.Lsolve$2F8_β_548_0_s:  .string          "digit/1"
                        .size            n368_call_proc_staged_bx, .-n368_call_proc_staged_bx
                        .type            n369_var_bx, @function
n369_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n370_var_α
                        .size            n369_var_bx, .-n369_var_bx
                        .type            n370_var_bx, @function
n370_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n371_call_prolog_α
                        .size            n370_var_bx, .-n370_var_bx
                        .type            n371_call_prolog_bx, @function
n371_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_prolog_α:     mov              r11, 187
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
n371_call_prolog_β:     mov              r11, 187;                            jmp   n368_call_proc_staged_β
                        .size            n371_call_prolog_bx, .-n371_call_prolog_bx
                        .type            n372_var_bx, @function
n372_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n373_var_α
                        .size            n372_var_bx, .-n372_var_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n374_call_prolog_α
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_call_prolog_bx, @function
n374_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_prolog_α:     mov              r11, 190
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
n374_call_prolog_β:     mov              r11, 190;                            jmp   n368_call_proc_staged_β
                        .size            n374_call_prolog_bx, .-n374_call_prolog_bx
                        .type            n375_var_bx, @function
n375_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 191
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n376_var_α
                        .size            n375_var_bx, .-n375_var_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n377_call_prolog_α
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_call_prolog_bx, @function
n377_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_prolog_α:     mov              r11, 193
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
n377_call_prolog_β:     mov              r11, 193;                            jmp   n368_call_proc_staged_β
                        .size            n377_call_prolog_bx, .-n377_call_prolog_bx
                        .type            n378_var_bx, @function
n378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n379_var_α
                        .size            n378_var_bx, .-n378_var_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n380_call_prolog_α
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_call_prolog_bx, @function
n380_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_prolog_α:     mov              r11, 196
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
n380_call_prolog_β:     mov              r11, 196;                            jmp   n368_call_proc_staged_β
                        .size            n380_call_prolog_bx, .-n380_call_prolog_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n382_var_ref_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n383_var_ref_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n384_var_ref_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n385_var_ref_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_var_ref_bx, @function
n385_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n386_call_proc_staged_α
                        .size            n385_var_ref_bx, .-n385_var_ref_bx
                        .type            n386_call_proc_staged_bx, @function
n386_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        mov              r11, 202
                        mov              qword ptr [rsp + 2400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_580_200
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_580_201
.Lsolve$2F8_α_580_200:  mov              edi, 0
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
.Lsolve$2F8_α_580_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_580_202
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lsolve$2F8_α_580_203
.Lsolve$2F8_α_580_202:  mov              edi, 1
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
.Lsolve$2F8_α_580_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_580_204
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lsolve$2F8_α_580_205
.Lsolve$2F8_α_580_204:  mov              edi, 2
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
.Lsolve$2F8_α_580_205:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_580_206
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lsolve$2F8_α_580_207
.Lsolve$2F8_α_580_206:  mov              edi, 3
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
.Lsolve$2F8_α_580_207:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_580_208
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lsolve$2F8_α_580_209
.Lsolve$2F8_α_580_208:  mov              edi, 4
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
.Lsolve$2F8_α_580_209:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_580_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_580_1
                        lea              rcx, [rip + .Lsolve$2F8_α_580_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_580_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_580_4];    jmp   rax
.Lsolve$2F8_α_580_3:    add              rsp, 16
                        mov              qword ptr [rsp + 2408], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2400]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_580_5
                        mov              qword ptr [rsp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_580_2
.Lsolve$2F8_α_580_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_580_2
.Lsolve$2F8_α_580_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2400]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_580_6
                        mov              qword ptr [rsp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_580_2
.Lsolve$2F8_α_580_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_580_2
.Lsolve$2F8_α_580_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_580_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_580_29
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
.Lsolve$2F8_α_580_29:   mov              qword ptr [rsp + 2304], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_580_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_580_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_580_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_580_4];    jmp   rax
.Lsolve$2F8_α_580_7:    add              rsp, 16
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n387_var_ref_α
.Lsolve$2F8_β_580_0:    .quad            .Lsolve$2F8_β_580_0_s
.Lsolve$2F8_β_580_0_s:  .string          "sumdigit/5"
                        .size            n386_call_proc_staged_bx, .-n386_call_proc_staged_bx
                        .type            n387_var_ref_bx, @function
n387_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n388_call_proc_staged_α
                        .size            n387_var_ref_bx, .-n387_var_ref_bx
                        .type            n388_call_proc_staged_bx, @function
n388_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        mov              r11, 204
                        mov              qword ptr [rsp + 2256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_584_200
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_584_201
.Lsolve$2F8_α_584_200:  mov              edi, 0
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
.Lsolve$2F8_α_584_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_584_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_584_1
                        lea              rcx, [rip + .Lsolve$2F8_α_584_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_584_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_584_4];    jmp   rax
.Lsolve$2F8_α_584_3:    add              rsp, 16
                        mov              qword ptr [rsp + 2264], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_584_5
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_584_2
.Lsolve$2F8_α_584_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_584_2
.Lsolve$2F8_α_584_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2256]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_584_6
                        mov              qword ptr [rsp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_584_2
.Lsolve$2F8_α_584_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_584_2
.Lsolve$2F8_α_584_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_584_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_584_29
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
.Lsolve$2F8_α_584_29:   mov              qword ptr [rsp + 2224], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_584_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_584_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_584_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_584_4];    jmp   rax
.Lsolve$2F8_α_584_7:    add              rsp, 16
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n386_call_proc_staged_β
                                                                              jmp   n389_var_α
.Lsolve$2F8_β_584_0:    .quad            .Lsolve$2F8_β_584_0_s
.Lsolve$2F8_β_584_0_s:  .string          "digit/1"
                        .size            n388_call_proc_staged_bx, .-n388_call_proc_staged_bx
                        .type            n389_var_bx, @function
n389_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n390_var_α
                        .size            n389_var_bx, .-n389_var_bx
                        .type            n390_var_bx, @function
n390_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n391_call_prolog_α
                        .size            n390_var_bx, .-n390_var_bx
                        .type            n391_call_prolog_bx, @function
n391_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_prolog_α:     mov              r11, 207
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
n391_call_prolog_β:     mov              r11, 207;                            jmp   n388_call_proc_staged_β
                        .size            n391_call_prolog_bx, .-n391_call_prolog_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n393_var_α
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_var_bx, @function
n393_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             mov              r11, 209
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n394_call_prolog_α
                        .size            n393_var_bx, .-n393_var_bx
                        .type            n394_call_prolog_bx, @function
n394_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_call_prolog_α:     mov              r11, 210
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
n394_call_prolog_β:     mov              r11, 210;                            jmp   n388_call_proc_staged_β
                        .size            n394_call_prolog_bx, .-n394_call_prolog_bx
                        .type            n395_var_bx, @function
n395_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n396_var_α
                        .size            n395_var_bx, .-n395_var_bx
                        .type            n396_var_bx, @function
n396_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n397_call_prolog_α
                        .size            n396_var_bx, .-n396_var_bx
                        .type            n397_call_prolog_bx, @function
n397_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_call_prolog_α:     mov              r11, 213
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
n397_call_prolog_β:     mov              r11, 213;                            jmp   n388_call_proc_staged_β
                        .size            n397_call_prolog_bx, .-n397_call_prolog_bx
                        .type            n398_var_bx, @function
n398_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 214
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n399_var_α
                        .size            n398_var_bx, .-n398_var_bx
                        .type            n399_var_bx, @function
n399_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n400_call_prolog_α
                        .size            n399_var_bx, .-n399_var_bx
                        .type            n400_call_prolog_bx, @function
n400_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 216
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
n400_call_prolog_β:     mov              r11, 216;                            jmp   n388_call_proc_staged_β
                        .size            n400_call_prolog_bx, .-n400_call_prolog_bx
                        .type            n401_var_bx, @function
n401_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n402_var_α
                        .size            n401_var_bx, .-n401_var_bx
                        .type            n402_var_bx, @function
n402_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n403_call_prolog_α
                        .size            n402_var_bx, .-n402_var_bx
                        .type            n403_call_prolog_bx, @function
n403_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_prolog_α:     mov              r11, 219
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
n403_call_prolog_β:     mov              r11, 219;                            jmp   n388_call_proc_staged_β
                        .size            n403_call_prolog_bx, .-n403_call_prolog_bx
                        .type            n404_var_ref_bx, @function
n404_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n405_var_ref_α
                        .size            n404_var_ref_bx, .-n404_var_ref_bx
                        .type            n405_var_ref_bx, @function
n405_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4416]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n406_var_ref_α
                        .size            n405_var_ref_bx, .-n405_var_ref_bx
                        .type            n406_var_ref_bx, @function
n406_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n407_var_ref_α
                        .size            n406_var_ref_bx, .-n406_var_ref_bx
                        .type            n407_var_ref_bx, @function
n407_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n408_var_ref_α
                        .size            n407_var_ref_bx, .-n407_var_ref_bx
                        .type            n408_var_ref_bx, @function
n408_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n409_call_proc_staged_α
                        .size            n408_var_ref_bx, .-n408_var_ref_bx
                        .type            n409_call_proc_staged_bx, @function
n409_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_call_proc_staged_α:
                        mov              r11, 225
                        mov              qword ptr [rsp + 1712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_621_200
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_621_201
.Lsolve$2F8_α_621_200:  mov              edi, 0
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
.Lsolve$2F8_α_621_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_621_202
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lsolve$2F8_α_621_203
.Lsolve$2F8_α_621_202:  mov              edi, 1
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
.Lsolve$2F8_α_621_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_621_204
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lsolve$2F8_α_621_205
.Lsolve$2F8_α_621_204:  mov              edi, 2
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
.Lsolve$2F8_α_621_205:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_621_206
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lsolve$2F8_α_621_207
.Lsolve$2F8_α_621_206:  mov              edi, 3
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
.Lsolve$2F8_α_621_207:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_621_208
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lsolve$2F8_α_621_209
.Lsolve$2F8_α_621_208:  mov              edi, 4
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
.Lsolve$2F8_α_621_209:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_621_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_621_1
                        lea              rcx, [rip + .Lsolve$2F8_α_621_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_621_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_621_4];    jmp   rax
.Lsolve$2F8_α_621_3:    add              rsp, 16
                        mov              qword ptr [rsp + 1720], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1712]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_621_5
                        mov              qword ptr [rsp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_621_2
.Lsolve$2F8_α_621_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_621_2
.Lsolve$2F8_α_621_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1712]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_621_6
                        mov              qword ptr [rsp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_621_2
.Lsolve$2F8_α_621_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_621_2
.Lsolve$2F8_α_621_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_621_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_621_29
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
.Lsolve$2F8_α_621_29:   mov              qword ptr [rsp + 1616], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_621_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_621_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_621_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_621_4];    jmp   rax
.Lsolve$2F8_α_621_7:    add              rsp, 16
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n388_call_proc_staged_β
                                                                              jmp   n410_var_ref_α
.Lsolve$2F8_β_621_0:    .quad            .Lsolve$2F8_β_621_0_s
.Lsolve$2F8_β_621_0_s:  .string          "sumdigit/5"
                        .size            n409_call_proc_staged_bx, .-n409_call_proc_staged_bx
                        .type            n410_var_ref_bx, @function
n410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n411_call_proc_staged_α
                        .size            n410_var_ref_bx, .-n410_var_ref_bx
                        .type            n411_call_proc_staged_bx, @function
n411_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        mov              r11, 227
                        mov              qword ptr [rsp + 1568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_625_200
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_625_201
.Lsolve$2F8_α_625_200:  mov              edi, 0
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
.Lsolve$2F8_α_625_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_625_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_625_1
                        lea              rcx, [rip + .Lsolve$2F8_α_625_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_625_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_625_4];    jmp   rax
.Lsolve$2F8_α_625_3:    add              rsp, 16
                        mov              qword ptr [rsp + 1576], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_625_5
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_625_2
.Lsolve$2F8_α_625_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_625_2
.Lsolve$2F8_α_625_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_625_6
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_625_2
.Lsolve$2F8_α_625_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_625_2
.Lsolve$2F8_α_625_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_625_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_625_29
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
.Lsolve$2F8_α_625_29:   mov              qword ptr [rsp + 1536], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_625_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_625_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_625_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_625_4];    jmp   rax
.Lsolve$2F8_α_625_7:    add              rsp, 16
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n409_call_proc_staged_β
                                                                              jmp   n412_var_α
.Lsolve$2F8_β_625_0:    .quad            .Lsolve$2F8_β_625_0_s
.Lsolve$2F8_β_625_0_s:  .string          "leftdigit/1"
                        .size            n411_call_proc_staged_bx, .-n411_call_proc_staged_bx
                        .type            n412_var_bx, @function
n412_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 228
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n413_var_α
                        .size            n412_var_bx, .-n412_var_bx
                        .type            n413_var_bx, @function
n413_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n414_call_prolog_α
                        .size            n413_var_bx, .-n413_var_bx
                        .type            n414_call_prolog_bx, @function
n414_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_prolog_α:     mov              r11, 230
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
n414_call_prolog_β:     mov              r11, 230;                            jmp   n411_call_proc_staged_β
                        .size            n414_call_prolog_bx, .-n414_call_prolog_bx
                        .type            n415_var_bx, @function
n415_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n416_var_α
                        .size            n415_var_bx, .-n415_var_bx
                        .type            n416_var_bx, @function
n416_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n417_call_prolog_α
                        .size            n416_var_bx, .-n416_var_bx
                        .type            n417_call_prolog_bx, @function
n417_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 233
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
n417_call_prolog_β:     mov              r11, 233;                            jmp   n411_call_proc_staged_β
                        .size            n417_call_prolog_bx, .-n417_call_prolog_bx
                        .type            n418_var_bx, @function
n418_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n419_var_α
                        .size            n418_var_bx, .-n418_var_bx
                        .type            n419_var_bx, @function
n419_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n420_call_prolog_α
                        .size            n419_var_bx, .-n419_var_bx
                        .type            n420_call_prolog_bx, @function
n420_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 236
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
n420_call_prolog_β:     mov              r11, 236;                            jmp   n411_call_proc_staged_β
                        .size            n420_call_prolog_bx, .-n420_call_prolog_bx
                        .type            n421_var_bx, @function
n421_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n422_var_α
                        .size            n421_var_bx, .-n421_var_bx
                        .type            n422_var_bx, @function
n422_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n423_call_prolog_α
                        .size            n422_var_bx, .-n422_var_bx
                        .type            n423_call_prolog_bx, @function
n423_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_prolog_α:     mov              r11, 239
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
n423_call_prolog_β:     mov              r11, 239;                            jmp   n411_call_proc_staged_β
                        .size            n423_call_prolog_bx, .-n423_call_prolog_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n425_var_α
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_var_bx, @function
n425_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n426_call_prolog_α
                        .size            n425_var_bx, .-n425_var_bx
                        .type            n426_call_prolog_bx, @function
n426_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 242
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
n426_call_prolog_β:     mov              r11, 242;                            jmp   n411_call_proc_staged_β
                        .size            n426_call_prolog_bx, .-n426_call_prolog_bx
                        .type            n427_var_bx, @function
n427_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n428_var_α
                        .size            n427_var_bx, .-n427_var_bx
                        .type            n428_var_bx, @function
n428_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n429_call_prolog_α
                        .size            n428_var_bx, .-n428_var_bx
                        .type            n429_call_prolog_bx, @function
n429_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_call_prolog_α:     mov              r11, 245
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
n429_call_prolog_β:     mov              r11, 245;                            jmp   n411_call_proc_staged_β
                        .size            n429_call_prolog_bx, .-n429_call_prolog_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n431_call_proc_staged_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_call_proc_staged_bx, @function
n431_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_proc_staged_α:
                        mov              r11, 247
                        mov              qword ptr [rsp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_659_200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_659_201
.Lsolve$2F8_α_659_200:  mov              edi, 0
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
.Lsolve$2F8_α_659_201:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_659_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_659_1
                        lea              rcx, [rip + .Lsolve$2F8_α_659_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_659_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_659_4];    jmp   rax
.Lsolve$2F8_α_659_3:    add              rsp, 16
                        mov              qword ptr [rsp + 1016], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_659_5
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_659_2
.Lsolve$2F8_α_659_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_659_2
.Lsolve$2F8_α_659_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_659_6
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_659_2
.Lsolve$2F8_α_659_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_659_2
.Lsolve$2F8_α_659_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_659_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_659_29
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
.Lsolve$2F8_α_659_29:   mov              qword ptr [rsp + 976], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_659_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_659_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_659_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_659_4];    jmp   rax
.Lsolve$2F8_α_659_7:    add              rsp, 16
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n432_var_α
.Lsolve$2F8_β_659_0:    .quad            .Lsolve$2F8_β_659_0_s
.Lsolve$2F8_β_659_0_s:  .string          "leftdigit/1"
                        .size            n431_call_proc_staged_bx, .-n431_call_proc_staged_bx
                        .type            n432_var_bx, @function
n432_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 952], rax;          jmp   n433_var_α
                        .size            n432_var_bx, .-n432_var_bx
                        .type            n433_var_bx, @function
n433_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 968], rax;          jmp   n434_call_prolog_α
                        .size            n433_var_bx, .-n433_var_bx
                        .type            n434_call_prolog_bx, @function
n434_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_prolog_α:     mov              r11, 250
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
n434_call_prolog_β:     mov              r11, 250;                            jmp   n431_call_proc_staged_β
                        .size            n434_call_prolog_bx, .-n434_call_prolog_bx
                        .type            n435_var_bx, @function
n435_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 872], rax;          jmp   n436_var_α
                        .size            n435_var_bx, .-n435_var_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 888], rax;          jmp   n437_call_prolog_α
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_call_prolog_bx, @function
n437_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 253
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
n437_call_prolog_β:     mov              r11, 253;                            jmp   n431_call_proc_staged_β
                        .size            n437_call_prolog_bx, .-n437_call_prolog_bx
                        .type            n438_var_bx, @function
n438_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 792], rax;          jmp   n439_var_α
                        .size            n438_var_bx, .-n438_var_bx
                        .type            n439_var_bx, @function
n439_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 808], rax;          jmp   n440_call_prolog_α
                        .size            n439_var_bx, .-n439_var_bx
                        .type            n440_call_prolog_bx, @function
n440_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_prolog_α:     mov              r11, 256
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
n440_call_prolog_β:     mov              r11, 256;                            jmp   n431_call_proc_staged_β
                        .size            n440_call_prolog_bx, .-n440_call_prolog_bx
                        .type            n441_var_bx, @function
n441_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:             mov              r11, 257
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 712], rax;          jmp   n442_var_α
                        .size            n441_var_bx, .-n441_var_bx
                        .type            n442_var_bx, @function
n442_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 728], rax;          jmp   n443_call_prolog_α
                        .size            n442_var_bx, .-n442_var_bx
                        .type            n443_call_prolog_bx, @function
n443_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 259
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
n443_call_prolog_β:     mov              r11, 259;                            jmp   n431_call_proc_staged_β
                        .size            n443_call_prolog_bx, .-n443_call_prolog_bx
                        .type            n444_var_bx, @function
n444_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 632], rax;          jmp   n445_var_α
                        .size            n444_var_bx, .-n444_var_bx
                        .type            n445_var_bx, @function
n445_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 648], rax;          jmp   n446_call_prolog_α
                        .size            n445_var_bx, .-n445_var_bx
                        .type            n446_call_prolog_bx, @function
n446_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 262
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
n446_call_prolog_β:     mov              r11, 262;                            jmp   n431_call_proc_staged_β
                        .size            n446_call_prolog_bx, .-n446_call_prolog_bx
                        .type            n447_var_bx, @function
n447_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             mov              r11, 263
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 552], rax;          jmp   n448_var_α
                        .size            n447_var_bx, .-n447_var_bx
                        .type            n448_var_bx, @function
n448_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             mov              r11, 264
                        mov              rax, qword ptr [rsp + 4416]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 4424]
                        mov              qword ptr [rsp + 568], rax;          jmp   n449_call_prolog_α
                        .size            n448_var_bx, .-n448_var_bx
                        .type            n449_call_prolog_bx, @function
n449_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_call_prolog_α:     mov              r11, 265
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
n449_call_prolog_β:     mov              r11, 265;                            jmp   n431_call_proc_staged_β
                        .size            n449_call_prolog_bx, .-n449_call_prolog_bx
                        .type            n450_var_bx, @function
n450_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              r11, 266
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 472], rax;          jmp   n451_var_α
                        .size            n450_var_bx, .-n450_var_bx
                        .type            n451_var_bx, @function
n451_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 488], rax;          jmp   n452_call_prolog_α
                        .size            n451_var_bx, .-n451_var_bx
                        .type            n452_call_prolog_bx, @function
n452_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_prolog_α:     mov              r11, 268
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
n452_call_prolog_β:     mov              r11, 268;                            jmp   n431_call_proc_staged_β
                        .size            n452_call_prolog_bx, .-n452_call_prolog_bx
                        .type            n453_var_ref_bx, @function
n453_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4336]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n454_var_ref_α
                        .size            n453_var_ref_bx, .-n453_var_ref_bx
                        .type            n454_var_ref_bx, @function
n454_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4352]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n455_var_ref_α
                        .size            n454_var_ref_bx, .-n454_var_ref_bx
                        .type            n455_var_ref_bx, @function
n455_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n456_var_ref_α
                        .size            n455_var_ref_bx, .-n455_var_ref_bx
                        .type            n456_var_ref_bx, @function
n456_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4384]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n457_var_ref_α
                        .size            n456_var_ref_bx, .-n456_var_ref_bx
                        .type            n457_var_ref_bx, @function
n457_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4368]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n458_call_proc_staged_α
                        .size            n457_var_ref_bx, .-n457_var_ref_bx
                        .type            n458_call_proc_staged_bx, @function
n458_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_call_proc_staged_α:
                        mov              r11, 274
                        mov              qword ptr [rsp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_706_200
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lsolve$2F8_α_706_201
.Lsolve$2F8_α_706_200:  mov              edi, 0
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
.Lsolve$2F8_α_706_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_706_202
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lsolve$2F8_α_706_203
.Lsolve$2F8_α_706_202:  mov              edi, 1
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
.Lsolve$2F8_α_706_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_706_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lsolve$2F8_α_706_205
.Lsolve$2F8_α_706_204:  mov              edi, 2
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
.Lsolve$2F8_α_706_205:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_706_206
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lsolve$2F8_α_706_207
.Lsolve$2F8_α_706_206:  mov              edi, 3
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
.Lsolve$2F8_α_706_207:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lsolve$2F8_α_706_208
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lsolve$2F8_α_706_209
.Lsolve$2F8_α_706_208:  mov              edi, 4
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
.Lsolve$2F8_α_706_209:  sub              rsp, 8
                        lea              rax, [rip + .Lsolve$2F8_α_706_7]     # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lsolve$2F8_α_706_1
                        lea              rcx, [rip + .Lsolve$2F8_α_706_4]
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_706_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_706_4];    jmp   rax
.Lsolve$2F8_α_706_3:    add              rsp, 16
                        mov              qword ptr [rsp + 312], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_706_5
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_706_2
.Lsolve$2F8_α_706_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lsolve$2F8_α_706_2
.Lsolve$2F8_α_706_4:    add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 304]
                        test             rax, rax;                            jne   .Lsolve$2F8_α_706_6
                        mov              qword ptr [rsp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lsolve$2F8_α_706_2
.Lsolve$2F8_α_706_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lsolve$2F8_α_706_2
.Lsolve$2F8_α_706_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lsolve$2F8_α_706_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsolve$2F8_α_706_29
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
.Lsolve$2F8_α_706_29:   mov              qword ptr [rsp + 208], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lsolve$2F8_α_706_7]
                        push             r8
                        lea              rcx, [rip + .Lsolve$2F8_α_706_4]     # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lsolve$2F8_α_706_3]
                        push             rcx
                        lea              rdx, [rip + .Lsolve$2F8_α_706_4];    jmp   rax
.Lsolve$2F8_α_706_7:    add              rsp, 16
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n431_call_proc_staged_β
                                                                              jmp   n459_suspend_α
.Lsolve$2F8_β_706_0:    .quad            .Lsolve$2F8_β_706_0_s
.Lsolve$2F8_β_706_0_s:  .string          "sumdigit/5"
                        .size            n458_call_proc_staged_bx, .-n458_call_proc_staged_bx
                        .type            n459_suspend_bx, @function
n459_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_suspend_α:         mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lsolve$2F8_α_708_61
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
.Lsolve$2F8_α_708_61:   mov              rdi, qword ptr [rsp + 144]
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
                        .size            n459_suspend_bx, .-n459_suspend_bx
                        .type            n460_call_prolog_bx, @function
n460_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_call_prolog_α:     mov              r11, 276
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
n460_call_prolog_β:     mov              r11, 276;                            jmp   solve$2F8_ω
                        .size            n460_call_prolog_bx, .-n460_call_prolog_bx
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
                        test             r12, r12;                            je    .Lsolve$2F8_α_709_50
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
.Lsolve$2F8_α_709_50:   mov              rdi, rax
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
                        .type            n710_call_prolog_bx, @function
n710_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_call_prolog_α:     mov              r11, 277
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_792_102
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lleftdigit$2F1_α_792_101
.Lleftdigit$2F1_α_792_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lleftdigit$2F1_α_792_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lleftdigit$2F1_α_792_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lleftdigit$2F1_α_792_101
.Lleftdigit$2F1_α_792_100:
                        lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_792_101:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n711_var_ref_α
n710_call_prolog_β:     mov              r11, 277;                            jmp   leftdigit$2F1_ω
                        .size            n710_call_prolog_bx, .-n710_call_prolog_bx
                        .type            n711_var_ref_bx, @function
n711_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n712_lit_integer_α
                        .size            n711_var_ref_bx, .-n711_var_ref_bx
                        .type            n712_lit_integer_bx, @function
n712_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_795_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n713_lit_integer_α
.Lleftdigit$2F1_α_795_0:
                        .quad            1
                        .size            n712_lit_integer_bx, .-n712_lit_integer_bx
                        .type            n713_lit_integer_bx, @function
n713_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_796_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n714_call_prolog_α
.Lleftdigit$2F1_α_796_0:
                        .quad            1
                        .size            n713_lit_integer_bx, .-n713_lit_integer_bx
                        .type            n714_call_prolog_bx, @function
n714_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_call_prolog_α:     mov              r11, 281
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
.Lleftdigit$2F1_α_797_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_797_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_797_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_797_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_797_110
.Lleftdigit$2F1_α_797_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_797_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_797_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_797_110
.Lleftdigit$2F1_α_797_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_797_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_797_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_797_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_797_110
.Lleftdigit$2F1_α_797_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_797_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_797_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_797_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_797_114
                                                                              jmp   .Lleftdigit$2F1_α_797_118
.Lleftdigit$2F1_α_797_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_797_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_797_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_797_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_797_115
                                                                              jmp   .Lleftdigit$2F1_α_797_114
.Lleftdigit$2F1_α_797_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_797_117
.Lleftdigit$2F1_α_797_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_797_117
.Lleftdigit$2F1_α_797_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_797_117:
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n720_var_ref_α
                                                                              jmp   n715_var_ref_α
n714_call_prolog_β:     mov              r11, 281;                            jmp   n720_var_ref_α
                        .size            n714_call_prolog_bx, .-n714_call_prolog_bx
                        .type            n715_var_ref_bx, @function
n715_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n716_lit_integer_α
                        .size            n715_var_ref_bx, .-n715_var_ref_bx
                        .type            n716_lit_integer_bx, @function
n716_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_800_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n717_call_prolog_α
.Lleftdigit$2F1_α_800_0:
                        .quad            1
                        .size            n716_lit_integer_bx, .-n716_lit_integer_bx
                        .type            n717_call_prolog_bx, @function
n717_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_call_prolog_α:     mov              r11, 284
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
                        cmp              al, 104;                             je    n719_call_prolog_α
                                                                              jmp   n718_suspend_α
n717_call_prolog_β:     mov              r11, 284;                            jmp   n719_call_prolog_α
                        .size            n717_call_prolog_bx, .-n717_call_prolog_bx
                        .type            n718_suspend_bx, @function
n718_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_suspend_α:         mov              r11, 285
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_803_61
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
.Lleftdigit$2F1_α_803_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n718_suspend_β:         mov              r11, 285;                            jmp   n719_call_prolog_α
                        .size            n718_suspend_bx, .-n718_suspend_bx
                        .type            n719_call_prolog_bx, @function
n719_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_call_prolog_α:     mov              r11, 286
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
n719_call_prolog_β:     mov              r11, 286;                            jmp   leftdigit$2F1_ω
                        .size            n719_call_prolog_bx, .-n719_call_prolog_bx
                        .type            n720_var_ref_bx, @function
n720_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n721_lit_integer_α
                        .size            n720_var_ref_bx, .-n720_var_ref_bx
                        .type            n721_lit_integer_bx, @function
n721_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_807_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n722_lit_integer_α
.Lleftdigit$2F1_α_807_0:
                        .quad            1
                        .size            n721_lit_integer_bx, .-n721_lit_integer_bx
                        .type            n722_lit_integer_bx, @function
n722_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_integer_α:     mov              r11, 289
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_808_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n723_call_prolog_α
.Lleftdigit$2F1_α_808_0:
                        .quad            2
                        .size            n722_lit_integer_bx, .-n722_lit_integer_bx
                        .type            n723_call_prolog_bx, @function
n723_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_call_prolog_α:     mov              r11, 290
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
.Lleftdigit$2F1_α_809_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_809_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_809_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_809_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_809_110
.Lleftdigit$2F1_α_809_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_809_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_809_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_809_110
.Lleftdigit$2F1_α_809_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_809_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_809_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_809_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_809_110
.Lleftdigit$2F1_α_809_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_809_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_809_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_809_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_809_114
                                                                              jmp   .Lleftdigit$2F1_α_809_118
.Lleftdigit$2F1_α_809_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_809_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_809_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_809_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_809_115
                                                                              jmp   .Lleftdigit$2F1_α_809_114
.Lleftdigit$2F1_α_809_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_809_117
.Lleftdigit$2F1_α_809_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_809_117
.Lleftdigit$2F1_α_809_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_809_117:
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n729_var_ref_α
                                                                              jmp   n724_var_ref_α
n723_call_prolog_β:     mov              r11, 290;                            jmp   n729_var_ref_α
                        .size            n723_call_prolog_bx, .-n723_call_prolog_bx
                        .type            n724_var_ref_bx, @function
n724_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n725_lit_integer_α
                        .size            n724_var_ref_bx, .-n724_var_ref_bx
                        .type            n725_lit_integer_bx, @function
n725_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:     mov              r11, 292
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_812_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n726_call_prolog_α
.Lleftdigit$2F1_α_812_0:
                        .quad            2
                        .size            n725_lit_integer_bx, .-n725_lit_integer_bx
                        .type            n726_call_prolog_bx, @function
n726_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_call_prolog_α:     mov              r11, 293
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
                        cmp              al, 104;                             je    n728_call_prolog_α
                                                                              jmp   n727_suspend_α
n726_call_prolog_β:     mov              r11, 293;                            jmp   n728_call_prolog_α
                        .size            n726_call_prolog_bx, .-n726_call_prolog_bx
                        .type            n727_suspend_bx, @function
n727_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_suspend_α:         mov              r11, 294
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_815_61
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
.Lleftdigit$2F1_α_815_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n727_suspend_β:         mov              r11, 294;                            jmp   n728_call_prolog_α
                        .size            n727_suspend_bx, .-n727_suspend_bx
                        .type            n728_call_prolog_bx, @function
n728_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_call_prolog_α:     mov              r11, 295
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
n728_call_prolog_β:     mov              r11, 295;                            jmp   leftdigit$2F1_ω
                        .size            n728_call_prolog_bx, .-n728_call_prolog_bx
                        .type            n729_var_ref_bx, @function
n729_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n730_lit_integer_α
                        .size            n729_var_ref_bx, .-n729_var_ref_bx
                        .type            n730_lit_integer_bx, @function
n730_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_819_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n731_lit_integer_α
.Lleftdigit$2F1_α_819_0:
                        .quad            1
                        .size            n730_lit_integer_bx, .-n730_lit_integer_bx
                        .type            n731_lit_integer_bx, @function
n731_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:     mov              r11, 298
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_820_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n732_call_prolog_α
.Lleftdigit$2F1_α_820_0:
                        .quad            3
                        .size            n731_lit_integer_bx, .-n731_lit_integer_bx
                        .type            n732_call_prolog_bx, @function
n732_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_call_prolog_α:     mov              r11, 299
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
.Lleftdigit$2F1_α_821_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_821_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_821_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_821_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_821_110
.Lleftdigit$2F1_α_821_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_821_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_821_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_821_110
.Lleftdigit$2F1_α_821_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_821_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_821_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_821_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_821_110
.Lleftdigit$2F1_α_821_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_821_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_821_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_821_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_821_114
                                                                              jmp   .Lleftdigit$2F1_α_821_118
.Lleftdigit$2F1_α_821_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_821_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_821_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_821_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_821_115
                                                                              jmp   .Lleftdigit$2F1_α_821_114
.Lleftdigit$2F1_α_821_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_821_117
.Lleftdigit$2F1_α_821_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_821_117
.Lleftdigit$2F1_α_821_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_821_117:
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n738_var_ref_α
                                                                              jmp   n733_var_ref_α
n732_call_prolog_β:     mov              r11, 299;                            jmp   n738_var_ref_α
                        .size            n732_call_prolog_bx, .-n732_call_prolog_bx
                        .type            n733_var_ref_bx, @function
n733_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n734_lit_integer_α
                        .size            n733_var_ref_bx, .-n733_var_ref_bx
                        .type            n734_lit_integer_bx, @function
n734_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 301
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_824_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n735_call_prolog_α
.Lleftdigit$2F1_α_824_0:
                        .quad            3
                        .size            n734_lit_integer_bx, .-n734_lit_integer_bx
                        .type            n735_call_prolog_bx, @function
n735_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_prolog_α:     mov              r11, 302
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
                        cmp              al, 104;                             je    n737_call_prolog_α
                                                                              jmp   n736_suspend_α
n735_call_prolog_β:     mov              r11, 302;                            jmp   n737_call_prolog_α
                        .size            n735_call_prolog_bx, .-n735_call_prolog_bx
                        .type            n736_suspend_bx, @function
n736_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_suspend_α:         mov              r11, 303
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_827_61
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
.Lleftdigit$2F1_α_827_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n736_suspend_β:         mov              r11, 303;                            jmp   n737_call_prolog_α
                        .size            n736_suspend_bx, .-n736_suspend_bx
                        .type            n737_call_prolog_bx, @function
n737_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_call_prolog_α:     mov              r11, 304
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
n737_call_prolog_β:     mov              r11, 304;                            jmp   leftdigit$2F1_ω
                        .size            n737_call_prolog_bx, .-n737_call_prolog_bx
                        .type            n738_var_ref_bx, @function
n738_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n739_lit_integer_α
                        .size            n738_var_ref_bx, .-n738_var_ref_bx
                        .type            n739_lit_integer_bx, @function
n739_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_integer_α:     mov              r11, 306
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_831_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n740_lit_integer_α
.Lleftdigit$2F1_α_831_0:
                        .quad            1
                        .size            n739_lit_integer_bx, .-n739_lit_integer_bx
                        .type            n740_lit_integer_bx, @function
n740_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:     mov              r11, 307
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_832_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n741_call_prolog_α
.Lleftdigit$2F1_α_832_0:
                        .quad            4
                        .size            n740_lit_integer_bx, .-n740_lit_integer_bx
                        .type            n741_call_prolog_bx, @function
n741_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_prolog_α:     mov              r11, 308
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
.Lleftdigit$2F1_α_833_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_833_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_833_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_833_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_833_110
.Lleftdigit$2F1_α_833_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_833_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_833_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_833_110
.Lleftdigit$2F1_α_833_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_833_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_833_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_833_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_833_110
.Lleftdigit$2F1_α_833_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_833_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_833_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_833_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_833_114
                                                                              jmp   .Lleftdigit$2F1_α_833_118
.Lleftdigit$2F1_α_833_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_833_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_833_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_833_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_833_115
                                                                              jmp   .Lleftdigit$2F1_α_833_114
.Lleftdigit$2F1_α_833_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_833_117
.Lleftdigit$2F1_α_833_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_833_117
.Lleftdigit$2F1_α_833_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_833_117:
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n747_var_ref_α
                                                                              jmp   n742_var_ref_α
n741_call_prolog_β:     mov              r11, 308;                            jmp   n747_var_ref_α
                        .size            n741_call_prolog_bx, .-n741_call_prolog_bx
                        .type            n742_var_ref_bx, @function
n742_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n743_lit_integer_α
                        .size            n742_var_ref_bx, .-n742_var_ref_bx
                        .type            n743_lit_integer_bx, @function
n743_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:     mov              r11, 310
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_836_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n744_call_prolog_α
.Lleftdigit$2F1_α_836_0:
                        .quad            4
                        .size            n743_lit_integer_bx, .-n743_lit_integer_bx
                        .type            n744_call_prolog_bx, @function
n744_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_call_prolog_α:     mov              r11, 311
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
                        cmp              al, 104;                             je    n746_call_prolog_α
                                                                              jmp   n745_suspend_α
n744_call_prolog_β:     mov              r11, 311;                            jmp   n746_call_prolog_α
                        .size            n744_call_prolog_bx, .-n744_call_prolog_bx
                        .type            n745_suspend_bx, @function
n745_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_suspend_α:         mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_839_61
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
.Lleftdigit$2F1_α_839_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n745_suspend_β:         mov              r11, 312;                            jmp   n746_call_prolog_α
                        .size            n745_suspend_bx, .-n745_suspend_bx
                        .type            n746_call_prolog_bx, @function
n746_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_call_prolog_α:     mov              r11, 313
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
n746_call_prolog_β:     mov              r11, 313;                            jmp   leftdigit$2F1_ω
                        .size            n746_call_prolog_bx, .-n746_call_prolog_bx
                        .type            n747_var_ref_bx, @function
n747_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n748_lit_integer_α
                        .size            n747_var_ref_bx, .-n747_var_ref_bx
                        .type            n748_lit_integer_bx, @function
n748_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:     mov              r11, 315
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_843_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n749_lit_integer_α
.Lleftdigit$2F1_α_843_0:
                        .quad            1
                        .size            n748_lit_integer_bx, .-n748_lit_integer_bx
                        .type            n749_lit_integer_bx, @function
n749_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:     mov              r11, 316
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_844_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n750_call_prolog_α
.Lleftdigit$2F1_α_844_0:
                        .quad            5
                        .size            n749_lit_integer_bx, .-n749_lit_integer_bx
                        .type            n750_call_prolog_bx, @function
n750_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n750_call_prolog_α:     mov              r11, 317
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
.Lleftdigit$2F1_α_845_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_845_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_845_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_845_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_845_110
.Lleftdigit$2F1_α_845_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_845_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_845_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_845_110
.Lleftdigit$2F1_α_845_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_845_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_845_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_845_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_845_110
.Lleftdigit$2F1_α_845_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_845_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_845_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_845_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_845_114
                                                                              jmp   .Lleftdigit$2F1_α_845_118
.Lleftdigit$2F1_α_845_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_845_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_845_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_845_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_845_115
                                                                              jmp   .Lleftdigit$2F1_α_845_114
.Lleftdigit$2F1_α_845_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_845_117
.Lleftdigit$2F1_α_845_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_845_117
.Lleftdigit$2F1_α_845_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_845_117:
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n756_var_ref_α
                                                                              jmp   n751_var_ref_α
n750_call_prolog_β:     mov              r11, 317;                            jmp   n756_var_ref_α
                        .size            n750_call_prolog_bx, .-n750_call_prolog_bx
                        .type            n751_var_ref_bx, @function
n751_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n752_lit_integer_α
                        .size            n751_var_ref_bx, .-n751_var_ref_bx
                        .type            n752_lit_integer_bx, @function
n752_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_integer_α:     mov              r11, 319
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_848_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n753_call_prolog_α
.Lleftdigit$2F1_α_848_0:
                        .quad            5
                        .size            n752_lit_integer_bx, .-n752_lit_integer_bx
                        .type            n753_call_prolog_bx, @function
n753_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n753_call_prolog_α:     mov              r11, 320
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
                        cmp              al, 104;                             je    n755_call_prolog_α
                                                                              jmp   n754_suspend_α
n753_call_prolog_β:     mov              r11, 320;                            jmp   n755_call_prolog_α
                        .size            n753_call_prolog_bx, .-n753_call_prolog_bx
                        .type            n754_suspend_bx, @function
n754_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n754_suspend_α:         mov              r11, 321
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_851_61
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
.Lleftdigit$2F1_α_851_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n754_suspend_β:         mov              r11, 321;                            jmp   n755_call_prolog_α
                        .size            n754_suspend_bx, .-n754_suspend_bx
                        .type            n755_call_prolog_bx, @function
n755_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n755_call_prolog_α:     mov              r11, 322
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
n755_call_prolog_β:     mov              r11, 322;                            jmp   leftdigit$2F1_ω
                        .size            n755_call_prolog_bx, .-n755_call_prolog_bx
                        .type            n756_var_ref_bx, @function
n756_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n757_lit_integer_α
                        .size            n756_var_ref_bx, .-n756_var_ref_bx
                        .type            n757_lit_integer_bx, @function
n757_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_integer_α:     mov              r11, 324
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_855_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n758_lit_integer_α
.Lleftdigit$2F1_α_855_0:
                        .quad            1
                        .size            n757_lit_integer_bx, .-n757_lit_integer_bx
                        .type            n758_lit_integer_bx, @function
n758_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_integer_α:     mov              r11, 325
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_856_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n759_call_prolog_α
.Lleftdigit$2F1_α_856_0:
                        .quad            6
                        .size            n758_lit_integer_bx, .-n758_lit_integer_bx
                        .type            n759_call_prolog_bx, @function
n759_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_call_prolog_α:     mov              r11, 326
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
.Lleftdigit$2F1_α_857_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_857_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_857_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_857_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_857_110
.Lleftdigit$2F1_α_857_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_857_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_857_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_857_110
.Lleftdigit$2F1_α_857_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_857_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_857_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_857_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_857_110
.Lleftdigit$2F1_α_857_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_857_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_857_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_857_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_857_114
                                                                              jmp   .Lleftdigit$2F1_α_857_118
.Lleftdigit$2F1_α_857_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_857_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_857_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_857_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_857_115
                                                                              jmp   .Lleftdigit$2F1_α_857_114
.Lleftdigit$2F1_α_857_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_857_117
.Lleftdigit$2F1_α_857_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_857_117
.Lleftdigit$2F1_α_857_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_857_117:
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n765_var_ref_α
                                                                              jmp   n760_var_ref_α
n759_call_prolog_β:     mov              r11, 326;                            jmp   n765_var_ref_α
                        .size            n759_call_prolog_bx, .-n759_call_prolog_bx
                        .type            n760_var_ref_bx, @function
n760_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n761_lit_integer_α
                        .size            n760_var_ref_bx, .-n760_var_ref_bx
                        .type            n761_lit_integer_bx, @function
n761_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:     mov              r11, 328
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_860_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n762_call_prolog_α
.Lleftdigit$2F1_α_860_0:
                        .quad            6
                        .size            n761_lit_integer_bx, .-n761_lit_integer_bx
                        .type            n762_call_prolog_bx, @function
n762_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_call_prolog_α:     mov              r11, 329
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
                        cmp              al, 104;                             je    n764_call_prolog_α
                                                                              jmp   n763_suspend_α
n762_call_prolog_β:     mov              r11, 329;                            jmp   n764_call_prolog_α
                        .size            n762_call_prolog_bx, .-n762_call_prolog_bx
                        .type            n763_suspend_bx, @function
n763_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_suspend_α:         mov              r11, 330
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_863_61
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
.Lleftdigit$2F1_α_863_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n763_suspend_β:         mov              r11, 330;                            jmp   n764_call_prolog_α
                        .size            n763_suspend_bx, .-n763_suspend_bx
                        .type            n764_call_prolog_bx, @function
n764_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n764_call_prolog_α:     mov              r11, 331
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
n764_call_prolog_β:     mov              r11, 331;                            jmp   leftdigit$2F1_ω
                        .size            n764_call_prolog_bx, .-n764_call_prolog_bx
                        .type            n765_var_ref_bx, @function
n765_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n766_lit_integer_α
                        .size            n765_var_ref_bx, .-n765_var_ref_bx
                        .type            n766_lit_integer_bx, @function
n766_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_integer_α:     mov              r11, 333
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_867_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n767_lit_integer_α
.Lleftdigit$2F1_α_867_0:
                        .quad            1
                        .size            n766_lit_integer_bx, .-n766_lit_integer_bx
                        .type            n767_lit_integer_bx, @function
n767_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_868_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n768_call_prolog_α
.Lleftdigit$2F1_α_868_0:
                        .quad            7
                        .size            n767_lit_integer_bx, .-n767_lit_integer_bx
                        .type            n768_call_prolog_bx, @function
n768_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_call_prolog_α:     mov              r11, 335
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
.Lleftdigit$2F1_α_869_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_869_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_869_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_869_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_869_110
.Lleftdigit$2F1_α_869_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_869_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_869_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_869_110
.Lleftdigit$2F1_α_869_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_869_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_869_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_869_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_869_110
.Lleftdigit$2F1_α_869_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_869_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_869_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_869_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_869_114
                                                                              jmp   .Lleftdigit$2F1_α_869_118
.Lleftdigit$2F1_α_869_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_869_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_869_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_869_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_869_115
                                                                              jmp   .Lleftdigit$2F1_α_869_114
.Lleftdigit$2F1_α_869_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_869_117
.Lleftdigit$2F1_α_869_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_869_117
.Lleftdigit$2F1_α_869_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_869_117:
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n774_var_ref_α
                                                                              jmp   n769_var_ref_α
n768_call_prolog_β:     mov              r11, 335;                            jmp   n774_var_ref_α
                        .size            n768_call_prolog_bx, .-n768_call_prolog_bx
                        .type            n769_var_ref_bx, @function
n769_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n770_lit_integer_α
                        .size            n769_var_ref_bx, .-n769_var_ref_bx
                        .type            n770_lit_integer_bx, @function
n770_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_872_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n771_call_prolog_α
.Lleftdigit$2F1_α_872_0:
                        .quad            7
                        .size            n770_lit_integer_bx, .-n770_lit_integer_bx
                        .type            n771_call_prolog_bx, @function
n771_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_call_prolog_α:     mov              r11, 338
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
                        cmp              al, 104;                             je    n773_call_prolog_α
                                                                              jmp   n772_suspend_α
n771_call_prolog_β:     mov              r11, 338;                            jmp   n773_call_prolog_α
                        .size            n771_call_prolog_bx, .-n771_call_prolog_bx
                        .type            n772_suspend_bx, @function
n772_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_suspend_α:         mov              r11, 339
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_875_61
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
.Lleftdigit$2F1_α_875_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n772_suspend_β:         mov              r11, 339;                            jmp   n773_call_prolog_α
                        .size            n772_suspend_bx, .-n772_suspend_bx
                        .type            n773_call_prolog_bx, @function
n773_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_call_prolog_α:     mov              r11, 340
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
n773_call_prolog_β:     mov              r11, 340;                            jmp   leftdigit$2F1_ω
                        .size            n773_call_prolog_bx, .-n773_call_prolog_bx
                        .type            n774_var_ref_bx, @function
n774_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n774_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n775_lit_integer_α
                        .size            n774_var_ref_bx, .-n774_var_ref_bx
                        .type            n775_lit_integer_bx, @function
n775_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:     mov              r11, 342
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_879_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n776_lit_integer_α
.Lleftdigit$2F1_α_879_0:
                        .quad            1
                        .size            n775_lit_integer_bx, .-n775_lit_integer_bx
                        .type            n776_lit_integer_bx, @function
n776_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_880_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n777_call_prolog_α
.Lleftdigit$2F1_α_880_0:
                        .quad            8
                        .size            n776_lit_integer_bx, .-n776_lit_integer_bx
                        .type            n777_call_prolog_bx, @function
n777_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_call_prolog_α:     mov              r11, 344
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
.Lleftdigit$2F1_α_881_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_881_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_881_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_881_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_881_110
.Lleftdigit$2F1_α_881_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_881_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_881_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_881_110
.Lleftdigit$2F1_α_881_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_881_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_881_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_881_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_881_110
.Lleftdigit$2F1_α_881_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_881_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_881_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_881_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_881_114
                                                                              jmp   .Lleftdigit$2F1_α_881_118
.Lleftdigit$2F1_α_881_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_881_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_881_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_881_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_881_115
                                                                              jmp   .Lleftdigit$2F1_α_881_114
.Lleftdigit$2F1_α_881_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_881_117
.Lleftdigit$2F1_α_881_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_881_117
.Lleftdigit$2F1_α_881_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_881_117:
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n783_var_ref_α
                                                                              jmp   n778_var_ref_α
n777_call_prolog_β:     mov              r11, 344;                            jmp   n783_var_ref_α
                        .size            n777_call_prolog_bx, .-n777_call_prolog_bx
                        .type            n778_var_ref_bx, @function
n778_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n779_lit_integer_α
                        .size            n778_var_ref_bx, .-n778_var_ref_bx
                        .type            n779_lit_integer_bx, @function
n779_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_integer_α:     mov              r11, 346
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_884_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n780_call_prolog_α
.Lleftdigit$2F1_α_884_0:
                        .quad            8
                        .size            n779_lit_integer_bx, .-n779_lit_integer_bx
                        .type            n780_call_prolog_bx, @function
n780_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_prolog_α:     mov              r11, 347
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
                        cmp              al, 104;                             je    n782_call_prolog_α
                                                                              jmp   n781_suspend_α
n780_call_prolog_β:     mov              r11, 347;                            jmp   n782_call_prolog_α
                        .size            n780_call_prolog_bx, .-n780_call_prolog_bx
                        .type            n781_suspend_bx, @function
n781_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_suspend_α:         mov              r11, 348
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_887_61
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
.Lleftdigit$2F1_α_887_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n781_suspend_β:         mov              r11, 348;                            jmp   n782_call_prolog_α
                        .size            n781_suspend_bx, .-n781_suspend_bx
                        .type            n782_call_prolog_bx, @function
n782_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_call_prolog_α:     mov              r11, 349
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
n782_call_prolog_β:     mov              r11, 349;                            jmp   leftdigit$2F1_ω
                        .size            n782_call_prolog_bx, .-n782_call_prolog_bx
                        .type            n783_var_ref_bx, @function
n783_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n784_lit_integer_α
                        .size            n783_var_ref_bx, .-n783_var_ref_bx
                        .type            n784_lit_integer_bx, @function
n784_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:     mov              r11, 351
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_891_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n785_lit_integer_α
.Lleftdigit$2F1_α_891_0:
                        .quad            1
                        .size            n784_lit_integer_bx, .-n784_lit_integer_bx
                        .type            n785_lit_integer_bx, @function
n785_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_integer_α:     mov              r11, 352
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_892_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n786_call_prolog_α
.Lleftdigit$2F1_α_892_0:
                        .quad            9
                        .size            n785_lit_integer_bx, .-n785_lit_integer_bx
                        .type            n786_call_prolog_bx, @function
n786_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_call_prolog_α:     mov              r11, 353
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
.Lleftdigit$2F1_α_893_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lleftdigit$2F1_α_893_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_893_111
                        cmp              esi, 1;                              jne   .Lleftdigit$2F1_α_893_112
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_893_110
.Lleftdigit$2F1_α_893_112:
                        cmp              esi, 2;                              jne   .Lleftdigit$2F1_α_893_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_893_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_893_110
.Lleftdigit$2F1_α_893_113:
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_893_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_893_111
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_893_111
                        mov              r8, rax;                             jmp   .Lleftdigit$2F1_α_893_110
.Lleftdigit$2F1_α_893_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lleftdigit$2F1_α_893_114
                        cmp              al, 104;                             je    .Lleftdigit$2F1_α_893_114
                        cmp              al, 72;                              jne   .Lleftdigit$2F1_α_893_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lleftdigit$2F1_α_893_114
                                                                              jmp   .Lleftdigit$2F1_α_893_118
.Lleftdigit$2F1_α_893_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lleftdigit$2F1_α_893_115
                        cmp              al, 3;                               jne   .Lleftdigit$2F1_α_893_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lleftdigit$2F1_α_893_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lleftdigit$2F1_α_893_115
                                                                              jmp   .Lleftdigit$2F1_α_893_114
.Lleftdigit$2F1_α_893_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lleftdigit$2F1_α_893_117
.Lleftdigit$2F1_α_893_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lleftdigit$2F1_α_893_117
.Lleftdigit$2F1_α_893_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lleftdigit$2F1_α_893_117:
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n791_call_prolog_α
                                                                              jmp   n787_var_ref_α
n786_call_prolog_β:     mov              r11, 353;                            jmp   n791_call_prolog_α
                        .size            n786_call_prolog_bx, .-n786_call_prolog_bx
                        .type            n787_var_ref_bx, @function
n787_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n788_lit_integer_α
                        .size            n787_var_ref_bx, .-n787_var_ref_bx
                        .type            n788_lit_integer_bx, @function
n788_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_integer_α:     mov              r11, 355
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lleftdigit$2F1_α_896_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n789_call_prolog_α
.Lleftdigit$2F1_α_896_0:
                        .quad            9
                        .size            n788_lit_integer_bx, .-n788_lit_integer_bx
                        .type            n789_call_prolog_bx, @function
n789_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_call_prolog_α:     mov              r11, 356
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
                        cmp              al, 104;                             je    n791_call_prolog_α
                                                                              jmp   n790_suspend_α
n789_call_prolog_β:     mov              r11, 356;                            jmp   n791_call_prolog_α
                        .size            n789_call_prolog_bx, .-n789_call_prolog_bx
                        .type            n790_suspend_bx, @function
n790_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_suspend_α:         mov              r11, 357
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lleftdigit$2F1_α_899_61
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
.Lleftdigit$2F1_α_899_61:
                        mov              rdi, qword ptr [rsp + 32]
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
n790_suspend_β:         mov              r11, 357;                            jmp   n791_call_prolog_α
                        .size            n790_suspend_bx, .-n790_suspend_bx
                        .type            n791_call_prolog_bx, @function
n791_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_call_prolog_α:     mov              r11, 358
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
n791_call_prolog_β:     mov              r11, 358;                            jmp   leftdigit$2F1_ω
                        .size            n791_call_prolog_bx, .-n791_call_prolog_bx
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
                        test             r12, r12;                            je    .Lleftdigit$2F1_α_900_50
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
.Lleftdigit$2F1_α_900_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2264]
                        add              rsp, 2288;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2272]
                        add              rsp, 2288;                           jmp   rcx
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
                        .type            n901_call_prolog_bx, @function
n901_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n901_call_prolog_α:     mov              r11, 359
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lmain_α_944_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lmain_α_944_101
.Lmain_α_944_102:       lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lmain_α_944_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lmain_α_944_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lmain_α_944_101
.Lmain_α_944_100:       lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_944_101:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n902_var_ref_α
n901_call_prolog_β:     mov              r11, 359;                            jmp   main_ω
                        .size            n901_call_prolog_bx, .-n901_call_prolog_bx
                        .type            n902_var_ref_bx, @function
n902_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n902_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n903_var_ref_α
                        .size            n902_var_ref_bx, .-n902_var_ref_bx
                        .type            n903_var_ref_bx, @function
n903_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n903_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n904_var_ref_α
                        .size            n903_var_ref_bx, .-n903_var_ref_bx
                        .type            n904_var_ref_bx, @function
n904_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n905_var_ref_α
                        .size            n904_var_ref_bx, .-n904_var_ref_bx
                        .type            n905_var_ref_bx, @function
n905_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n906_var_ref_α
                        .size            n905_var_ref_bx, .-n905_var_ref_bx
                        .type            n906_var_ref_bx, @function
n906_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n907_var_ref_α
                        .size            n906_var_ref_bx, .-n906_var_ref_bx
                        .type            n907_var_ref_bx, @function
n907_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n908_var_ref_α
                        .size            n907_var_ref_bx, .-n907_var_ref_bx
                        .type            n908_var_ref_bx, @function
n908_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_var_ref_α:         mov              r11, 366
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n909_var_ref_α
                        .size            n908_var_ref_bx, .-n908_var_ref_bx
                        .type            n909_var_ref_bx, @function
n909_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n910_call_proc_staged_α
                        .size            n909_var_ref_bx, .-n909_var_ref_bx
                        .type            n910_call_proc_staged_bx, @function
n910_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n910_call_proc_staged_α:
                        mov              r11, 368
                        mov              qword ptr [rsp + 1280], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_200
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_962_201
.Lmain_α_962_200:       mov              edi, 0
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
.Lmain_α_962_201:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_202
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_962_203
.Lmain_α_962_202:       mov              edi, 1
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
.Lmain_α_962_203:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_204
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lmain_α_962_205
.Lmain_α_962_204:       mov              edi, 2
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
.Lmain_α_962_205:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_206
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lmain_α_962_207
.Lmain_α_962_206:       mov              edi, 3
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
.Lmain_α_962_207:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_208
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lmain_α_962_209
.Lmain_α_962_208:       mov              edi, 4
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
.Lmain_α_962_209:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_210
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lmain_α_962_211
.Lmain_α_962_210:       mov              edi, 5
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
.Lmain_α_962_211:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_212
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lmain_α_962_213
.Lmain_α_962_212:       mov              edi, 6
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
.Lmain_α_962_213:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_962_214
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lmain_α_962_215
.Lmain_α_962_214:       mov              edi, 7
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
.Lmain_α_962_215:       sub              rsp, 8
                        lea              rax, [rip + .Lmain_α_962_7]          # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lmain_α_962_1
                        lea              rcx, [rip + .Lmain_α_962_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_962_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_962_4];         jmp   rax
.Lmain_α_962_3:         add              rsp, 16
                        mov              qword ptr [rsp + 1288], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lmain_α_962_5
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_962_2
.Lmain_α_962_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_962_2
.Lmain_α_962_4:         add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lmain_α_962_6
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_962_2
.Lmain_α_962_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_962_2
.Lmain_α_962_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_962_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_962_29
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
.Lmain_α_962_29:        mov              qword ptr [rsp + 1136], rax
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lmain_α_962_7]
                        push             r8
                        lea              rcx, [rip + .Lmain_α_962_4]          # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_962_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_962_4];         jmp   rax
.Lmain_α_962_7:         add              rsp, 16
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n937_lit_string_α
                                                                              jmp   n911_lit_string_α
.Lmain_β_962_0:         .quad            .Lmain_β_962_0_s
.Lmain_β_962_0_s:       .string          "solve/8"
                        .size            n910_call_proc_staged_bx, .-n910_call_proc_staged_bx
                        .type            n911_lit_string_bx, @function
n911_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lmain_α_963_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n912_var_ref_α
.Lmain_α_963_0:         .quad            .Lmain_α_963_0_s
.Lmain_α_963_0_s:       .string          "."
                        .size            n911_lit_string_bx, .-n911_lit_string_bx
                        .type            n912_var_ref_bx, @function
n912_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n912_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n913_lit_string_α
                        .size            n912_var_ref_bx, .-n912_var_ref_bx
                        .type            n913_lit_string_bx, @function
n913_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lmain_α_966_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n914_var_ref_α
.Lmain_α_966_0:         .quad            .Lmain_α_966_0_s
.Lmain_α_966_0_s:       .string          "."
                        .size            n913_lit_string_bx, .-n913_lit_string_bx
                        .type            n914_var_ref_bx, @function
n914_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n914_var_ref_α:         mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n915_lit_string_α
                        .size            n914_var_ref_bx, .-n914_var_ref_bx
                        .type            n915_lit_string_bx, @function
n915_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lmain_α_969_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n916_var_ref_α
.Lmain_α_969_0:         .quad            .Lmain_α_969_0_s
.Lmain_α_969_0_s:       .string          "."
                        .size            n915_lit_string_bx, .-n915_lit_string_bx
                        .type            n916_var_ref_bx, @function
n916_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n916_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n917_lit_string_α
                        .size            n916_var_ref_bx, .-n916_var_ref_bx
                        .type            n917_lit_string_bx, @function
n917_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lmain_α_972_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n918_var_ref_α
.Lmain_α_972_0:         .quad            .Lmain_α_972_0_s
.Lmain_α_972_0_s:       .string          "."
                        .size            n917_lit_string_bx, .-n917_lit_string_bx
                        .type            n918_var_ref_bx, @function
n918_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n919_lit_string_α
                        .size            n918_var_ref_bx, .-n918_var_ref_bx
                        .type            n919_lit_string_bx, @function
n919_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lmain_α_975_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n920_var_ref_α
.Lmain_α_975_0:         .quad            .Lmain_α_975_0_s
.Lmain_α_975_0_s:       .string          "."
                        .size            n919_lit_string_bx, .-n919_lit_string_bx
                        .type            n920_var_ref_bx, @function
n920_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n921_lit_string_α
                        .size            n920_var_ref_bx, .-n920_var_ref_bx
                        .type            n921_lit_string_bx, @function
n921_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lmain_α_978_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n922_var_ref_α
.Lmain_α_978_0:         .quad            .Lmain_α_978_0_s
.Lmain_α_978_0_s:       .string          "."
                        .size            n921_lit_string_bx, .-n921_lit_string_bx
                        .type            n922_var_ref_bx, @function
n922_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n923_lit_string_α
                        .size            n922_var_ref_bx, .-n922_var_ref_bx
                        .type            n923_lit_string_bx, @function
n923_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lmain_α_981_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n924_var_ref_α
.Lmain_α_981_0:         .quad            .Lmain_α_981_0_s
.Lmain_α_981_0_s:       .string          "."
                        .size            n923_lit_string_bx, .-n923_lit_string_bx
                        .type            n924_var_ref_bx, @function
n924_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n925_lit_string_α
                        .size            n924_var_ref_bx, .-n924_var_ref_bx
                        .type            n925_lit_string_bx, @function
n925_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lmain_α_984_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n926_var_ref_α
.Lmain_α_984_0:         .quad            .Lmain_α_984_0_s
.Lmain_α_984_0_s:       .string          "."
                        .size            n925_lit_string_bx, .-n925_lit_string_bx
                        .type            n926_var_ref_bx, @function
n926_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n926_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n927_lit_string_α
                        .size            n926_var_ref_bx, .-n926_var_ref_bx
                        .type            n927_lit_string_bx, @function
n927_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lmain_α_987_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n928_call_prolog_α
.Lmain_α_987_0:         .quad            .Lmain_α_987_0_s
.Lmain_α_987_0_s:       .string          "[]"
                        .size            n927_lit_string_bx, .-n927_lit_string_bx
                        .type            n928_call_prolog_bx, @function
n928_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n928_call_prolog_α:     mov              r11, 386
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
                                                                              jmp   n929_call_prolog_α
n928_call_prolog_β:     mov              r11, 386;                            jmp   main_ω
                        .size            n928_call_prolog_bx, .-n928_call_prolog_bx
                        .type            n929_call_prolog_bx, @function
n929_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n929_call_prolog_α:     mov              r11, 387
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
                                                                              jmp   n930_call_prolog_α
n929_call_prolog_β:     mov              r11, 387;                            jmp   main_ω
                        .size            n929_call_prolog_bx, .-n929_call_prolog_bx
                        .type            n930_call_prolog_bx, @function
n930_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n930_call_prolog_α:     mov              r11, 388
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
                                                                              jmp   n931_call_prolog_α
n930_call_prolog_β:     mov              r11, 388;                            jmp   main_ω
                        .size            n930_call_prolog_bx, .-n930_call_prolog_bx
                        .type            n931_call_prolog_bx, @function
n931_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n931_call_prolog_α:     mov              r11, 389
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
                                                                              jmp   n932_call_prolog_α
n931_call_prolog_β:     mov              r11, 389;                            jmp   main_ω
                        .size            n931_call_prolog_bx, .-n931_call_prolog_bx
                        .type            n932_call_prolog_bx, @function
n932_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n932_call_prolog_α:     mov              r11, 390
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
                                                                              jmp   n933_call_prolog_α
n932_call_prolog_β:     mov              r11, 390;                            jmp   main_ω
                        .size            n932_call_prolog_bx, .-n932_call_prolog_bx
                        .type            n933_call_prolog_bx, @function
n933_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n933_call_prolog_α:     mov              r11, 391
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
                                                                              jmp   n934_call_prolog_α
n933_call_prolog_β:     mov              r11, 391;                            jmp   main_ω
                        .size            n933_call_prolog_bx, .-n933_call_prolog_bx
                        .type            n934_call_prolog_bx, @function
n934_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n934_call_prolog_α:     mov              r11, 392
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
                                                                              jmp   n935_call_prolog_α
n934_call_prolog_β:     mov              r11, 392;                            jmp   main_ω
                        .size            n934_call_prolog_bx, .-n934_call_prolog_bx
                        .type            n935_call_prolog_bx, @function
n935_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n935_call_prolog_α:     mov              r11, 393
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
                        cmp              al, 104;                             je    n943_call_prolog_α
                                                                              jmp   n936_call_prolog_α
n935_call_prolog_β:     mov              r11, 393;                            jmp   n943_call_prolog_α
                        .size            n935_call_prolog_bx, .-n935_call_prolog_bx
                        .type            n936_call_prolog_bx, @function
n936_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n936_call_prolog_α:     mov              r11, 394
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
                        cmp              al, 104;                             je    n943_call_prolog_α
                                                                              jmp   n939_lit_string_α
n936_call_prolog_β:     mov              r11, 394;                            jmp   n943_call_prolog_α
                        .size            n936_call_prolog_bx, .-n936_call_prolog_bx
                        .type            n937_lit_string_bx, @function
n937_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_string_α:      mov              r11, 395
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 4
                        mov              rax, qword ptr [rip + .Lmain_α_998_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n938_call_prolog_α
.Lmain_α_998_0:         .quad            .Lmain_α_998_0_s
.Lmain_α_998_0_s:       .string          "none"
                        .size            n937_lit_string_bx, .-n937_lit_string_bx
                        .type            n938_call_prolog_bx, @function
n938_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n938_call_prolog_α:     mov              r11, 396
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
                        cmp              al, 104;                             je    n943_call_prolog_α
                                                                              jmp   n939_lit_string_α
n938_call_prolog_β:     mov              r11, 396;                            jmp   n943_call_prolog_α
                        .size            n938_call_prolog_bx, .-n938_call_prolog_bx
                        .type            n939_lit_string_bx, @function
n939_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n939_lit_string_α:      mov              r11, 397
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lmain_α_1001_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n940_call_prolog_α
.Lmain_α_1001_0:        .quad            .Lmain_α_1001_0_s
.Lmain_α_1001_0_s:      .string          ""
                        .size            n939_lit_string_bx, .-n939_lit_string_bx
                        .type            n940_call_prolog_bx, @function
n940_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n940_call_prolog_α:     mov              r11, 398
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
                        cmp              al, 104;                             je    n943_call_prolog_α
                                                                              jmp   n941_move_label_α
n940_call_prolog_β:     mov              r11, 398;                            jmp   n943_call_prolog_α
                        .size            n940_call_prolog_bx, .-n940_call_prolog_bx
                        .type            n941_move_label_bx, @function
n941_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n941_move_label_α:      mov              r11, 399
                        lea              rax, [rip + n943_call_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
                        .size            n941_move_label_bx, .-n941_move_label_bx
                        .type            n942_disjunction_bx, @function
n942_disjunction_bx:
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
                        .size            n942_disjunction_bx, .-n942_disjunction_bx
                        .type            n943_call_prolog_bx, @function
n943_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n943_call_prolog_α:     mov              r11, 401
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
n943_call_prolog_β:     mov              r11, 401;                            jmp   main_ω
                        .size            n943_call_prolog_bx, .-n943_call_prolog_bx
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
