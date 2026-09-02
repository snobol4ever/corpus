                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sumdigit$2F5:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1312
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sumdigit$2F5_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_43_102
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104];          jmp   .Lcall_prolog_α_43_101
.Lcall_prolog_α_43_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_43_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_43_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_43_101
.Lcall_prolog_α_43_100: lea              rdi, [rbp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_43_101: mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   sumdigit$2F5_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lcall_prolog_α_48_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_48_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_48_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_48_40
.Lcall_prolog_α_48_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_48_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_48_40
.Lcall_prolog_α_48_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_48_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_48_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_48_40
.Lcall_prolog_α_48_41:  lea              r9, [rbp + 1264]
.Lcall_prolog_α_48_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_48_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_48_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_48_42
.Lcall_prolog_α_48_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_48_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_48_42
.Lcall_prolog_α_48_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_48_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_48_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_48_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_48_42
.Lcall_prolog_α_48_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_48_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_48_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_48_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_48_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_48_44
                                                                              jmp   .Lcall_prolog_α_48_45
.Lcall_prolog_α_48_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_48_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_48_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_48_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_48_53
                                                                              jmp   .Lcall_prolog_α_48_46
.Lcall_prolog_α_48_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_48_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_48_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_48_51
.Lcall_prolog_α_48_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_48_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_48_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_48_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_48_47
                                                                              jmp   .Lcall_prolog_α_48_48
.Lcall_prolog_α_48_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_48_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_48_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_48_51
.Lcall_prolog_α_48_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_48_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_48_53
                                                                              jmp   .Lcall_prolog_α_48_52
.Lcall_prolog_α_48_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_48_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_48_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_48_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_48_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_48_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_48_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_48_51
                                                                              jmp   .Lcall_prolog_α_48_52
.Lcall_prolog_α_48_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_48_53
.Lcall_prolog_α_48_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_48_54
.Lcall_prolog_α_48_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_48_54
.Lcall_prolog_α_48_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_48_54:  mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n42_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n5_var_ref_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n6_call_prolog_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_call_prolog_bx, @function
n6_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_prolog_α:       mov              r11, 7
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lcall_prolog_α_53_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_53_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_53_40
.Lcall_prolog_α_53_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_53_40
.Lcall_prolog_α_53_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_53_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_53_40
.Lcall_prolog_α_53_41:  lea              r9, [rbp + 1184]
.Lcall_prolog_α_53_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_53_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_53_42
.Lcall_prolog_α_53_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_53_42
.Lcall_prolog_α_53_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_53_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_53_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_53_42
.Lcall_prolog_α_53_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_53_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_53_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_53_44
                                                                              jmp   .Lcall_prolog_α_53_45
.Lcall_prolog_α_53_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_53_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_53_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_53_53
                                                                              jmp   .Lcall_prolog_α_53_46
.Lcall_prolog_α_53_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_53_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_53_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_53_51
.Lcall_prolog_α_53_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_53_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_53_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_53_47
                                                                              jmp   .Lcall_prolog_α_53_48
.Lcall_prolog_α_53_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_53_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_53_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_53_51
.Lcall_prolog_α_53_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_53_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_53_53
                                                                              jmp   .Lcall_prolog_α_53_52
.Lcall_prolog_α_53_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_53_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_53_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_53_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_53_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_53_51
                                                                              jmp   .Lcall_prolog_α_53_52
.Lcall_prolog_α_53_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_53_53
.Lcall_prolog_α_53_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_53_54
.Lcall_prolog_α_53_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_53_54
.Lcall_prolog_α_53_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_53_54:  mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n42_call_prolog_α
                        .size            n6_call_prolog_bx, .-n6_call_prolog_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n8_var_ref_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n9_call_prolog_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_call_prolog_bx, @function
n9_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_prolog_α:       mov              r11, 10
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lcall_prolog_α_58_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_58_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_58_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_58_40
.Lcall_prolog_α_58_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_58_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_58_40
.Lcall_prolog_α_58_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_58_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_58_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_58_40
.Lcall_prolog_α_58_41:  lea              r9, [rbp + 1104]
.Lcall_prolog_α_58_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_58_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_58_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_58_42
.Lcall_prolog_α_58_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_58_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_58_42
.Lcall_prolog_α_58_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_58_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_58_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_58_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_58_42
.Lcall_prolog_α_58_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_58_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_58_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_58_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_58_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_58_44
                                                                              jmp   .Lcall_prolog_α_58_45
.Lcall_prolog_α_58_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_58_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_58_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_58_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_58_53
                                                                              jmp   .Lcall_prolog_α_58_46
.Lcall_prolog_α_58_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_58_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_58_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_58_51
.Lcall_prolog_α_58_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_58_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_58_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_58_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_58_47
                                                                              jmp   .Lcall_prolog_α_58_48
.Lcall_prolog_α_58_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_58_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_58_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_58_51
.Lcall_prolog_α_58_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_58_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_58_53
                                                                              jmp   .Lcall_prolog_α_58_52
.Lcall_prolog_α_58_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_58_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_58_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_58_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_58_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_58_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_58_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_58_51
                                                                              jmp   .Lcall_prolog_α_58_52
.Lcall_prolog_α_58_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_58_53
.Lcall_prolog_α_58_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_58_54
.Lcall_prolog_α_58_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_58_54
.Lcall_prolog_α_58_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_58_54:  mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n10_var_ref_α
n9_call_prolog_β:       mov              r11, 10;                             jmp   n42_call_prolog_α
                        .size            n9_call_prolog_bx, .-n9_call_prolog_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n12_call_prolog_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
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
.Lcall_prolog_α_63_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_63_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_63_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_63_40
.Lcall_prolog_α_63_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_63_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_63_40
.Lcall_prolog_α_63_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_63_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_63_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_63_40
.Lcall_prolog_α_63_41:  lea              r9, [rbp + 1024]
.Lcall_prolog_α_63_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_63_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_63_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_63_42
.Lcall_prolog_α_63_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_63_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_63_42
.Lcall_prolog_α_63_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_63_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_63_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_63_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_63_42
.Lcall_prolog_α_63_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_63_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_63_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_63_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_63_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_63_44
                                                                              jmp   .Lcall_prolog_α_63_45
.Lcall_prolog_α_63_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_63_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_63_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_63_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_63_53
                                                                              jmp   .Lcall_prolog_α_63_46
.Lcall_prolog_α_63_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_63_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_63_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_63_51
.Lcall_prolog_α_63_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_63_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_63_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_63_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_63_47
                                                                              jmp   .Lcall_prolog_α_63_48
.Lcall_prolog_α_63_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_63_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_63_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_63_51
.Lcall_prolog_α_63_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_63_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_63_53
                                                                              jmp   .Lcall_prolog_α_63_52
.Lcall_prolog_α_63_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_63_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_63_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_63_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_63_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_63_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_63_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_63_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_63_51
                                                                              jmp   .Lcall_prolog_α_63_52
.Lcall_prolog_α_63_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_63_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_63_53
.Lcall_prolog_α_63_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_63_54
.Lcall_prolog_α_63_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_63_54
.Lcall_prolog_α_63_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_63_54:  mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n13_var_ref_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   n42_call_prolog_α
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n14_var_ref_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n15_call_prolog_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
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
.Lcall_prolog_α_68_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_68_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_68_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_40
.Lcall_prolog_α_68_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_68_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_40
.Lcall_prolog_α_68_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_68_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_68_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_68_40
.Lcall_prolog_α_68_41:  lea              r9, [rbp + 944]
.Lcall_prolog_α_68_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_68_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_68_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_68_42
.Lcall_prolog_α_68_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_68_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_68_42
.Lcall_prolog_α_68_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_68_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_68_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_68_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_68_42
.Lcall_prolog_α_68_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_68_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_68_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_68_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_68_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_68_44
                                                                              jmp   .Lcall_prolog_α_68_45
.Lcall_prolog_α_68_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_68_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_68_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_68_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_68_53
                                                                              jmp   .Lcall_prolog_α_68_46
.Lcall_prolog_α_68_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_68_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_68_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_68_51
.Lcall_prolog_α_68_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_68_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_68_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_68_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_68_47
                                                                              jmp   .Lcall_prolog_α_68_48
.Lcall_prolog_α_68_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_68_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_68_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_68_51
.Lcall_prolog_α_68_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_68_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_68_53
                                                                              jmp   .Lcall_prolog_α_68_52
.Lcall_prolog_α_68_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_68_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_68_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_68_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_68_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_68_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_68_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_68_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_68_51
                                                                              jmp   .Lcall_prolog_α_68_52
.Lcall_prolog_α_68_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_68_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_68_53
.Lcall_prolog_α_68_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_68_54
.Lcall_prolog_α_68_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_68_54
.Lcall_prolog_α_68_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_68_54:  mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n42_call_prolog_α
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n17_var_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 872], rax;          jmp   n18_var_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 888], rax;          jmp   n19_call_prolog_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n20_var_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n42_call_prolog_α
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 904], rax;          jmp   n21_call_prolog_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n22_call_prolog_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n42_call_prolog_α
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_call_prolog_bx, @function
n22_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_prolog_α:      mov              r11, 23
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n23_var_α
n22_call_prolog_β:      mov              r11, 23;                             jmp   n42_call_prolog_α
                        .size            n22_call_prolog_bx, .-n22_call_prolog_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 648], rax;          jmp   n24_lit_integer_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_82_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n25_call_prolog_α
.Llit_integer_α_82_0:   .quad            10
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_call_prolog_bx, @function
n25_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_prolog_α:      mov              r11, 26
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n32_call_prolog_α
                                                                              jmp   n26_var_ref_α
n25_call_prolog_β:      mov              r11, 26;                             jmp   n32_call_prolog_α
                        .size            n25_call_prolog_bx, .-n25_call_prolog_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n28_call_prolog_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_prolog_bx, @function
n28_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
.Lcall_prolog_α_88_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_88_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_88_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_88_40
.Lcall_prolog_α_88_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_88_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_88_40
.Lcall_prolog_α_88_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_88_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_88_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_88_40
.Lcall_prolog_α_88_41:  lea              r9, [rbp + 288]
.Lcall_prolog_α_88_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_88_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_88_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_88_42
.Lcall_prolog_α_88_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_88_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_88_42
.Lcall_prolog_α_88_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_88_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_88_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_88_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_88_42
.Lcall_prolog_α_88_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_88_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_88_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_88_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_88_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_88_44
                                                                              jmp   .Lcall_prolog_α_88_45
.Lcall_prolog_α_88_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_88_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_88_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_88_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_88_53
                                                                              jmp   .Lcall_prolog_α_88_46
.Lcall_prolog_α_88_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_88_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_88_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_88_51
.Lcall_prolog_α_88_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_88_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_88_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_88_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_88_47
                                                                              jmp   .Lcall_prolog_α_88_48
.Lcall_prolog_α_88_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_88_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_88_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_88_51
.Lcall_prolog_α_88_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_88_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_88_53
                                                                              jmp   .Lcall_prolog_α_88_52
.Lcall_prolog_α_88_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_88_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_88_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_88_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_88_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_88_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_88_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_88_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_88_51
                                                                              jmp   .Lcall_prolog_α_88_52
.Lcall_prolog_α_88_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_88_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_88_53
.Lcall_prolog_α_88_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_88_54
.Lcall_prolog_α_88_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_88_54
.Lcall_prolog_α_88_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_88_54:  mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n29_var_ref_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n42_call_prolog_α
                        .size            n28_call_prolog_bx, .-n28_call_prolog_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n30_lit_integer_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_91_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n31_call_prolog_α
.Llit_integer_α_91_0:   .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_prolog_bx, @function
n31_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_prolog_α:      mov              r11, 32
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n41_suspend_α
n31_call_prolog_β:      mov              r11, 32;                             jmp   n42_call_prolog_α
                        .size            n31_call_prolog_bx, .-n31_call_prolog_bx
                        .type            n32_call_prolog_bx, @function
n32_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_prolog_α:      mov              r11, 33
                        .section         .rodata
.Lcall_prolog_α_rkfn94: .string          "$no_throw_or_fail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn94]
                        lea              rsi, [rbp + 592]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 1114112
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n33_var_ref_α
n32_call_prolog_β:      mov              r11, 33;                             jmp   n42_call_prolog_α
                        .size            n32_call_prolog_bx, .-n32_call_prolog_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n34_var_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 552], rax;          jmp   n35_lit_integer_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_99_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n36_call_prolog_α
.Llit_integer_α_99_0:   .quad            10
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_call_prolog_bx, @function
n36_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_prolog_α:      mov              r11, 37
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n37_call_prolog_α
n36_call_prolog_β:      mov              r11, 37;                             jmp   n42_call_prolog_α
                        .size            n36_call_prolog_bx, .-n36_call_prolog_bx
                        .type            n37_call_prolog_bx, @function
n37_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_prolog_α:      mov              r11, 38
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n38_var_ref_α
n37_call_prolog_β:      mov              r11, 38;                             jmp   n42_call_prolog_α
                        .size            n37_call_prolog_bx, .-n37_call_prolog_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n39_lit_integer_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_104_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n40_call_prolog_α
.Llit_integer_α_104_0:  .quad            1
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n42_call_prolog_α
                                                                              jmp   n41_suspend_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n42_call_prolog_α
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_suspend_bx, @function
n41_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_suspend_α:          mov              r11, 42
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_107_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1312];         jmp   rax
.Lsuspend_α_107_61:     mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        lea              rdx, [rip + n41_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax;            jmp   sumdigit$2F5_γ
n41_suspend_β:          mov              r11, 42;                             jmp   n42_call_prolog_α
                        .size            n41_suspend_bx, .-n41_suspend_bx
                        .type            n42_call_prolog_bx, @function
n42_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_prolog_α:      mov              r11, 43
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_ω
                                                                              jmp   sumdigit$2F5_ω
n42_call_prolog_β:      mov              r11, 43;                             jmp   sumdigit$2F5_ω
                        .size            n42_call_prolog_bx, .-n42_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_β:
                                                                              jmp   n41_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lsumdigit$2F5_α_108_50
                        mov              qword ptr [rsp + 1312], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1312];         jmp   rax
.Lsumdigit$2F5_α_108_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              rbp, qword ptr [rbp + 1464]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ω:
                        mov              rcx, qword ptr [rsp + 1456]
                        mov              rbp, qword ptr [rbp + 1464]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__digit$2F1:
                        sub              rsp, 2528
                        mov              qword ptr [rsp + 2504], rcx
                        mov              qword ptr [rsp + 2512], rdx
                        mov              qword ptr [rsp + 2520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2464
                        mov              edx, 2496
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
digit$2F1_α_body:
                        lea              rax, [rip + n117_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 44
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_200_102
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_200_101
.Lcall_prolog_α_200_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_200_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_200_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_200_101
.Lcall_prolog_α_200_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_200_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n110_var_ref_α
n109_call_prolog_β:     mov              r11, 44;                             jmp   digit$2F1_ω
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n111_lit_integer_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     mov              r11, 46
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n112_lit_integer_α
.Llit_integer_α_203_0:  .quad            1
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              r11, 47
                        mov              qword ptr [rbp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n113_call_prolog_α
.Llit_integer_α_204_0:  .quad            0
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_call_prolog_bx, @function
n113_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_prolog_α:     mov              r11, 48
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        lea              r8, [rbp + 2368]
.Lcall_prolog_α_205_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_205_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_205_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_205_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_205_110
.Lcall_prolog_α_205_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_205_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_205_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_205_110
.Lcall_prolog_α_205_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_205_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_205_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_205_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_205_110
.Lcall_prolog_α_205_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_205_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_205_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_205_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_205_114
                                                                              jmp   .Lcall_prolog_α_205_118
.Lcall_prolog_α_205_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_205_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_205_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_205_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_205_115
                                                                              jmp   .Lcall_prolog_α_205_114
.Lcall_prolog_α_205_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_205_117
.Lcall_prolog_α_205_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_205_117
.Lcall_prolog_α_205_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_205_117:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    n119_var_ref_α
                                                                              jmp   n114_var_ref_α
n113_call_prolog_β:     mov              r11, 48;                             jmp   n119_var_ref_α
                        .size            n113_call_prolog_bx, .-n113_call_prolog_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n115_lit_integer_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     mov              r11, 50
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_208_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n116_call_prolog_α
.Llit_integer_α_208_0:  .quad            0
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_call_prolog_bx, @function
n116_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_prolog_α:     mov              r11, 51
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    n118_call_prolog_α
                                                                              jmp   n117_suspend_α
n116_call_prolog_β:     mov              r11, 51;                             jmp   n118_call_prolog_α
                        .size            n116_call_prolog_bx, .-n116_call_prolog_bx
                        .type            n117_suspend_bx, @function
n117_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_suspend_α:         mov              r11, 52
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_211_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_211_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n117_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n117_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n117_suspend_β:         mov              r11, 52;                             jmp   n118_call_prolog_α
                        .size            n117_suspend_bx, .-n117_suspend_bx
                        .type            n118_call_prolog_bx, @function
n118_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_prolog_α:     mov              r11, 53
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n119_var_ref_α
n118_call_prolog_β:     mov              r11, 53;                             jmp   digit$2F1_ω
                        .size            n118_call_prolog_bx, .-n118_call_prolog_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n120_lit_integer_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_lit_integer_bx, @function
n120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 55
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n121_lit_integer_α
.Llit_integer_α_215_0:  .quad            1
                        .size            n120_lit_integer_bx, .-n120_lit_integer_bx
                        .type            n121_lit_integer_bx, @function
n121_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              r11, 56
                        mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n122_call_prolog_α
.Llit_integer_α_216_0:  .quad            1
                        .size            n121_lit_integer_bx, .-n121_lit_integer_bx
                        .type            n122_call_prolog_bx, @function
n122_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        lea              r8, [rbp + 2128]
.Lcall_prolog_α_217_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_217_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_217_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_217_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_217_110
.Lcall_prolog_α_217_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_217_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_217_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_217_110
.Lcall_prolog_α_217_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_217_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_217_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_217_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_217_110
.Lcall_prolog_α_217_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_217_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_217_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_217_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_217_114
                                                                              jmp   .Lcall_prolog_α_217_118
.Lcall_prolog_α_217_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_217_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_217_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_217_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_217_115
                                                                              jmp   .Lcall_prolog_α_217_114
.Lcall_prolog_α_217_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_217_117
.Lcall_prolog_α_217_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_217_117
.Lcall_prolog_α_217_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_217_117:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              al, 104;                             je    n128_var_ref_α
                                                                              jmp   n123_var_ref_α
n122_call_prolog_β:     mov              r11, 57;                             jmp   n128_var_ref_α
                        .size            n122_call_prolog_bx, .-n122_call_prolog_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n124_lit_integer_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n125_call_prolog_α
.Llit_integer_α_220_0:  .quad            1
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_prolog_bx, @function
n125_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    n127_call_prolog_α
                                                                              jmp   n126_suspend_α
n125_call_prolog_β:     mov              r11, 60;                             jmp   n127_call_prolog_α
                        .size            n125_call_prolog_bx, .-n125_call_prolog_bx
                        .type            n126_suspend_bx, @function
n126_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_suspend_α:         mov              r11, 61
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_223_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_223_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n126_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n126_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n126_suspend_β:         mov              r11, 61;                             jmp   n127_call_prolog_α
                        .size            n126_suspend_bx, .-n126_suspend_bx
                        .type            n127_call_prolog_bx, @function
n127_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_prolog_α:     mov              r11, 62
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n128_var_ref_α
n127_call_prolog_β:     mov              r11, 62;                             jmp   digit$2F1_ω
                        .size            n127_call_prolog_bx, .-n127_call_prolog_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n129_lit_integer_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     mov              r11, 64
                        mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n130_lit_integer_α
.Llit_integer_α_227_0:  .quad            1
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n131_call_prolog_α
.Llit_integer_α_228_0:  .quad            2
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_prolog_bx, @function
n131_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_prolog_α:     mov              r11, 66
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lcall_prolog_α_229_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_229_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_229_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_110
.Lcall_prolog_α_229_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_229_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_110
.Lcall_prolog_α_229_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_229_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_229_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_229_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_229_110
.Lcall_prolog_α_229_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_229_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_229_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_229_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_229_114
                                                                              jmp   .Lcall_prolog_α_229_118
.Lcall_prolog_α_229_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_229_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_229_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_229_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_229_115
                                                                              jmp   .Lcall_prolog_α_229_114
.Lcall_prolog_α_229_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_229_117
.Lcall_prolog_α_229_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_229_117
.Lcall_prolog_α_229_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_229_117:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n137_var_ref_α
                                                                              jmp   n132_var_ref_α
n131_call_prolog_β:     mov              r11, 66;                             jmp   n137_var_ref_α
                        .size            n131_call_prolog_bx, .-n131_call_prolog_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n133_lit_integer_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n134_call_prolog_α
.Llit_integer_α_232_0:  .quad            2
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_prolog_bx, @function
n134_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    n136_call_prolog_α
                                                                              jmp   n135_suspend_α
n134_call_prolog_β:     mov              r11, 69;                             jmp   n136_call_prolog_α
                        .size            n134_call_prolog_bx, .-n134_call_prolog_bx
                        .type            n135_suspend_bx, @function
n135_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:         mov              r11, 70
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_235_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_235_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n135_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n135_suspend_β:         mov              r11, 70;                             jmp   n136_call_prolog_α
                        .size            n135_suspend_bx, .-n135_suspend_bx
                        .type            n136_call_prolog_bx, @function
n136_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_prolog_α:     mov              r11, 71
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n137_var_ref_α
n136_call_prolog_β:     mov              r11, 71;                             jmp   digit$2F1_ω
                        .size            n136_call_prolog_bx, .-n136_call_prolog_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n138_lit_integer_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rbp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n139_lit_integer_α
.Llit_integer_α_239_0:  .quad            1
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rbp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n140_call_prolog_α
.Llit_integer_α_240_0:  .quad            3
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_call_prolog_bx, @function
n140_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_prolog_α:     mov              r11, 75
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lcall_prolog_α_241_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_110
.Lcall_prolog_α_241_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_241_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_110
.Lcall_prolog_α_241_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_241_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_110
.Lcall_prolog_α_241_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_241_114
                                                                              jmp   .Lcall_prolog_α_241_118
.Lcall_prolog_α_241_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_241_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_241_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_241_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_241_115
                                                                              jmp   .Lcall_prolog_α_241_114
.Lcall_prolog_α_241_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_241_117
.Lcall_prolog_α_241_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_241_117
.Lcall_prolog_α_241_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_241_117:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    n146_var_ref_α
                                                                              jmp   n141_var_ref_α
n140_call_prolog_β:     mov              r11, 75;                             jmp   n146_var_ref_α
                        .size            n140_call_prolog_bx, .-n140_call_prolog_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n142_lit_integer_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n143_call_prolog_α
.Llit_integer_α_244_0:  .quad            3
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_call_prolog_bx, @function
n143_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n145_call_prolog_α
                                                                              jmp   n144_suspend_α
n143_call_prolog_β:     mov              r11, 78;                             jmp   n145_call_prolog_α
                        .size            n143_call_prolog_bx, .-n143_call_prolog_bx
                        .type            n144_suspend_bx, @function
n144_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_suspend_α:         mov              r11, 79
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_247_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_247_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n144_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n144_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n144_suspend_β:         mov              r11, 79;                             jmp   n145_call_prolog_α
                        .size            n144_suspend_bx, .-n144_suspend_bx
                        .type            n145_call_prolog_bx, @function
n145_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_prolog_α:     mov              r11, 80
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n146_var_ref_α
n145_call_prolog_β:     mov              r11, 80;                             jmp   digit$2F1_ω
                        .size            n145_call_prolog_bx, .-n145_call_prolog_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n147_lit_integer_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_251_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n148_lit_integer_α
.Llit_integer_α_251_0:  .quad            1
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 83
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n149_call_prolog_α
.Llit_integer_α_252_0:  .quad            4
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_call_prolog_bx, @function
n149_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_prolog_α:     mov              r11, 84
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        lea              r8, [rbp + 1408]
.Lcall_prolog_α_253_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_253_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_253_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_253_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_253_110
.Lcall_prolog_α_253_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_253_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_253_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_253_110
.Lcall_prolog_α_253_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_253_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_253_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_253_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_253_110
.Lcall_prolog_α_253_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_253_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_253_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_253_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_253_114
                                                                              jmp   .Lcall_prolog_α_253_118
.Lcall_prolog_α_253_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_253_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_253_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_253_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_253_115
                                                                              jmp   .Lcall_prolog_α_253_114
.Lcall_prolog_α_253_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_253_117
.Lcall_prolog_α_253_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_253_117
.Lcall_prolog_α_253_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_253_117:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n155_var_ref_α
                                                                              jmp   n150_var_ref_α
n149_call_prolog_β:     mov              r11, 84;                             jmp   n155_var_ref_α
                        .size            n149_call_prolog_bx, .-n149_call_prolog_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n151_lit_integer_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n152_call_prolog_α
.Llit_integer_α_256_0:  .quad            4
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_call_prolog_bx, @function
n152_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_prolog_α:     mov              r11, 87
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n154_call_prolog_α
                                                                              jmp   n153_suspend_α
n152_call_prolog_β:     mov              r11, 87;                             jmp   n154_call_prolog_α
                        .size            n152_call_prolog_bx, .-n152_call_prolog_bx
                        .type            n153_suspend_bx, @function
n153_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_suspend_α:         mov              r11, 88
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_259_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_259_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n153_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n153_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n153_suspend_β:         mov              r11, 88;                             jmp   n154_call_prolog_α
                        .size            n153_suspend_bx, .-n153_suspend_bx
                        .type            n154_call_prolog_bx, @function
n154_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_prolog_α:     mov              r11, 89
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n155_var_ref_α
n154_call_prolog_β:     mov              r11, 89;                             jmp   digit$2F1_ω
                        .size            n154_call_prolog_bx, .-n154_call_prolog_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n156_lit_integer_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rbp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_263_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n157_lit_integer_α
.Llit_integer_α_263_0:  .quad            1
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n158_call_prolog_α
.Llit_integer_α_264_0:  .quad            5
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_call_prolog_bx, @function
n158_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lcall_prolog_α_265_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_265_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_265_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_265_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_265_110
.Lcall_prolog_α_265_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_265_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_265_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_265_110
.Lcall_prolog_α_265_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_265_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_265_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_265_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_265_110
.Lcall_prolog_α_265_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_265_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_265_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_265_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_265_114
                                                                              jmp   .Lcall_prolog_α_265_118
.Lcall_prolog_α_265_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_265_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_265_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_265_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_265_115
                                                                              jmp   .Lcall_prolog_α_265_114
.Lcall_prolog_α_265_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_265_117
.Lcall_prolog_α_265_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_265_117
.Lcall_prolog_α_265_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_265_117:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n164_var_ref_α
                                                                              jmp   n159_var_ref_α
n158_call_prolog_β:     mov              r11, 93;                             jmp   n164_var_ref_α
                        .size            n158_call_prolog_bx, .-n158_call_prolog_bx
                        .type            n159_var_ref_bx, @function
n159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n160_lit_integer_α
                        .size            n159_var_ref_bx, .-n159_var_ref_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     mov              r11, 95
                        mov              qword ptr [rbp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_268_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n161_call_prolog_α
.Llit_integer_α_268_0:  .quad            5
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_call_prolog_bx, @function
n161_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_prolog_α:     mov              r11, 96
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n163_call_prolog_α
                                                                              jmp   n162_suspend_α
n161_call_prolog_β:     mov              r11, 96;                             jmp   n163_call_prolog_α
                        .size            n161_call_prolog_bx, .-n161_call_prolog_bx
                        .type            n162_suspend_bx, @function
n162_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_suspend_α:         mov              r11, 97
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_271_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_271_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n162_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n162_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n162_suspend_β:         mov              r11, 97;                             jmp   n163_call_prolog_α
                        .size            n162_suspend_bx, .-n162_suspend_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 98
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 98;                             jmp   digit$2F1_ω
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n165_lit_integer_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_275_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n166_lit_integer_α
.Llit_integer_α_275_0:  .quad            1
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n167_call_prolog_α
.Llit_integer_α_276_0:  .quad            6
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_call_prolog_bx, @function
n167_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_prolog_α:     mov              r11, 102
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lcall_prolog_α_277_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_277_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_277_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_277_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_277_110
.Lcall_prolog_α_277_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_277_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_277_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_277_110
.Lcall_prolog_α_277_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_277_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_277_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_277_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_277_110
.Lcall_prolog_α_277_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_277_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_277_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_277_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_277_114
                                                                              jmp   .Lcall_prolog_α_277_118
.Lcall_prolog_α_277_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_277_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_277_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_277_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_277_115
                                                                              jmp   .Lcall_prolog_α_277_114
.Lcall_prolog_α_277_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_277_117
.Lcall_prolog_α_277_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_277_117
.Lcall_prolog_α_277_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_277_117:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n173_var_ref_α
                                                                              jmp   n168_var_ref_α
n167_call_prolog_β:     mov              r11, 102;                            jmp   n173_var_ref_α
                        .size            n167_call_prolog_bx, .-n167_call_prolog_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n169_lit_integer_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n170_call_prolog_α
.Llit_integer_α_280_0:  .quad            6
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_call_prolog_bx, @function
n170_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_prolog_α:     mov              r11, 105
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n172_call_prolog_α
                                                                              jmp   n171_suspend_α
n170_call_prolog_β:     mov              r11, 105;                            jmp   n172_call_prolog_α
                        .size            n170_call_prolog_bx, .-n170_call_prolog_bx
                        .type            n171_suspend_bx, @function
n171_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_suspend_α:         mov              r11, 106
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_283_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_283_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n171_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n171_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n171_suspend_β:         mov              r11, 106;                            jmp   n172_call_prolog_α
                        .size            n171_suspend_bx, .-n171_suspend_bx
                        .type            n172_call_prolog_bx, @function
n172_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_prolog_α:     mov              r11, 107
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n173_var_ref_α
n172_call_prolog_β:     mov              r11, 107;                            jmp   digit$2F1_ω
                        .size            n172_call_prolog_bx, .-n172_call_prolog_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n174_lit_integer_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_287_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n175_lit_integer_α
.Llit_integer_α_287_0:  .quad            1
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_288_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n176_call_prolog_α
.Llit_integer_α_288_0:  .quad            7
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_call_prolog_bx, @function
n176_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_prolog_α:     mov              r11, 111
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lcall_prolog_α_289_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_289_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_289_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_289_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_289_110
.Lcall_prolog_α_289_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_289_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_289_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_289_110
.Lcall_prolog_α_289_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_289_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_289_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_289_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_289_110
.Lcall_prolog_α_289_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_289_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_289_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_289_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_289_114
                                                                              jmp   .Lcall_prolog_α_289_118
.Lcall_prolog_α_289_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_289_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_289_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_289_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_289_115
                                                                              jmp   .Lcall_prolog_α_289_114
.Lcall_prolog_α_289_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_289_117
.Lcall_prolog_α_289_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_289_117
.Lcall_prolog_α_289_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_289_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n182_var_ref_α
                                                                              jmp   n177_var_ref_α
n176_call_prolog_β:     mov              r11, 111;                            jmp   n182_var_ref_α
                        .size            n176_call_prolog_bx, .-n176_call_prolog_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n178_lit_integer_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n179_call_prolog_α
.Llit_integer_α_292_0:  .quad            7
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_call_prolog_bx, @function
n179_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_prolog_α:     mov              r11, 114
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n181_call_prolog_α
                                                                              jmp   n180_suspend_α
n179_call_prolog_β:     mov              r11, 114;                            jmp   n181_call_prolog_α
                        .size            n179_call_prolog_bx, .-n179_call_prolog_bx
                        .type            n180_suspend_bx, @function
n180_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_suspend_α:         mov              r11, 115
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_295_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_295_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n180_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n180_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n180_suspend_β:         mov              r11, 115;                            jmp   n181_call_prolog_α
                        .size            n180_suspend_bx, .-n180_suspend_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 116
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n182_var_ref_α
n181_call_prolog_β:     mov              r11, 116;                            jmp   digit$2F1_ω
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n183_lit_integer_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_lit_integer_bx, @function
n183_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n184_lit_integer_α
.Llit_integer_α_299_0:  .quad            1
                        .size            n183_lit_integer_bx, .-n183_lit_integer_bx
                        .type            n184_lit_integer_bx, @function
n184_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_300_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n185_call_prolog_α
.Llit_integer_α_300_0:  .quad            8
                        .size            n184_lit_integer_bx, .-n184_lit_integer_bx
                        .type            n185_call_prolog_bx, @function
n185_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_prolog_α:     mov              r11, 120
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lcall_prolog_α_301_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_301_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_301_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_110
.Lcall_prolog_α_301_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_301_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_110
.Lcall_prolog_α_301_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_301_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_301_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_110
.Lcall_prolog_α_301_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_301_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_301_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_301_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_301_114
                                                                              jmp   .Lcall_prolog_α_301_118
.Lcall_prolog_α_301_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_301_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_301_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_301_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_301_115
                                                                              jmp   .Lcall_prolog_α_301_114
.Lcall_prolog_α_301_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_301_117
.Lcall_prolog_α_301_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_301_117
.Lcall_prolog_α_301_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_301_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n191_var_ref_α
                                                                              jmp   n186_var_ref_α
n185_call_prolog_β:     mov              r11, 120;                            jmp   n191_var_ref_α
                        .size            n185_call_prolog_bx, .-n185_call_prolog_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n187_lit_integer_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_lit_integer_bx, @function
n187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_304_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n188_call_prolog_α
.Llit_integer_α_304_0:  .quad            8
                        .size            n187_lit_integer_bx, .-n187_lit_integer_bx
                        .type            n188_call_prolog_bx, @function
n188_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_prolog_α:     mov              r11, 123
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n190_call_prolog_α
                                                                              jmp   n189_suspend_α
n188_call_prolog_β:     mov              r11, 123;                            jmp   n190_call_prolog_α
                        .size            n188_call_prolog_bx, .-n188_call_prolog_bx
                        .type            n189_suspend_bx, @function
n189_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_suspend_α:         mov              r11, 124
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_307_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_307_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n189_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n189_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n189_suspend_β:         mov              r11, 124;                            jmp   n190_call_prolog_α
                        .size            n189_suspend_bx, .-n189_suspend_bx
                        .type            n190_call_prolog_bx, @function
n190_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_prolog_α:     mov              r11, 125
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   n191_var_ref_α
n190_call_prolog_β:     mov              r11, 125;                            jmp   digit$2F1_ω
                        .size            n190_call_prolog_bx, .-n190_call_prolog_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n192_lit_integer_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_lit_integer_bx, @function
n192_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n193_lit_integer_α
.Llit_integer_α_311_0:  .quad            1
                        .size            n192_lit_integer_bx, .-n192_lit_integer_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_312_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n194_call_prolog_α
.Llit_integer_α_312_0:  .quad            9
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_call_prolog_bx, @function
n194_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_prolog_α:     mov              r11, 129
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lcall_prolog_α_313_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_313_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_313_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_313_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_313_110
.Lcall_prolog_α_313_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_313_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_313_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_313_110
.Lcall_prolog_α_313_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_313_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_313_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_313_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_313_110
.Lcall_prolog_α_313_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_313_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_313_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_313_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_313_114
                                                                              jmp   .Lcall_prolog_α_313_118
.Lcall_prolog_α_313_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_313_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_313_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_313_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_313_115
                                                                              jmp   .Lcall_prolog_α_313_114
.Lcall_prolog_α_313_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_313_117
.Lcall_prolog_α_313_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_313_117
.Lcall_prolog_α_313_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_313_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n195_var_ref_α
n194_call_prolog_β:     mov              r11, 129;                            jmp   n199_call_prolog_α
                        .size            n194_call_prolog_bx, .-n194_call_prolog_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n196_lit_integer_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_lit_integer_bx, @function
n196_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n197_call_prolog_α
.Llit_integer_α_316_0:  .quad            9
                        .size            n196_lit_integer_bx, .-n196_lit_integer_bx
                        .type            n197_call_prolog_bx, @function
n197_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_prolog_α:     mov              r11, 132
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n199_call_prolog_α
                                                                              jmp   n198_suspend_α
n197_call_prolog_β:     mov              r11, 132;                            jmp   n199_call_prolog_α
                        .size            n197_call_prolog_bx, .-n197_call_prolog_bx
                        .type            n198_suspend_bx, @function
n198_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_suspend_α:         mov              r11, 133
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_319_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2464];         jmp   rax
.Lsuspend_α_319_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n198_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n198_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   digit$2F1_γ
n198_suspend_β:         mov              r11, 133;                            jmp   n199_call_prolog_α
                        .size            n198_suspend_bx, .-n198_suspend_bx
                        .type            n199_call_prolog_bx, @function
n199_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_prolog_α:     mov              r11, 134
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    digit$2F1_ω
                                                                              jmp   digit$2F1_ω
n199_call_prolog_β:     mov              r11, 134;                            jmp   digit$2F1_ω
                        .size            n199_call_prolog_bx, .-n199_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_β:
                                                                              jmp   n117_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ldigit$2F1_α_320_50
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
.Ldigit$2F1_α_320_50:   mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2504]
                        mov              rbp, qword ptr [rbp + 2520]
                        add              rsp, 2528;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2512]
                        mov              rbp, qword ptr [rbp + 2520]
                        add              rsp, 2528;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__solve$2F8:
                        sub              rsp, 4560
                        mov              qword ptr [rsp + 4536], rcx
                        mov              qword ptr [rsp + 4544], rdx
                        mov              qword ptr [rsp + 4552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4320
                        mov              edx, 4528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 8
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
solve$2F8_α_body:
                        lea              rax, [rip + n462_suspend_β]
                        mov              qword ptr [rbp + 4320], rax
                        .type            n321_call_prolog_bx, @function
n321_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_prolog_α:     mov              r11, 135
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_464_102
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152];          jmp   .Lcall_prolog_α_464_101
.Lcall_prolog_α_464_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_464_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_464_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_464_101
.Lcall_prolog_α_464_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_464_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    solve$2F8_ω
                                                                              jmp   n322_var_ref_α
n321_call_prolog_β:     mov              r11, 135;                            jmp   solve$2F8_ω
                        .size            n321_call_prolog_bx, .-n321_call_prolog_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx;         jmp   n323_var_ref_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx;         jmp   n324_call_prolog_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_call_prolog_bx, @function
n324_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_prolog_α:     mov              r11, 138
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4280], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4264], rax
                        lea              rdi, [rbp + 4256]
                        lea              r8, [rbp + 4256]
.Lcall_prolog_α_469_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_469_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_469_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_469_40
.Lcall_prolog_α_469_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_469_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_469_40
.Lcall_prolog_α_469_56: cmp              al, 72;                              jne   .Lcall_prolog_α_469_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_469_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_469_40
.Lcall_prolog_α_469_41: lea              r9, [rbp + 4272]
.Lcall_prolog_α_469_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_469_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_469_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_469_42
.Lcall_prolog_α_469_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_469_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_469_42
.Lcall_prolog_α_469_58: cmp              al, 72;                              jne   .Lcall_prolog_α_469_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_469_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_469_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_469_42
.Lcall_prolog_α_469_43: cmp              r8, r9;                              je    .Lcall_prolog_α_469_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_469_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_469_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_469_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_469_44
                                                                              jmp   .Lcall_prolog_α_469_45
.Lcall_prolog_α_469_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_469_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_469_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_469_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_469_53
                                                                              jmp   .Lcall_prolog_α_469_46
.Lcall_prolog_α_469_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_469_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_469_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_469_51
.Lcall_prolog_α_469_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_469_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_469_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_469_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_469_47
                                                                              jmp   .Lcall_prolog_α_469_48
.Lcall_prolog_α_469_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_469_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_469_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_469_51
.Lcall_prolog_α_469_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_469_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_469_53
                                                                              jmp   .Lcall_prolog_α_469_52
.Lcall_prolog_α_469_49: cmp              dl, 80;                              je    .Lcall_prolog_α_469_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_469_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_469_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_469_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_469_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_469_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_469_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_469_51
                                                                              jmp   .Lcall_prolog_α_469_52
.Lcall_prolog_α_469_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_469_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_469_53
.Lcall_prolog_α_469_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_469_54
.Lcall_prolog_α_469_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_469_54
.Lcall_prolog_α_469_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_469_54: mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n325_var_ref_α
n324_call_prolog_β:     mov              r11, 138;                            jmp   n463_call_prolog_α
                        .size            n324_call_prolog_bx, .-n324_call_prolog_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx;         jmp   n326_var_ref_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n327_call_prolog_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_call_prolog_bx, @function
n327_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_prolog_α:     mov              r11, 141
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        lea              r8, [rbp + 4176]
.Lcall_prolog_α_474_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_474_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_474_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_474_40
.Lcall_prolog_α_474_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_474_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_474_40
.Lcall_prolog_α_474_56: cmp              al, 72;                              jne   .Lcall_prolog_α_474_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_474_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_474_40
.Lcall_prolog_α_474_41: lea              r9, [rbp + 4192]
.Lcall_prolog_α_474_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_474_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_474_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_474_42
.Lcall_prolog_α_474_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_474_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_474_42
.Lcall_prolog_α_474_58: cmp              al, 72;                              jne   .Lcall_prolog_α_474_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_474_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_474_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_474_42
.Lcall_prolog_α_474_43: cmp              r8, r9;                              je    .Lcall_prolog_α_474_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_474_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_474_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_474_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_474_44
                                                                              jmp   .Lcall_prolog_α_474_45
.Lcall_prolog_α_474_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_474_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_474_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_474_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_474_53
                                                                              jmp   .Lcall_prolog_α_474_46
.Lcall_prolog_α_474_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_474_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_474_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_474_51
.Lcall_prolog_α_474_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_474_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_474_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_474_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_474_47
                                                                              jmp   .Lcall_prolog_α_474_48
.Lcall_prolog_α_474_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_474_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_474_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_474_51
.Lcall_prolog_α_474_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_474_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_474_53
                                                                              jmp   .Lcall_prolog_α_474_52
.Lcall_prolog_α_474_49: cmp              dl, 80;                              je    .Lcall_prolog_α_474_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_474_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_474_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_474_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_474_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_474_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_474_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_474_51
                                                                              jmp   .Lcall_prolog_α_474_52
.Lcall_prolog_α_474_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_474_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_474_53
.Lcall_prolog_α_474_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_474_54
.Lcall_prolog_α_474_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_474_54
.Lcall_prolog_α_474_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_474_54: mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n328_var_ref_α
n327_call_prolog_β:     mov              r11, 141;                            jmp   n463_call_prolog_α
                        .size            n327_call_prolog_bx, .-n327_call_prolog_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx;         jmp   n329_var_ref_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n330_call_prolog_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_call_prolog_bx, @function
n330_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_prolog_α:     mov              r11, 144
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        lea              r8, [rbp + 4096]
.Lcall_prolog_α_479_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_479_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_479_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_479_40
.Lcall_prolog_α_479_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_479_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_479_40
.Lcall_prolog_α_479_56: cmp              al, 72;                              jne   .Lcall_prolog_α_479_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_479_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_479_40
.Lcall_prolog_α_479_41: lea              r9, [rbp + 4112]
.Lcall_prolog_α_479_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_479_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_479_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_479_42
.Lcall_prolog_α_479_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_479_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_479_42
.Lcall_prolog_α_479_58: cmp              al, 72;                              jne   .Lcall_prolog_α_479_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_479_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_479_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_479_42
.Lcall_prolog_α_479_43: cmp              r8, r9;                              je    .Lcall_prolog_α_479_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_479_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_479_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_479_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_479_44
                                                                              jmp   .Lcall_prolog_α_479_45
.Lcall_prolog_α_479_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_479_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_479_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_479_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_479_53
                                                                              jmp   .Lcall_prolog_α_479_46
.Lcall_prolog_α_479_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_479_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_479_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_479_51
.Lcall_prolog_α_479_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_479_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_479_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_479_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_479_47
                                                                              jmp   .Lcall_prolog_α_479_48
.Lcall_prolog_α_479_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_479_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_479_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_479_51
.Lcall_prolog_α_479_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_479_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_479_53
                                                                              jmp   .Lcall_prolog_α_479_52
.Lcall_prolog_α_479_49: cmp              dl, 80;                              je    .Lcall_prolog_α_479_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_479_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_479_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_479_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_479_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_479_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_479_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_479_51
                                                                              jmp   .Lcall_prolog_α_479_52
.Lcall_prolog_α_479_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_479_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_479_53
.Lcall_prolog_α_479_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_479_54
.Lcall_prolog_α_479_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_479_54
.Lcall_prolog_α_479_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_479_54: mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n331_var_ref_α
n330_call_prolog_β:     mov              r11, 144;                            jmp   n463_call_prolog_α
                        .size            n330_call_prolog_bx, .-n330_call_prolog_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n332_var_ref_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n333_call_prolog_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_call_prolog_bx, @function
n333_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_prolog_α:     mov              r11, 147
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        lea              r8, [rbp + 4016]
.Lcall_prolog_α_484_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_484_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_484_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_484_40
.Lcall_prolog_α_484_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_484_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_484_40
.Lcall_prolog_α_484_56: cmp              al, 72;                              jne   .Lcall_prolog_α_484_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_484_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_484_40
.Lcall_prolog_α_484_41: lea              r9, [rbp + 4032]
.Lcall_prolog_α_484_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_484_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_484_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_484_42
.Lcall_prolog_α_484_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_484_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_484_42
.Lcall_prolog_α_484_58: cmp              al, 72;                              jne   .Lcall_prolog_α_484_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_484_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_484_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_484_42
.Lcall_prolog_α_484_43: cmp              r8, r9;                              je    .Lcall_prolog_α_484_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_484_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_484_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_484_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_484_44
                                                                              jmp   .Lcall_prolog_α_484_45
.Lcall_prolog_α_484_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_484_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_484_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_484_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_484_53
                                                                              jmp   .Lcall_prolog_α_484_46
.Lcall_prolog_α_484_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_484_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_484_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_484_51
.Lcall_prolog_α_484_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_484_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_484_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_484_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_484_47
                                                                              jmp   .Lcall_prolog_α_484_48
.Lcall_prolog_α_484_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_484_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_484_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_484_51
.Lcall_prolog_α_484_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_484_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_484_53
                                                                              jmp   .Lcall_prolog_α_484_52
.Lcall_prolog_α_484_49: cmp              dl, 80;                              je    .Lcall_prolog_α_484_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_484_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_484_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_484_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_484_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_484_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_484_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_484_51
                                                                              jmp   .Lcall_prolog_α_484_52
.Lcall_prolog_α_484_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_484_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_484_53
.Lcall_prolog_α_484_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_484_54
.Lcall_prolog_α_484_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_484_54
.Lcall_prolog_α_484_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_484_54: mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n334_var_ref_α
n333_call_prolog_β:     mov              r11, 147;                            jmp   n463_call_prolog_α
                        .size            n333_call_prolog_bx, .-n333_call_prolog_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx;         jmp   n335_var_ref_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx;         jmp   n336_call_prolog_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_call_prolog_bx, @function
n336_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_prolog_α:     mov              r11, 150
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        lea              rdi, [rbp + 3936]
                        lea              r8, [rbp + 3936]
.Lcall_prolog_α_489_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_489_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_489_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_489_40
.Lcall_prolog_α_489_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_489_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_489_40
.Lcall_prolog_α_489_56: cmp              al, 72;                              jne   .Lcall_prolog_α_489_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_489_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_489_40
.Lcall_prolog_α_489_41: lea              r9, [rbp + 3952]
.Lcall_prolog_α_489_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_489_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_489_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_489_42
.Lcall_prolog_α_489_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_489_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_489_42
.Lcall_prolog_α_489_58: cmp              al, 72;                              jne   .Lcall_prolog_α_489_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_489_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_489_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_489_42
.Lcall_prolog_α_489_43: cmp              r8, r9;                              je    .Lcall_prolog_α_489_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_489_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_489_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_489_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_489_44
                                                                              jmp   .Lcall_prolog_α_489_45
.Lcall_prolog_α_489_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_489_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_489_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_489_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_489_53
                                                                              jmp   .Lcall_prolog_α_489_46
.Lcall_prolog_α_489_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_489_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_489_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_489_51
.Lcall_prolog_α_489_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_489_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_489_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_489_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_489_47
                                                                              jmp   .Lcall_prolog_α_489_48
.Lcall_prolog_α_489_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_489_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_489_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_489_51
.Lcall_prolog_α_489_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_489_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_489_53
                                                                              jmp   .Lcall_prolog_α_489_52
.Lcall_prolog_α_489_49: cmp              dl, 80;                              je    .Lcall_prolog_α_489_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_489_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_489_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_489_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_489_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_489_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_489_51
                                                                              jmp   .Lcall_prolog_α_489_52
.Lcall_prolog_α_489_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_489_53
.Lcall_prolog_α_489_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_489_54
.Lcall_prolog_α_489_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_489_54
.Lcall_prolog_α_489_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_489_54: mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n337_var_ref_α
n336_call_prolog_β:     mov              r11, 150;                            jmp   n463_call_prolog_α
                        .size            n336_call_prolog_bx, .-n336_call_prolog_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n338_var_ref_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx;         jmp   n339_call_prolog_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_call_prolog_bx, @function
n339_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_prolog_α:     mov              r11, 153
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3856]
                        lea              r8, [rbp + 3856]
.Lcall_prolog_α_494_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_494_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_494_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_494_40
.Lcall_prolog_α_494_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_494_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_494_40
.Lcall_prolog_α_494_56: cmp              al, 72;                              jne   .Lcall_prolog_α_494_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_494_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_494_40
.Lcall_prolog_α_494_41: lea              r9, [rbp + 3872]
.Lcall_prolog_α_494_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_494_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_494_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_494_42
.Lcall_prolog_α_494_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_494_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_494_42
.Lcall_prolog_α_494_58: cmp              al, 72;                              jne   .Lcall_prolog_α_494_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_494_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_494_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_494_42
.Lcall_prolog_α_494_43: cmp              r8, r9;                              je    .Lcall_prolog_α_494_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_494_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_494_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_494_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_494_44
                                                                              jmp   .Lcall_prolog_α_494_45
.Lcall_prolog_α_494_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_494_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_494_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_494_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_494_53
                                                                              jmp   .Lcall_prolog_α_494_46
.Lcall_prolog_α_494_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_494_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_494_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_494_51
.Lcall_prolog_α_494_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_494_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_494_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_494_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_494_47
                                                                              jmp   .Lcall_prolog_α_494_48
.Lcall_prolog_α_494_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_494_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_494_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_494_51
.Lcall_prolog_α_494_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_494_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_494_53
                                                                              jmp   .Lcall_prolog_α_494_52
.Lcall_prolog_α_494_49: cmp              dl, 80;                              je    .Lcall_prolog_α_494_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_494_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_494_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_494_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_494_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_494_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_494_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_494_51
                                                                              jmp   .Lcall_prolog_α_494_52
.Lcall_prolog_α_494_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_494_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_494_53
.Lcall_prolog_α_494_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_494_54
.Lcall_prolog_α_494_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_494_54
.Lcall_prolog_α_494_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_494_54: mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n340_var_ref_α
n339_call_prolog_β:     mov              r11, 153;                            jmp   n463_call_prolog_α
                        .size            n339_call_prolog_bx, .-n339_call_prolog_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n341_var_ref_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n342_call_prolog_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_call_prolog_bx, @function
n342_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_prolog_α:     mov              r11, 156
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3784], rax
                        lea              rdi, [rbp + 3776]
                        lea              r8, [rbp + 3776]
.Lcall_prolog_α_499_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_499_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_499_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_499_40
.Lcall_prolog_α_499_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_499_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_499_40
.Lcall_prolog_α_499_56: cmp              al, 72;                              jne   .Lcall_prolog_α_499_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_499_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_499_40
.Lcall_prolog_α_499_41: lea              r9, [rbp + 3792]
.Lcall_prolog_α_499_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_499_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_499_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_499_42
.Lcall_prolog_α_499_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_499_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_499_42
.Lcall_prolog_α_499_58: cmp              al, 72;                              jne   .Lcall_prolog_α_499_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_499_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_499_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_499_42
.Lcall_prolog_α_499_43: cmp              r8, r9;                              je    .Lcall_prolog_α_499_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_499_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_499_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_499_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_499_44
                                                                              jmp   .Lcall_prolog_α_499_45
.Lcall_prolog_α_499_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_499_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_499_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_499_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_499_53
                                                                              jmp   .Lcall_prolog_α_499_46
.Lcall_prolog_α_499_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_499_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_499_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_499_51
.Lcall_prolog_α_499_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_499_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_499_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_499_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_499_47
                                                                              jmp   .Lcall_prolog_α_499_48
.Lcall_prolog_α_499_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_499_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_499_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_499_51
.Lcall_prolog_α_499_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_499_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_499_53
                                                                              jmp   .Lcall_prolog_α_499_52
.Lcall_prolog_α_499_49: cmp              dl, 80;                              je    .Lcall_prolog_α_499_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_499_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_499_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_499_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_499_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_499_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_499_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_499_51
                                                                              jmp   .Lcall_prolog_α_499_52
.Lcall_prolog_α_499_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_499_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_499_53
.Lcall_prolog_α_499_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_499_54
.Lcall_prolog_α_499_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_499_54
.Lcall_prolog_α_499_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_499_54: mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n343_var_ref_α
n342_call_prolog_β:     mov              r11, 156;                            jmp   n463_call_prolog_α
                        .size            n342_call_prolog_bx, .-n342_call_prolog_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n344_var_ref_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n345_call_prolog_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_call_prolog_bx, @function
n345_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_prolog_α:     mov              r11, 159
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3704], rax
                        lea              rdi, [rbp + 3696]
                        lea              r8, [rbp + 3696]
.Lcall_prolog_α_504_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_504_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_504_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_504_40
.Lcall_prolog_α_504_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_504_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_504_40
.Lcall_prolog_α_504_56: cmp              al, 72;                              jne   .Lcall_prolog_α_504_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_504_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_504_40
.Lcall_prolog_α_504_41: lea              r9, [rbp + 3712]
.Lcall_prolog_α_504_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_504_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_504_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_504_42
.Lcall_prolog_α_504_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_504_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_504_42
.Lcall_prolog_α_504_58: cmp              al, 72;                              jne   .Lcall_prolog_α_504_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_504_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_504_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_504_42
.Lcall_prolog_α_504_43: cmp              r8, r9;                              je    .Lcall_prolog_α_504_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_504_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_504_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_504_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_504_44
                                                                              jmp   .Lcall_prolog_α_504_45
.Lcall_prolog_α_504_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_504_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_504_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_504_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_504_53
                                                                              jmp   .Lcall_prolog_α_504_46
.Lcall_prolog_α_504_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_504_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_504_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_504_51
.Lcall_prolog_α_504_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_504_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_504_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_504_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_504_47
                                                                              jmp   .Lcall_prolog_α_504_48
.Lcall_prolog_α_504_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_504_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_504_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_504_51
.Lcall_prolog_α_504_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_504_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_504_53
                                                                              jmp   .Lcall_prolog_α_504_52
.Lcall_prolog_α_504_49: cmp              dl, 80;                              je    .Lcall_prolog_α_504_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_504_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_504_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_504_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_504_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_504_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_504_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_504_51
                                                                              jmp   .Lcall_prolog_α_504_52
.Lcall_prolog_α_504_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_504_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_504_53
.Lcall_prolog_α_504_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_504_54
.Lcall_prolog_α_504_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_504_54
.Lcall_prolog_α_504_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_504_54: mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n346_var_ref_α
n345_call_prolog_β:     mov              r11, 159;                            jmp   n463_call_prolog_α
                        .size            n345_call_prolog_bx, .-n345_call_prolog_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n347_call_proc_staged_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_call_proc_staged_bx, @function
n347_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_proc_staged_α:
                        mov              r11, 161
                        mov              qword ptr [rbp + 3632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_508_200
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_508_201
.Lcall_proc_staged_α_508_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_508_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_508_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_508_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_508_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_508_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_508_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_508_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3640], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_508_5
                        mov              qword ptr [rbp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_508_2
.Lcall_proc_staged_α_508_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_508_2
.Lcall_proc_staged_α_508_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_508_6
                        mov              qword ptr [rbp + 3632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_508_2
.Lcall_proc_staged_α_508_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_508_2
.Lcall_proc_staged_α_508_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_508_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_call_prolog_α
.Lcall_proc_staged_α_508_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_508_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
.Lcall_proc_staged_α_508_29:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n348_var_ref_α
n347_call_proc_staged_β:
                        mov              r11, 161
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 3632], 0
                        lea              rdi, [rbp + 3648]
                        lea              rsi, [rbp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n463_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
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
                        mov              rsi, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
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
                        test             rax, rax;                            je    n463_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_508_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_508_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_508_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_508_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_508_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    n463_call_prolog_α
                                                                              jmp   n348_var_ref_α
.Lcall_proc_staged_α_508_0:
                        .quad            .Lcall_proc_staged_α_508_0_s
.Lcall_proc_staged_α_508_0_s:
                        .string          "digit/1"
                        .size            n347_call_proc_staged_bx, .-n347_call_proc_staged_bx
                        .type            n348_var_ref_bx, @function
n348_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n349_call_proc_staged_α
                        .size            n348_var_ref_bx, .-n348_var_ref_bx
                        .type            n349_call_proc_staged_bx, @function
n349_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        mov              r11, 163
                        mov              qword ptr [rbp + 3552], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_512_200
                        mov              rax, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_512_201
.Lcall_proc_staged_α_512_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_512_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_512_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_512_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_512_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_512_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_512_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_512_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3560], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3552]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_512_5
                        mov              qword ptr [rbp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_512_2
.Lcall_proc_staged_α_512_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_512_2
.Lcall_proc_staged_α_512_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3552]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_512_6
                        mov              qword ptr [rbp + 3552], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_512_2
.Lcall_proc_staged_α_512_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_512_2
.Lcall_proc_staged_α_512_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_512_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n347_call_proc_staged_β
.Lcall_proc_staged_α_512_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_512_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
.Lcall_proc_staged_α_512_29:
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    n347_call_proc_staged_β
                                                                              jmp   n350_var_α
n349_call_proc_staged_β:
                        mov              r11, 163
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 3552], 0
                        lea              rdi, [rbp + 3568]
                        lea              rsi, [rbp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n347_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
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
                        mov              rsi, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
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
                        test             rax, rax;                            je    n347_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_512_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_512_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_512_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_512_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_512_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    n347_call_proc_staged_β
                                                                              jmp   n350_var_α
.Lcall_proc_staged_α_512_0:
                        .quad            .Lcall_proc_staged_α_512_0_s
.Lcall_proc_staged_α_512_0_s:
                        .string          "digit/1"
                        .size            n349_call_proc_staged_bx, .-n349_call_proc_staged_bx
                        .type            n350_var_bx, @function
n350_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n351_var_α
                        .size            n350_var_bx, .-n350_var_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             mov              r11, 165
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n352_call_prolog_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_call_prolog_bx, @function
n352_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_prolog_α:     mov              r11, 166
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              al, 104;                             je    n349_call_proc_staged_β
                                                                              jmp   n353_lit_integer_α
n352_call_prolog_β:     mov              r11, 166;                            jmp   n349_call_proc_staged_β
                        .size            n352_call_prolog_bx, .-n352_call_prolog_bx
                        .type            n353_lit_integer_bx, @function
n353_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 3360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_518_0]
                        mov              qword ptr [rbp + 3368], rax;         jmp   n354_var_ref_α
.Llit_integer_α_518_0:  .quad            0
                        .size            n353_lit_integer_bx, .-n353_lit_integer_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n355_var_ref_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n356_var_ref_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n357_var_ref_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_var_ref_bx, @function
n357_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n358_call_proc_staged_α
                        .size            n357_var_ref_bx, .-n357_var_ref_bx
                        .type            n358_call_proc_staged_bx, @function
n358_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        mov              r11, 172
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_528_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_528_201
.Lcall_proc_staged_α_528_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_528_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_528_202
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_528_203
.Lcall_proc_staged_α_528_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_528_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_528_204
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_528_205
.Lcall_proc_staged_α_528_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_528_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_528_206
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_528_207
.Lcall_proc_staged_α_528_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_528_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_528_208
                        mov              rax, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_528_209
.Lcall_proc_staged_α_528_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_528_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_528_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_528_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_528_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_528_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_528_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_528_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3336], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_528_5
                        mov              qword ptr [rbp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_528_2
.Lcall_proc_staged_α_528_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_528_2
.Lcall_proc_staged_α_528_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_528_6
                        mov              qword ptr [rbp + 3328], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_528_2
.Lcall_proc_staged_α_528_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_528_2
.Lcall_proc_staged_α_528_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_528_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n349_call_proc_staged_β
.Lcall_proc_staged_α_528_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_528_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
.Lcall_proc_staged_α_528_29:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    n349_call_proc_staged_β
                                                                              jmp   n359_var_ref_α
n358_call_proc_staged_β:
                        mov              r11, 172
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 3328], 0
                        lea              rdi, [rbp + 3344]
                        lea              rsi, [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n349_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        mov              ecx, 96
                        mov              r8d, 1312
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
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
                        test             rax, rax;                            je    n349_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_528_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_528_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_528_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_528_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_528_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    n349_call_proc_staged_β
                                                                              jmp   n359_var_ref_α
.Lcall_proc_staged_α_528_0:
                        .quad            .Lcall_proc_staged_α_528_0_s
.Lcall_proc_staged_α_528_0_s:
                        .string          "sumdigit/5"
                        .size            n358_call_proc_staged_bx, .-n358_call_proc_staged_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx;         jmp   n360_call_proc_staged_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_call_proc_staged_bx, @function
n360_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        mov              r11, 174
                        mov              qword ptr [rbp + 3184], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_532_200
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_532_201
.Lcall_proc_staged_α_532_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_532_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_532_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_532_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_532_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_532_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_532_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_532_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3192], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_532_5
                        mov              qword ptr [rbp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_532_2
.Lcall_proc_staged_α_532_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_532_2
.Lcall_proc_staged_α_532_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_532_6
                        mov              qword ptr [rbp + 3184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_532_2
.Lcall_proc_staged_α_532_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_532_2
.Lcall_proc_staged_α_532_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_532_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_call_proc_staged_β
.Lcall_proc_staged_α_532_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_532_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
.Lcall_proc_staged_α_532_29:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              al, 104;                             je    n358_call_proc_staged_β
                                                                              jmp   n361_var_α
n360_call_proc_staged_β:
                        mov              r11, 174
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 3184], 0
                        lea              rdi, [rbp + 3200]
                        lea              rsi, [rbp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n358_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
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
                        mov              rsi, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
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
                        test             rax, rax;                            je    n358_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_532_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_532_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_532_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_532_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_532_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              al, 104;                             je    n358_call_proc_staged_β
                                                                              jmp   n361_var_α
.Lcall_proc_staged_α_532_0:
                        .quad            .Lcall_proc_staged_α_532_0_s
.Lcall_proc_staged_α_532_0_s:
                        .string          "digit/1"
                        .size            n360_call_proc_staged_bx, .-n360_call_proc_staged_bx
                        .type            n361_var_bx, @function
n361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n362_var_α
                        .size            n361_var_bx, .-n361_var_bx
                        .type            n362_var_bx, @function
n362_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n363_call_prolog_α
                        .size            n362_var_bx, .-n362_var_bx
                        .type            n363_call_prolog_bx, @function
n363_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n364_var_α
n363_call_prolog_β:     mov              r11, 177;                            jmp   n360_call_proc_staged_β
                        .size            n363_call_prolog_bx, .-n363_call_prolog_bx
                        .type            n364_var_bx, @function
n364_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 3048], rax;         jmp   n365_var_α
                        .size            n364_var_bx, .-n364_var_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n366_call_prolog_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_call_prolog_bx, @function
n366_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n367_var_α
n366_call_prolog_β:     mov              r11, 180;                            jmp   n360_call_proc_staged_β
                        .size            n366_call_prolog_bx, .-n366_call_prolog_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n368_var_α
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_var_bx, @function
n368_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n369_call_prolog_α
                        .size            n368_var_bx, .-n368_var_bx
                        .type            n369_call_prolog_bx, @function
n369_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_prolog_α:     mov              r11, 183
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n370_var_ref_α
n369_call_prolog_β:     mov              r11, 183;                            jmp   n360_call_proc_staged_β
                        .size            n369_call_prolog_bx, .-n369_call_prolog_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n371_call_proc_staged_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_call_proc_staged_bx, @function
n371_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_proc_staged_α:
                        mov              r11, 185
                        mov              qword ptr [rbp + 2864], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_551_200
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_551_201
.Lcall_proc_staged_α_551_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_551_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_551_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_551_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_551_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_551_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_551_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_551_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2872], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_551_5
                        mov              qword ptr [rbp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_551_2
.Lcall_proc_staged_α_551_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_551_2
.Lcall_proc_staged_α_551_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_551_6
                        mov              qword ptr [rbp + 2864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_551_2
.Lcall_proc_staged_α_551_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_551_2
.Lcall_proc_staged_α_551_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_551_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_call_proc_staged_β
.Lcall_proc_staged_α_551_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_551_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
.Lcall_proc_staged_α_551_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n372_var_α
n371_call_proc_staged_β:
                        mov              r11, 185
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 2864], 0
                        lea              rdi, [rbp + 2880]
                        lea              rsi, [rbp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n360_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 2880]
                        mov              rdx, qword ptr [rbp + 2888]
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
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
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
                        test             rax, rax;                            je    n360_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_551_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_551_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_551_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_551_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_551_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n372_var_α
.Lcall_proc_staged_α_551_0:
                        .quad            .Lcall_proc_staged_α_551_0_s
.Lcall_proc_staged_α_551_0_s:
                        .string          "digit/1"
                        .size            n371_call_proc_staged_bx, .-n371_call_proc_staged_bx
                        .type            n372_var_bx, @function
n372_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n373_var_α
                        .size            n372_var_bx, .-n372_var_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n374_call_prolog_α
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_call_prolog_bx, @function
n374_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_prolog_α:     mov              r11, 188
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n375_var_α
n374_call_prolog_β:     mov              r11, 188;                            jmp   n371_call_proc_staged_β
                        .size            n374_call_prolog_bx, .-n374_call_prolog_bx
                        .type            n375_var_bx, @function
n375_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n376_var_α
                        .size            n375_var_bx, .-n375_var_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n377_call_prolog_α
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_call_prolog_bx, @function
n377_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_prolog_α:     mov              r11, 191
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n378_var_α
n377_call_prolog_β:     mov              r11, 191;                            jmp   n371_call_proc_staged_β
                        .size            n377_call_prolog_bx, .-n377_call_prolog_bx
                        .type            n378_var_bx, @function
n378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n379_var_α
                        .size            n378_var_bx, .-n378_var_bx
                        .type            n379_var_bx, @function
n379_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n380_call_prolog_α
                        .size            n379_var_bx, .-n379_var_bx
                        .type            n380_call_prolog_bx, @function
n380_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_prolog_α:     mov              r11, 194
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n381_var_α
n380_call_prolog_β:     mov              r11, 194;                            jmp   n371_call_proc_staged_β
                        .size            n380_call_prolog_bx, .-n380_call_prolog_bx
                        .type            n381_var_bx, @function
n381_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n382_var_α
                        .size            n381_var_bx, .-n381_var_bx
                        .type            n382_var_bx, @function
n382_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             mov              r11, 196
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n383_call_prolog_α
                        .size            n382_var_bx, .-n382_var_bx
                        .type            n383_call_prolog_bx, @function
n383_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_prolog_α:     mov              r11, 197
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2536], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n384_var_ref_α
n383_call_prolog_β:     mov              r11, 197;                            jmp   n371_call_proc_staged_β
                        .size            n383_call_prolog_bx, .-n383_call_prolog_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n385_var_ref_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_var_ref_bx, @function
n385_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n386_var_ref_α
                        .size            n385_var_ref_bx, .-n385_var_ref_bx
                        .type            n386_var_ref_bx, @function
n386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n387_var_ref_α
                        .size            n386_var_ref_bx, .-n386_var_ref_bx
                        .type            n387_var_ref_bx, @function
n387_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n388_var_ref_α
                        .size            n387_var_ref_bx, .-n387_var_ref_bx
                        .type            n388_var_ref_bx, @function
n388_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n389_call_proc_staged_α
                        .size            n388_var_ref_bx, .-n388_var_ref_bx
                        .type            n389_call_proc_staged_bx, @function
n389_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_proc_staged_α:
                        mov              r11, 203
                        mov              qword ptr [rbp + 2400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_583_200
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_583_201
.Lcall_proc_staged_α_583_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_583_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_583_202
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_583_203
.Lcall_proc_staged_α_583_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_583_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_583_204
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_583_205
.Lcall_proc_staged_α_583_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_583_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_583_206
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_583_207
.Lcall_proc_staged_α_583_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_583_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_583_208
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_583_209
.Lcall_proc_staged_α_583_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_583_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_583_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_583_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_583_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_583_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_583_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_583_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2408], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2400]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_583_5
                        mov              qword ptr [rbp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_583_2
.Lcall_proc_staged_α_583_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_583_2
.Lcall_proc_staged_α_583_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2400]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_583_6
                        mov              qword ptr [rbp + 2400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_583_2
.Lcall_proc_staged_α_583_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_583_2
.Lcall_proc_staged_α_583_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_583_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_call_proc_staged_β
.Lcall_proc_staged_α_583_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_583_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
.Lcall_proc_staged_α_583_29:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n390_var_ref_α
n389_call_proc_staged_β:
                        mov              r11, 203
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 2400], 0
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n371_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 2416]
                        mov              rdx, qword ptr [rbp + 2424]
                        mov              ecx, 96
                        mov              r8d, 1312
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
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
                        test             rax, rax;                            je    n371_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_583_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_583_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_583_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_583_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_583_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    n371_call_proc_staged_β
                                                                              jmp   n390_var_ref_α
.Lcall_proc_staged_α_583_0:
                        .quad            .Lcall_proc_staged_α_583_0_s
.Lcall_proc_staged_α_583_0_s:
                        .string          "sumdigit/5"
                        .size            n389_call_proc_staged_bx, .-n389_call_proc_staged_bx
                        .type            n390_var_ref_bx, @function
n390_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n391_call_proc_staged_α
                        .size            n390_var_ref_bx, .-n390_var_ref_bx
                        .type            n391_call_proc_staged_bx, @function
n391_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_proc_staged_α:
                        mov              r11, 205
                        mov              qword ptr [rbp + 2256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_587_200
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_587_201
.Lcall_proc_staged_α_587_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_587_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_587_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_587_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_587_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_587_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2264], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_587_5
                        mov              qword ptr [rbp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_587_6
                        mov              qword ptr [rbp + 2256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_587_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n389_call_proc_staged_β
.Lcall_proc_staged_α_587_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_587_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
.Lcall_proc_staged_α_587_29:
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    n389_call_proc_staged_β
                                                                              jmp   n392_var_α
n391_call_proc_staged_β:
                        mov              r11, 205
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 2256], 0
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n389_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
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
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
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
                        test             rax, rax;                            je    n389_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_587_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_587_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_587_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    n389_call_proc_staged_β
                                                                              jmp   n392_var_α
.Lcall_proc_staged_α_587_0:
                        .quad            .Lcall_proc_staged_α_587_0_s
.Lcall_proc_staged_α_587_0_s:
                        .string          "digit/1"
                        .size            n391_call_proc_staged_bx, .-n391_call_proc_staged_bx
                        .type            n392_var_bx, @function
n392_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n393_var_α
                        .size            n392_var_bx, .-n392_var_bx
                        .type            n393_var_bx, @function
n393_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n394_call_prolog_α
                        .size            n393_var_bx, .-n393_var_bx
                        .type            n394_call_prolog_bx, @function
n394_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_call_prolog_α:     mov              r11, 208
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n395_var_α
n394_call_prolog_β:     mov              r11, 208;                            jmp   n391_call_proc_staged_β
                        .size            n394_call_prolog_bx, .-n394_call_prolog_bx
                        .type            n395_var_bx, @function
n395_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:             mov              r11, 209
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n396_var_α
                        .size            n395_var_bx, .-n395_var_bx
                        .type            n396_var_bx, @function
n396_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n397_call_prolog_α
                        .size            n396_var_bx, .-n396_var_bx
                        .type            n397_call_prolog_bx, @function
n397_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_call_prolog_α:     mov              r11, 211
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n398_var_α
n397_call_prolog_β:     mov              r11, 211;                            jmp   n391_call_proc_staged_β
                        .size            n397_call_prolog_bx, .-n397_call_prolog_bx
                        .type            n398_var_bx, @function
n398_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n399_var_α
                        .size            n398_var_bx, .-n398_var_bx
                        .type            n399_var_bx, @function
n399_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:             mov              r11, 213
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n400_call_prolog_α
                        .size            n399_var_bx, .-n399_var_bx
                        .type            n400_call_prolog_bx, @function
n400_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n401_var_α
n400_call_prolog_β:     mov              r11, 214;                            jmp   n391_call_proc_staged_β
                        .size            n400_call_prolog_bx, .-n400_call_prolog_bx
                        .type            n401_var_bx, @function
n401_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n402_var_α
                        .size            n401_var_bx, .-n401_var_bx
                        .type            n402_var_bx, @function
n402_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n403_call_prolog_α
                        .size            n402_var_bx, .-n402_var_bx
                        .type            n403_call_prolog_bx, @function
n403_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_prolog_α:     mov              r11, 217
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n404_var_α
n403_call_prolog_β:     mov              r11, 217;                            jmp   n391_call_proc_staged_β
                        .size            n403_call_prolog_bx, .-n403_call_prolog_bx
                        .type            n404_var_bx, @function
n404_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n405_var_α
                        .size            n404_var_bx, .-n404_var_bx
                        .type            n405_var_bx, @function
n405_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n406_call_prolog_α
                        .size            n405_var_bx, .-n405_var_bx
                        .type            n406_call_prolog_bx, @function
n406_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_prolog_α:     mov              r11, 220
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n407_var_ref_α
n406_call_prolog_β:     mov              r11, 220;                            jmp   n391_call_proc_staged_β
                        .size            n406_call_prolog_bx, .-n406_call_prolog_bx
                        .type            n407_var_ref_bx, @function
n407_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n408_var_ref_α
                        .size            n407_var_ref_bx, .-n407_var_ref_bx
                        .type            n408_var_ref_bx, @function
n408_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n409_var_ref_α
                        .size            n408_var_ref_bx, .-n408_var_ref_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n410_var_ref_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_var_ref_bx, @function
n410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n411_var_ref_α
                        .size            n410_var_ref_bx, .-n410_var_ref_bx
                        .type            n411_var_ref_bx, @function
n411_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n412_call_proc_staged_α
                        .size            n411_var_ref_bx, .-n411_var_ref_bx
                        .type            n412_call_proc_staged_bx, @function
n412_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_proc_staged_α:
                        mov              r11, 226
                        mov              qword ptr [rbp + 1712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_624_200
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_624_201
.Lcall_proc_staged_α_624_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_624_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_624_202
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_624_203
.Lcall_proc_staged_α_624_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_624_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_624_204
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_624_205
.Lcall_proc_staged_α_624_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_624_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_624_206
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_624_207
.Lcall_proc_staged_α_624_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_624_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_624_208
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_624_209
.Lcall_proc_staged_α_624_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_624_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_624_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_624_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_624_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_624_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_624_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_624_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1720], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_624_5
                        mov              qword ptr [rbp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_624_2
.Lcall_proc_staged_α_624_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_624_2
.Lcall_proc_staged_α_624_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_624_6
                        mov              qword ptr [rbp + 1712], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_624_2
.Lcall_proc_staged_α_624_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_624_2
.Lcall_proc_staged_α_624_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_624_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_call_proc_staged_β
.Lcall_proc_staged_α_624_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_624_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
.Lcall_proc_staged_α_624_29:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n413_var_ref_α
n412_call_proc_staged_β:
                        mov              r11, 226
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 1712], 0
                        lea              rdi, [rbp + 1728]
                        lea              rsi, [rbp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n391_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              ecx, 96
                        mov              r8d, 1312
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
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
                        test             rax, rax;                            je    n391_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_624_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_624_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_624_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_624_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_624_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    n391_call_proc_staged_β
                                                                              jmp   n413_var_ref_α
.Lcall_proc_staged_α_624_0:
                        .quad            .Lcall_proc_staged_α_624_0_s
.Lcall_proc_staged_α_624_0_s:
                        .string          "sumdigit/5"
                        .size            n412_call_proc_staged_bx, .-n412_call_proc_staged_bx
                        .type            n413_var_ref_bx, @function
n413_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n414_call_proc_staged_α
                        .size            n413_var_ref_bx, .-n413_var_ref_bx
                        .type            n414_call_proc_staged_bx, @function
n414_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_proc_staged_α:
                        mov              r11, 228
                        mov              qword ptr [rbp + 1568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_628_200
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_628_201
.Lcall_proc_staged_α_628_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_628_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_628_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_628_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_628_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_628_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_628_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_628_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1576], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_628_5
                        mov              qword ptr [rbp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_628_2
.Lcall_proc_staged_α_628_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_628_2
.Lcall_proc_staged_α_628_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_628_6
                        mov              qword ptr [rbp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_628_2
.Lcall_proc_staged_α_628_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_628_2
.Lcall_proc_staged_α_628_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_628_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n412_call_proc_staged_β
.Lcall_proc_staged_α_628_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_628_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
.Lcall_proc_staged_α_628_29:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n412_call_proc_staged_β
                                                                              jmp   n415_var_α
n414_call_proc_staged_β:
                        mov              r11, 228
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 1568], 0
                        lea              rdi, [rbp + 1584]
                        lea              rsi, [rbp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n412_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
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
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
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
                        test             rax, rax;                            je    n412_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_628_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_628_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_628_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_628_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_628_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n412_call_proc_staged_β
                                                                              jmp   n415_var_α
.Lcall_proc_staged_α_628_0:
                        .quad            .Lcall_proc_staged_α_628_0_s
.Lcall_proc_staged_α_628_0_s:
                        .string          "leftdigit/1"
                        .size            n414_call_proc_staged_bx, .-n414_call_proc_staged_bx
                        .type            n415_var_bx, @function
n415_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n416_var_α
                        .size            n415_var_bx, .-n415_var_bx
                        .type            n416_var_bx, @function
n416_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n417_call_prolog_α
                        .size            n416_var_bx, .-n416_var_bx
                        .type            n417_call_prolog_bx, @function
n417_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 231
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n418_var_α
n417_call_prolog_β:     mov              r11, 231;                            jmp   n414_call_proc_staged_β
                        .size            n417_call_prolog_bx, .-n417_call_prolog_bx
                        .type            n418_var_bx, @function
n418_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n419_var_α
                        .size            n418_var_bx, .-n418_var_bx
                        .type            n419_var_bx, @function
n419_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             mov              r11, 233
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n420_call_prolog_α
                        .size            n419_var_bx, .-n419_var_bx
                        .type            n420_call_prolog_bx, @function
n420_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 234
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n421_var_α
n420_call_prolog_β:     mov              r11, 234;                            jmp   n414_call_proc_staged_β
                        .size            n420_call_prolog_bx, .-n420_call_prolog_bx
                        .type            n421_var_bx, @function
n421_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n422_var_α
                        .size            n421_var_bx, .-n421_var_bx
                        .type            n422_var_bx, @function
n422_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             mov              r11, 236
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n423_call_prolog_α
                        .size            n422_var_bx, .-n422_var_bx
                        .type            n423_call_prolog_bx, @function
n423_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_prolog_α:     mov              r11, 237
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n424_var_α
n423_call_prolog_β:     mov              r11, 237;                            jmp   n414_call_proc_staged_β
                        .size            n423_call_prolog_bx, .-n423_call_prolog_bx
                        .type            n424_var_bx, @function
n424_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n425_var_α
                        .size            n424_var_bx, .-n424_var_bx
                        .type            n425_var_bx, @function
n425_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             mov              r11, 239
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n426_call_prolog_α
                        .size            n425_var_bx, .-n425_var_bx
                        .type            n426_call_prolog_bx, @function
n426_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 240
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n427_var_α
n426_call_prolog_β:     mov              r11, 240;                            jmp   n414_call_proc_staged_β
                        .size            n426_call_prolog_bx, .-n426_call_prolog_bx
                        .type            n427_var_bx, @function
n427_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n428_var_α
                        .size            n427_var_bx, .-n427_var_bx
                        .type            n428_var_bx, @function
n428_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n429_call_prolog_α
                        .size            n428_var_bx, .-n428_var_bx
                        .type            n429_call_prolog_bx, @function
n429_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_call_prolog_α:     mov              r11, 243
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n430_var_α
n429_call_prolog_β:     mov              r11, 243;                            jmp   n414_call_proc_staged_β
                        .size            n429_call_prolog_bx, .-n429_call_prolog_bx
                        .type            n430_var_bx, @function
n430_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n431_var_α
                        .size            n430_var_bx, .-n430_var_bx
                        .type            n431_var_bx, @function
n431_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:             mov              r11, 245
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n432_call_prolog_α
                        .size            n431_var_bx, .-n431_var_bx
                        .type            n432_call_prolog_bx, @function
n432_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 246
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n433_var_ref_α
n432_call_prolog_β:     mov              r11, 246;                            jmp   n414_call_proc_staged_β
                        .size            n432_call_prolog_bx, .-n432_call_prolog_bx
                        .type            n433_var_ref_bx, @function
n433_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n434_call_proc_staged_α
                        .size            n433_var_ref_bx, .-n433_var_ref_bx
                        .type            n434_call_proc_staged_bx, @function
n434_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_proc_staged_α:
                        mov              r11, 248
                        mov              qword ptr [rbp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_662_200
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_662_201
.Lcall_proc_staged_α_662_200:
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
.Lcall_proc_staged_α_662_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_662_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_662_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_662_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_662_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1016], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_662_5
                        mov              qword ptr [rbp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_662_6
                        mov              qword ptr [rbp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_662_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_call_proc_staged_β
.Lcall_proc_staged_α_662_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_662_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
.Lcall_proc_staged_α_662_29:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n435_var_α
n434_call_proc_staged_β:
                        mov              r11, 248
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
                        test             rax, rax;                            je    n414_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
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
                        test             rax, rax;                            je    n414_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_662_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_662_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_662_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n414_call_proc_staged_β
                                                                              jmp   n435_var_α
.Lcall_proc_staged_α_662_0:
                        .quad            .Lcall_proc_staged_α_662_0_s
.Lcall_proc_staged_α_662_0_s:
                        .string          "leftdigit/1"
                        .size            n434_call_proc_staged_bx, .-n434_call_proc_staged_bx
                        .type            n435_var_bx, @function
n435_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 952], rax;          jmp   n436_var_α
                        .size            n435_var_bx, .-n435_var_bx
                        .type            n436_var_bx, @function
n436_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             mov              r11, 250
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 968], rax;          jmp   n437_call_prolog_α
                        .size            n436_var_bx, .-n436_var_bx
                        .type            n437_call_prolog_bx, @function
n437_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 251
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n438_var_α
n437_call_prolog_β:     mov              r11, 251;                            jmp   n434_call_proc_staged_β
                        .size            n437_call_prolog_bx, .-n437_call_prolog_bx
                        .type            n438_var_bx, @function
n438_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 872], rax;          jmp   n439_var_α
                        .size            n438_var_bx, .-n438_var_bx
                        .type            n439_var_bx, @function
n439_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 888], rax;          jmp   n440_call_prolog_α
                        .size            n439_var_bx, .-n439_var_bx
                        .type            n440_call_prolog_bx, @function
n440_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_prolog_α:     mov              r11, 254
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n441_var_α
n440_call_prolog_β:     mov              r11, 254;                            jmp   n434_call_proc_staged_β
                        .size            n440_call_prolog_bx, .-n440_call_prolog_bx
                        .type            n441_var_bx, @function
n441_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:             mov              r11, 255
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 792], rax;          jmp   n442_var_α
                        .size            n441_var_bx, .-n441_var_bx
                        .type            n442_var_bx, @function
n442_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 808], rax;          jmp   n443_call_prolog_α
                        .size            n442_var_bx, .-n442_var_bx
                        .type            n443_call_prolog_bx, @function
n443_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 257
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n444_var_α
n443_call_prolog_β:     mov              r11, 257;                            jmp   n434_call_proc_staged_β
                        .size            n443_call_prolog_bx, .-n443_call_prolog_bx
                        .type            n444_var_bx, @function
n444_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 712], rax;          jmp   n445_var_α
                        .size            n444_var_bx, .-n444_var_bx
                        .type            n445_var_bx, @function
n445_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 728], rax;          jmp   n446_call_prolog_α
                        .size            n445_var_bx, .-n445_var_bx
                        .type            n446_call_prolog_bx, @function
n446_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 260
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n447_var_α
n446_call_prolog_β:     mov              r11, 260;                            jmp   n434_call_proc_staged_β
                        .size            n446_call_prolog_bx, .-n446_call_prolog_bx
                        .type            n447_var_bx, @function
n447_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 632], rax;          jmp   n448_var_α
                        .size            n447_var_bx, .-n447_var_bx
                        .type            n448_var_bx, @function
n448_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             mov              r11, 262
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 648], rax;          jmp   n449_call_prolog_α
                        .size            n448_var_bx, .-n448_var_bx
                        .type            n449_call_prolog_bx, @function
n449_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n450_var_α
n449_call_prolog_β:     mov              r11, 263;                            jmp   n434_call_proc_staged_β
                        .size            n449_call_prolog_bx, .-n449_call_prolog_bx
                        .type            n450_var_bx, @function
n450_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              r11, 264
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 552], rax;          jmp   n451_var_α
                        .size            n450_var_bx, .-n450_var_bx
                        .type            n451_var_bx, @function
n451_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             mov              r11, 265
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 568], rax;          jmp   n452_call_prolog_α
                        .size            n451_var_bx, .-n451_var_bx
                        .type            n452_call_prolog_bx, @function
n452_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n453_var_α
n452_call_prolog_β:     mov              r11, 266;                            jmp   n434_call_proc_staged_β
                        .size            n452_call_prolog_bx, .-n452_call_prolog_bx
                        .type            n453_var_bx, @function
n453_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 472], rax;          jmp   n454_var_α
                        .size            n453_var_bx, .-n453_var_bx
                        .type            n454_var_bx, @function
n454_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 488], rax;          jmp   n455_call_prolog_α
                        .size            n454_var_bx, .-n454_var_bx
                        .type            n455_call_prolog_bx, @function
n455_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_prolog_α:     mov              r11, 269
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n456_var_ref_α
n455_call_prolog_β:     mov              r11, 269;                            jmp   n434_call_proc_staged_β
                        .size            n455_call_prolog_bx, .-n455_call_prolog_bx
                        .type            n456_var_ref_bx, @function
n456_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n457_var_ref_α
                        .size            n456_var_ref_bx, .-n456_var_ref_bx
                        .type            n457_var_ref_bx, @function
n457_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n458_var_ref_α
                        .size            n457_var_ref_bx, .-n457_var_ref_bx
                        .type            n458_var_ref_bx, @function
n458_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n459_var_ref_α
                        .size            n458_var_ref_bx, .-n458_var_ref_bx
                        .type            n459_var_ref_bx, @function
n459_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n460_var_ref_α
                        .size            n459_var_ref_bx, .-n459_var_ref_bx
                        .type            n460_var_ref_bx, @function
n460_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n461_call_proc_staged_α
                        .size            n460_var_ref_bx, .-n460_var_ref_bx
                        .type            n461_call_proc_staged_bx, @function
n461_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_call_proc_staged_α:
                        mov              r11, 275
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_709_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_709_201
.Lcall_proc_staged_α_709_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_709_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_709_202
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_709_203
.Lcall_proc_staged_α_709_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_709_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_709_204
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_709_205
.Lcall_proc_staged_α_709_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_709_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_709_206
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_709_207
.Lcall_proc_staged_α_709_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_709_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_709_208
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_709_209
.Lcall_proc_staged_α_709_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_709_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_709_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_709_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_709_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_709_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_709_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_709_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 312], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_709_5
                        mov              qword ptr [rbp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_709_6
                        mov              qword ptr [rbp + 304], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_709_2
.Lcall_proc_staged_α_709_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_709_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n434_call_proc_staged_β
.Lcall_proc_staged_α_709_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_709_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
.Lcall_proc_staged_α_709_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n462_suspend_α
n461_call_proc_staged_β:
                        mov              r11, 275
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 304], 0
                        lea              rdi, [rbp + 320]
                        lea              rsi, [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n434_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              ecx, 96
                        mov              r8d, 1312
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
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
                        test             rax, rax;                            je    n434_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_709_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_709_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_709_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_709_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_709_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n434_call_proc_staged_β
                                                                              jmp   n462_suspend_α
.Lcall_proc_staged_α_709_0:
                        .quad            .Lcall_proc_staged_α_709_0_s
.Lcall_proc_staged_α_709_0_s:
                        .string          "sumdigit/5"
                        .size            n461_call_proc_staged_bx, .-n461_call_proc_staged_bx
                        .type            n462_suspend_bx, @function
n462_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_suspend_α:         mov              r11, 276
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_711_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4320];         jmp   rax
.Lsuspend_α_711_61:     mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        lea              rdx, [rip + n462_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n462_suspend_β]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 8], rax;            jmp   solve$2F8_γ
n462_suspend_β:         mov              r11, 276;                            jmp   n461_call_proc_staged_β
                        .size            n462_suspend_bx, .-n462_suspend_bx
                        .type            n463_call_prolog_bx, @function
n463_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_call_prolog_α:     mov              r11, 277
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    solve$2F8_ω
                                                                              jmp   solve$2F8_ω
n463_call_prolog_β:     mov              r11, 277;                            jmp   solve$2F8_ω
                        .size            n463_call_prolog_bx, .-n463_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_β:
                                                                              jmp   n462_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lsolve$2F8_α_712_50
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
.Lsolve$2F8_α_712_50:   mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4536]
                        mov              rbp, qword ptr [rbp + 4552]
                        add              rsp, 4560;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ω:
                        mov              rcx, qword ptr [rsp + 4544]
                        mov              rbp, qword ptr [rbp + 4552]
                        add              rsp, 4560;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__leftdigit$2F1:
                        sub              rsp, 2288
                        mov              qword ptr [rsp + 2264], rcx
                        mov              qword ptr [rsp + 2272], rdx
                        mov              qword ptr [rsp + 2280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2224
                        mov              edx, 2256
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
leftdigit$2F1_α_body:
                        lea              rax, [rip + n721_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        .type            n713_call_prolog_bx, @function
n713_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_call_prolog_α:     mov              r11, 278
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_795_102
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_795_101
.Lcall_prolog_α_795_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_795_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_795_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_795_101
.Lcall_prolog_α_795_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_795_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n714_var_ref_α
n713_call_prolog_β:     mov              r11, 278;                            jmp   leftdigit$2F1_ω
                        .size            n713_call_prolog_bx, .-n713_call_prolog_bx
                        .type            n714_var_ref_bx, @function
n714_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n715_lit_integer_α
                        .size            n714_var_ref_bx, .-n714_var_ref_bx
                        .type            n715_lit_integer_bx, @function
n715_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_798_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n716_lit_integer_α
.Llit_integer_α_798_0:  .quad            1
                        .size            n715_lit_integer_bx, .-n715_lit_integer_bx
                        .type            n716_lit_integer_bx, @function
n716_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     mov              r11, 281
                        mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_799_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n717_call_prolog_α
.Llit_integer_α_799_0:  .quad            1
                        .size            n716_lit_integer_bx, .-n716_lit_integer_bx
                        .type            n717_call_prolog_bx, @function
n717_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_call_prolog_α:     mov              r11, 282
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        lea              r8, [rbp + 2128]
.Lcall_prolog_α_800_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_800_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_800_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_800_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_800_110
.Lcall_prolog_α_800_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_800_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_800_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_800_110
.Lcall_prolog_α_800_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_800_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_800_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_800_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_800_110
.Lcall_prolog_α_800_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_800_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_800_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_800_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_800_114
                                                                              jmp   .Lcall_prolog_α_800_118
.Lcall_prolog_α_800_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_800_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_800_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_800_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_800_115
                                                                              jmp   .Lcall_prolog_α_800_114
.Lcall_prolog_α_800_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_800_117
.Lcall_prolog_α_800_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_800_117
.Lcall_prolog_α_800_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_800_117:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              al, 104;                             je    n723_var_ref_α
                                                                              jmp   n718_var_ref_α
n717_call_prolog_β:     mov              r11, 282;                            jmp   n723_var_ref_α
                        .size            n717_call_prolog_bx, .-n717_call_prolog_bx
                        .type            n718_var_ref_bx, @function
n718_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n719_lit_integer_α
                        .size            n718_var_ref_bx, .-n718_var_ref_bx
                        .type            n719_lit_integer_bx, @function
n719_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_integer_α:     mov              r11, 284
                        mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_803_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n720_call_prolog_α
.Llit_integer_α_803_0:  .quad            1
                        .size            n719_lit_integer_bx, .-n719_lit_integer_bx
                        .type            n720_call_prolog_bx, @function
n720_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_call_prolog_α:     mov              r11, 285
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    n722_call_prolog_α
                                                                              jmp   n721_suspend_α
n720_call_prolog_β:     mov              r11, 285;                            jmp   n722_call_prolog_α
                        .size            n720_call_prolog_bx, .-n720_call_prolog_bx
                        .type            n721_suspend_bx, @function
n721_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_suspend_α:         mov              r11, 286
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_806_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_806_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n721_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n721_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n721_suspend_β:         mov              r11, 286;                            jmp   n722_call_prolog_α
                        .size            n721_suspend_bx, .-n721_suspend_bx
                        .type            n722_call_prolog_bx, @function
n722_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_call_prolog_α:     mov              r11, 287
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n723_var_ref_α
n722_call_prolog_β:     mov              r11, 287;                            jmp   leftdigit$2F1_ω
                        .size            n722_call_prolog_bx, .-n722_call_prolog_bx
                        .type            n723_var_ref_bx, @function
n723_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n724_lit_integer_α
                        .size            n723_var_ref_bx, .-n723_var_ref_bx
                        .type            n724_lit_integer_bx, @function
n724_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_integer_α:     mov              r11, 289
                        mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_810_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n725_lit_integer_α
.Llit_integer_α_810_0:  .quad            1
                        .size            n724_lit_integer_bx, .-n724_lit_integer_bx
                        .type            n725_lit_integer_bx, @function
n725_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:     mov              r11, 290
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_811_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n726_call_prolog_α
.Llit_integer_α_811_0:  .quad            2
                        .size            n725_lit_integer_bx, .-n725_lit_integer_bx
                        .type            n726_call_prolog_bx, @function
n726_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_call_prolog_α:     mov              r11, 291
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lcall_prolog_α_812_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_812_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_812_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_812_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_812_110
.Lcall_prolog_α_812_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_812_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_812_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_812_110
.Lcall_prolog_α_812_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_812_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_812_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_812_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_812_110
.Lcall_prolog_α_812_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_812_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_812_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_812_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_812_114
                                                                              jmp   .Lcall_prolog_α_812_118
.Lcall_prolog_α_812_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_812_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_812_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_812_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_812_115
                                                                              jmp   .Lcall_prolog_α_812_114
.Lcall_prolog_α_812_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_812_117
.Lcall_prolog_α_812_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_812_117
.Lcall_prolog_α_812_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_812_117:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n732_var_ref_α
                                                                              jmp   n727_var_ref_α
n726_call_prolog_β:     mov              r11, 291;                            jmp   n732_var_ref_α
                        .size            n726_call_prolog_bx, .-n726_call_prolog_bx
                        .type            n727_var_ref_bx, @function
n727_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_var_ref_α:         mov              r11, 292
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n728_lit_integer_α
                        .size            n727_var_ref_bx, .-n727_var_ref_bx
                        .type            n728_lit_integer_bx, @function
n728_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:     mov              r11, 293
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_815_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n729_call_prolog_α
.Llit_integer_α_815_0:  .quad            2
                        .size            n728_lit_integer_bx, .-n728_lit_integer_bx
                        .type            n729_call_prolog_bx, @function
n729_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_call_prolog_α:     mov              r11, 294
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    n731_call_prolog_α
                                                                              jmp   n730_suspend_α
n729_call_prolog_β:     mov              r11, 294;                            jmp   n731_call_prolog_α
                        .size            n729_call_prolog_bx, .-n729_call_prolog_bx
                        .type            n730_suspend_bx, @function
n730_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_suspend_α:         mov              r11, 295
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_818_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_818_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n730_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n730_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n730_suspend_β:         mov              r11, 295;                            jmp   n731_call_prolog_α
                        .size            n730_suspend_bx, .-n730_suspend_bx
                        .type            n731_call_prolog_bx, @function
n731_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_call_prolog_α:     mov              r11, 296
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n732_var_ref_α
n731_call_prolog_β:     mov              r11, 296;                            jmp   leftdigit$2F1_ω
                        .size            n731_call_prolog_bx, .-n731_call_prolog_bx
                        .type            n732_var_ref_bx, @function
n732_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n733_lit_integer_α
                        .size            n732_var_ref_bx, .-n732_var_ref_bx
                        .type            n733_lit_integer_bx, @function
n733_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_integer_α:     mov              r11, 298
                        mov              qword ptr [rbp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_822_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n734_lit_integer_α
.Llit_integer_α_822_0:  .quad            1
                        .size            n733_lit_integer_bx, .-n733_lit_integer_bx
                        .type            n734_lit_integer_bx, @function
n734_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              r11, 299
                        mov              qword ptr [rbp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_823_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n735_call_prolog_α
.Llit_integer_α_823_0:  .quad            3
                        .size            n734_lit_integer_bx, .-n734_lit_integer_bx
                        .type            n735_call_prolog_bx, @function
n735_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_prolog_α:     mov              r11, 300
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lcall_prolog_α_824_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_824_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_824_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_824_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_824_110
.Lcall_prolog_α_824_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_824_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_824_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_824_110
.Lcall_prolog_α_824_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_824_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_824_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_824_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_824_110
.Lcall_prolog_α_824_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_824_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_824_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_824_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_824_114
                                                                              jmp   .Lcall_prolog_α_824_118
.Lcall_prolog_α_824_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_824_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_824_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_824_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_824_115
                                                                              jmp   .Lcall_prolog_α_824_114
.Lcall_prolog_α_824_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_824_117
.Lcall_prolog_α_824_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_824_117
.Lcall_prolog_α_824_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_824_117:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    n741_var_ref_α
                                                                              jmp   n736_var_ref_α
n735_call_prolog_β:     mov              r11, 300;                            jmp   n741_var_ref_α
                        .size            n735_call_prolog_bx, .-n735_call_prolog_bx
                        .type            n736_var_ref_bx, @function
n736_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n737_lit_integer_α
                        .size            n736_var_ref_bx, .-n736_var_ref_bx
                        .type            n737_lit_integer_bx, @function
n737_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_integer_α:     mov              r11, 302
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_827_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n738_call_prolog_α
.Llit_integer_α_827_0:  .quad            3
                        .size            n737_lit_integer_bx, .-n737_lit_integer_bx
                        .type            n738_call_prolog_bx, @function
n738_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_call_prolog_α:     mov              r11, 303
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n740_call_prolog_α
                                                                              jmp   n739_suspend_α
n738_call_prolog_β:     mov              r11, 303;                            jmp   n740_call_prolog_α
                        .size            n738_call_prolog_bx, .-n738_call_prolog_bx
                        .type            n739_suspend_bx, @function
n739_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_suspend_α:         mov              r11, 304
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_830_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_830_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n739_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n739_suspend_β:         mov              r11, 304;                            jmp   n740_call_prolog_α
                        .size            n739_suspend_bx, .-n739_suspend_bx
                        .type            n740_call_prolog_bx, @function
n740_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_call_prolog_α:     mov              r11, 305
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n741_var_ref_α
n740_call_prolog_β:     mov              r11, 305;                            jmp   leftdigit$2F1_ω
                        .size            n740_call_prolog_bx, .-n740_call_prolog_bx
                        .type            n741_var_ref_bx, @function
n741_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n742_lit_integer_α
                        .size            n741_var_ref_bx, .-n741_var_ref_bx
                        .type            n742_lit_integer_bx, @function
n742_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_integer_α:     mov              r11, 307
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_834_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n743_lit_integer_α
.Llit_integer_α_834_0:  .quad            1
                        .size            n742_lit_integer_bx, .-n742_lit_integer_bx
                        .type            n743_lit_integer_bx, @function
n743_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:     mov              r11, 308
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_835_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n744_call_prolog_α
.Llit_integer_α_835_0:  .quad            4
                        .size            n743_lit_integer_bx, .-n743_lit_integer_bx
                        .type            n744_call_prolog_bx, @function
n744_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_call_prolog_α:     mov              r11, 309
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        lea              r8, [rbp + 1408]
.Lcall_prolog_α_836_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_836_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_836_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_836_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_836_110
.Lcall_prolog_α_836_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_836_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_836_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_836_110
.Lcall_prolog_α_836_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_836_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_836_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_836_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_836_110
.Lcall_prolog_α_836_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_836_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_836_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_836_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_836_114
                                                                              jmp   .Lcall_prolog_α_836_118
.Lcall_prolog_α_836_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_836_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_836_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_836_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_836_115
                                                                              jmp   .Lcall_prolog_α_836_114
.Lcall_prolog_α_836_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_836_117
.Lcall_prolog_α_836_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_836_117
.Lcall_prolog_α_836_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_836_117:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n750_var_ref_α
                                                                              jmp   n745_var_ref_α
n744_call_prolog_β:     mov              r11, 309;                            jmp   n750_var_ref_α
                        .size            n744_call_prolog_bx, .-n744_call_prolog_bx
                        .type            n745_var_ref_bx, @function
n745_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n746_lit_integer_α
                        .size            n745_var_ref_bx, .-n745_var_ref_bx
                        .type            n746_lit_integer_bx, @function
n746_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_integer_α:     mov              r11, 311
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_839_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n747_call_prolog_α
.Llit_integer_α_839_0:  .quad            4
                        .size            n746_lit_integer_bx, .-n746_lit_integer_bx
                        .type            n747_call_prolog_bx, @function
n747_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_call_prolog_α:     mov              r11, 312
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n749_call_prolog_α
                                                                              jmp   n748_suspend_α
n747_call_prolog_β:     mov              r11, 312;                            jmp   n749_call_prolog_α
                        .size            n747_call_prolog_bx, .-n747_call_prolog_bx
                        .type            n748_suspend_bx, @function
n748_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_suspend_α:         mov              r11, 313
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_842_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_842_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n748_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n748_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n748_suspend_β:         mov              r11, 313;                            jmp   n749_call_prolog_α
                        .size            n748_suspend_bx, .-n748_suspend_bx
                        .type            n749_call_prolog_bx, @function
n749_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_call_prolog_α:     mov              r11, 314
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n750_var_ref_α
n749_call_prolog_β:     mov              r11, 314;                            jmp   leftdigit$2F1_ω
                        .size            n749_call_prolog_bx, .-n749_call_prolog_bx
                        .type            n750_var_ref_bx, @function
n750_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n751_lit_integer_α
                        .size            n750_var_ref_bx, .-n750_var_ref_bx
                        .type            n751_lit_integer_bx, @function
n751_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_integer_α:     mov              r11, 316
                        mov              qword ptr [rbp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_846_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n752_lit_integer_α
.Llit_integer_α_846_0:  .quad            1
                        .size            n751_lit_integer_bx, .-n751_lit_integer_bx
                        .type            n752_lit_integer_bx, @function
n752_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_integer_α:     mov              r11, 317
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_847_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n753_call_prolog_α
.Llit_integer_α_847_0:  .quad            5
                        .size            n752_lit_integer_bx, .-n752_lit_integer_bx
                        .type            n753_call_prolog_bx, @function
n753_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n753_call_prolog_α:     mov              r11, 318
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lcall_prolog_α_848_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_848_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_848_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_848_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_848_110
.Lcall_prolog_α_848_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_848_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_848_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_848_110
.Lcall_prolog_α_848_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_848_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_848_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_848_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_848_110
.Lcall_prolog_α_848_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_848_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_848_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_848_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_848_114
                                                                              jmp   .Lcall_prolog_α_848_118
.Lcall_prolog_α_848_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_848_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_848_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_848_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_848_115
                                                                              jmp   .Lcall_prolog_α_848_114
.Lcall_prolog_α_848_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_848_117
.Lcall_prolog_α_848_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_848_117
.Lcall_prolog_α_848_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_848_117:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n759_var_ref_α
                                                                              jmp   n754_var_ref_α
n753_call_prolog_β:     mov              r11, 318;                            jmp   n759_var_ref_α
                        .size            n753_call_prolog_bx, .-n753_call_prolog_bx
                        .type            n754_var_ref_bx, @function
n754_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n754_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n755_lit_integer_α
                        .size            n754_var_ref_bx, .-n754_var_ref_bx
                        .type            n755_lit_integer_bx, @function
n755_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:     mov              r11, 320
                        mov              qword ptr [rbp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_851_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n756_call_prolog_α
.Llit_integer_α_851_0:  .quad            5
                        .size            n755_lit_integer_bx, .-n755_lit_integer_bx
                        .type            n756_call_prolog_bx, @function
n756_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n756_call_prolog_α:     mov              r11, 321
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n758_call_prolog_α
                                                                              jmp   n757_suspend_α
n756_call_prolog_β:     mov              r11, 321;                            jmp   n758_call_prolog_α
                        .size            n756_call_prolog_bx, .-n756_call_prolog_bx
                        .type            n757_suspend_bx, @function
n757_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n757_suspend_α:         mov              r11, 322
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_854_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_854_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n757_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n757_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n757_suspend_β:         mov              r11, 322;                            jmp   n758_call_prolog_α
                        .size            n757_suspend_bx, .-n757_suspend_bx
                        .type            n758_call_prolog_bx, @function
n758_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n758_call_prolog_α:     mov              r11, 323
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n759_var_ref_α
n758_call_prolog_β:     mov              r11, 323;                            jmp   leftdigit$2F1_ω
                        .size            n758_call_prolog_bx, .-n758_call_prolog_bx
                        .type            n759_var_ref_bx, @function
n759_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n760_lit_integer_α
                        .size            n759_var_ref_bx, .-n759_var_ref_bx
                        .type            n760_lit_integer_bx, @function
n760_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_integer_α:     mov              r11, 325
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_858_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n761_lit_integer_α
.Llit_integer_α_858_0:  .quad            1
                        .size            n760_lit_integer_bx, .-n760_lit_integer_bx
                        .type            n761_lit_integer_bx, @function
n761_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:     mov              r11, 326
                        mov              qword ptr [rbp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_859_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n762_call_prolog_α
.Llit_integer_α_859_0:  .quad            6
                        .size            n761_lit_integer_bx, .-n761_lit_integer_bx
                        .type            n762_call_prolog_bx, @function
n762_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_call_prolog_α:     mov              r11, 327
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lcall_prolog_α_860_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_860_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_860_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_860_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_860_110
.Lcall_prolog_α_860_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_860_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_860_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_860_110
.Lcall_prolog_α_860_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_860_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_860_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_860_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_860_110
.Lcall_prolog_α_860_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_860_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_860_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_860_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_860_114
                                                                              jmp   .Lcall_prolog_α_860_118
.Lcall_prolog_α_860_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_860_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_860_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_860_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_860_115
                                                                              jmp   .Lcall_prolog_α_860_114
.Lcall_prolog_α_860_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_860_117
.Lcall_prolog_α_860_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_860_117
.Lcall_prolog_α_860_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_860_117:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n768_var_ref_α
                                                                              jmp   n763_var_ref_α
n762_call_prolog_β:     mov              r11, 327;                            jmp   n768_var_ref_α
                        .size            n762_call_prolog_bx, .-n762_call_prolog_bx
                        .type            n763_var_ref_bx, @function
n763_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n764_lit_integer_α
                        .size            n763_var_ref_bx, .-n763_var_ref_bx
                        .type            n764_lit_integer_bx, @function
n764_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_863_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n765_call_prolog_α
.Llit_integer_α_863_0:  .quad            6
                        .size            n764_lit_integer_bx, .-n764_lit_integer_bx
                        .type            n765_call_prolog_bx, @function
n765_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n765_call_prolog_α:     mov              r11, 330
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n767_call_prolog_α
                                                                              jmp   n766_suspend_α
n765_call_prolog_β:     mov              r11, 330;                            jmp   n767_call_prolog_α
                        .size            n765_call_prolog_bx, .-n765_call_prolog_bx
                        .type            n766_suspend_bx, @function
n766_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_suspend_α:         mov              r11, 331
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_866_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_866_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n766_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n766_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n766_suspend_β:         mov              r11, 331;                            jmp   n767_call_prolog_α
                        .size            n766_suspend_bx, .-n766_suspend_bx
                        .type            n767_call_prolog_bx, @function
n767_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_call_prolog_α:     mov              r11, 332
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n768_var_ref_α
n767_call_prolog_β:     mov              r11, 332;                            jmp   leftdigit$2F1_ω
                        .size            n767_call_prolog_bx, .-n767_call_prolog_bx
                        .type            n768_var_ref_bx, @function
n768_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n769_lit_integer_α
                        .size            n768_var_ref_bx, .-n768_var_ref_bx
                        .type            n769_lit_integer_bx, @function
n769_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_870_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n770_lit_integer_α
.Llit_integer_α_870_0:  .quad            1
                        .size            n769_lit_integer_bx, .-n769_lit_integer_bx
                        .type            n770_lit_integer_bx, @function
n770_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_integer_α:     mov              r11, 335
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n771_call_prolog_α
.Llit_integer_α_871_0:  .quad            7
                        .size            n770_lit_integer_bx, .-n770_lit_integer_bx
                        .type            n771_call_prolog_bx, @function
n771_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_call_prolog_α:     mov              r11, 336
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lcall_prolog_α_872_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_872_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_872_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_872_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_872_110
.Lcall_prolog_α_872_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_872_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_872_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_872_110
.Lcall_prolog_α_872_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_872_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_872_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_872_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_872_110
.Lcall_prolog_α_872_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_872_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_872_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_872_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_872_114
                                                                              jmp   .Lcall_prolog_α_872_118
.Lcall_prolog_α_872_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_872_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_872_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_872_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_872_115
                                                                              jmp   .Lcall_prolog_α_872_114
.Lcall_prolog_α_872_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_872_117
.Lcall_prolog_α_872_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_872_117
.Lcall_prolog_α_872_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_872_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n777_var_ref_α
                                                                              jmp   n772_var_ref_α
n771_call_prolog_β:     mov              r11, 336;                            jmp   n777_var_ref_α
                        .size            n771_call_prolog_bx, .-n771_call_prolog_bx
                        .type            n772_var_ref_bx, @function
n772_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n773_lit_integer_α
                        .size            n772_var_ref_bx, .-n772_var_ref_bx
                        .type            n773_lit_integer_bx, @function
n773_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_lit_integer_α:     mov              r11, 338
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_875_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n774_call_prolog_α
.Llit_integer_α_875_0:  .quad            7
                        .size            n773_lit_integer_bx, .-n773_lit_integer_bx
                        .type            n774_call_prolog_bx, @function
n774_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n774_call_prolog_α:     mov              r11, 339
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n776_call_prolog_α
                                                                              jmp   n775_suspend_α
n774_call_prolog_β:     mov              r11, 339;                            jmp   n776_call_prolog_α
                        .size            n774_call_prolog_bx, .-n774_call_prolog_bx
                        .type            n775_suspend_bx, @function
n775_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n775_suspend_α:         mov              r11, 340
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_878_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_878_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n775_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n775_suspend_β:         mov              r11, 340;                            jmp   n776_call_prolog_α
                        .size            n775_suspend_bx, .-n775_suspend_bx
                        .type            n776_call_prolog_bx, @function
n776_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_call_prolog_α:     mov              r11, 341
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n777_var_ref_α
n776_call_prolog_β:     mov              r11, 341;                            jmp   leftdigit$2F1_ω
                        .size            n776_call_prolog_bx, .-n776_call_prolog_bx
                        .type            n777_var_ref_bx, @function
n777_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n778_lit_integer_α
                        .size            n777_var_ref_bx, .-n777_var_ref_bx
                        .type            n778_lit_integer_bx, @function
n778_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_882_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n779_lit_integer_α
.Llit_integer_α_882_0:  .quad            1
                        .size            n778_lit_integer_bx, .-n778_lit_integer_bx
                        .type            n779_lit_integer_bx, @function
n779_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_integer_α:     mov              r11, 344
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_883_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n780_call_prolog_α
.Llit_integer_α_883_0:  .quad            8
                        .size            n779_lit_integer_bx, .-n779_lit_integer_bx
                        .type            n780_call_prolog_bx, @function
n780_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_prolog_α:     mov              r11, 345
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lcall_prolog_α_884_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_884_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_884_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_884_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_884_110
.Lcall_prolog_α_884_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_884_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_884_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_884_110
.Lcall_prolog_α_884_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_884_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_884_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_884_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_884_110
.Lcall_prolog_α_884_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_884_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_884_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_884_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_884_114
                                                                              jmp   .Lcall_prolog_α_884_118
.Lcall_prolog_α_884_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_884_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_884_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_884_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_884_115
                                                                              jmp   .Lcall_prolog_α_884_114
.Lcall_prolog_α_884_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_884_117
.Lcall_prolog_α_884_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_884_117
.Lcall_prolog_α_884_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_884_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n786_var_ref_α
                                                                              jmp   n781_var_ref_α
n780_call_prolog_β:     mov              r11, 345;                            jmp   n786_var_ref_α
                        .size            n780_call_prolog_bx, .-n780_call_prolog_bx
                        .type            n781_var_ref_bx, @function
n781_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n782_lit_integer_α
                        .size            n781_var_ref_bx, .-n781_var_ref_bx
                        .type            n782_lit_integer_bx, @function
n782_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_integer_α:     mov              r11, 347
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_887_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n783_call_prolog_α
.Llit_integer_α_887_0:  .quad            8
                        .size            n782_lit_integer_bx, .-n782_lit_integer_bx
                        .type            n783_call_prolog_bx, @function
n783_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_call_prolog_α:     mov              r11, 348
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n785_call_prolog_α
                                                                              jmp   n784_suspend_α
n783_call_prolog_β:     mov              r11, 348;                            jmp   n785_call_prolog_α
                        .size            n783_call_prolog_bx, .-n783_call_prolog_bx
                        .type            n784_suspend_bx, @function
n784_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_suspend_α:         mov              r11, 349
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_890_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_890_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n784_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n784_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n784_suspend_β:         mov              r11, 349;                            jmp   n785_call_prolog_α
                        .size            n784_suspend_bx, .-n784_suspend_bx
                        .type            n785_call_prolog_bx, @function
n785_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_call_prolog_α:     mov              r11, 350
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   n786_var_ref_α
n785_call_prolog_β:     mov              r11, 350;                            jmp   leftdigit$2F1_ω
                        .size            n785_call_prolog_bx, .-n785_call_prolog_bx
                        .type            n786_var_ref_bx, @function
n786_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n787_lit_integer_α
                        .size            n786_var_ref_bx, .-n786_var_ref_bx
                        .type            n787_lit_integer_bx, @function
n787_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_integer_α:     mov              r11, 352
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_894_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n788_lit_integer_α
.Llit_integer_α_894_0:  .quad            1
                        .size            n787_lit_integer_bx, .-n787_lit_integer_bx
                        .type            n788_lit_integer_bx, @function
n788_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_integer_α:     mov              r11, 353
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_895_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n789_call_prolog_α
.Llit_integer_α_895_0:  .quad            9
                        .size            n788_lit_integer_bx, .-n788_lit_integer_bx
                        .type            n789_call_prolog_bx, @function
n789_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_call_prolog_α:     mov              r11, 354
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lcall_prolog_α_896_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_896_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_896_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_896_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_896_110
.Lcall_prolog_α_896_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_896_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_896_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_896_110
.Lcall_prolog_α_896_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_896_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_896_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_896_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_896_110
.Lcall_prolog_α_896_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_896_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_896_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_896_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_896_114
                                                                              jmp   .Lcall_prolog_α_896_118
.Lcall_prolog_α_896_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_896_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_896_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_896_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_896_115
                                                                              jmp   .Lcall_prolog_α_896_114
.Lcall_prolog_α_896_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_896_117
.Lcall_prolog_α_896_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_896_117
.Lcall_prolog_α_896_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_896_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n794_call_prolog_α
                                                                              jmp   n790_var_ref_α
n789_call_prolog_β:     mov              r11, 354;                            jmp   n794_call_prolog_α
                        .size            n789_call_prolog_bx, .-n789_call_prolog_bx
                        .type            n790_var_ref_bx, @function
n790_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n791_lit_integer_α
                        .size            n790_var_ref_bx, .-n790_var_ref_bx
                        .type            n791_lit_integer_bx, @function
n791_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_899_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n792_call_prolog_α
.Llit_integer_α_899_0:  .quad            9
                        .size            n791_lit_integer_bx, .-n791_lit_integer_bx
                        .type            n792_call_prolog_bx, @function
n792_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_call_prolog_α:     mov              r11, 357
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n794_call_prolog_α
                                                                              jmp   n793_suspend_α
n792_call_prolog_β:     mov              r11, 357;                            jmp   n794_call_prolog_α
                        .size            n792_call_prolog_bx, .-n792_call_prolog_bx
                        .type            n793_suspend_bx, @function
n793_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_suspend_α:         mov              r11, 358
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_902_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2224];         jmp   rax
.Lsuspend_α_902_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n793_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n793_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   leftdigit$2F1_γ
n793_suspend_β:         mov              r11, 358;                            jmp   n794_call_prolog_α
                        .size            n793_suspend_bx, .-n793_suspend_bx
                        .type            n794_call_prolog_bx, @function
n794_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_call_prolog_α:     mov              r11, 359
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_ω
                                                                              jmp   leftdigit$2F1_ω
n794_call_prolog_β:     mov              r11, 359;                            jmp   leftdigit$2F1_ω
                        .size            n794_call_prolog_bx, .-n794_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_β:
                                                                              jmp   n721_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lleftdigit$2F1_α_903_50
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
.Lleftdigit$2F1_α_903_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              rbp, qword ptr [rbp + 2280]
                        add              rsp, 2288;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_ω:
                        mov              rcx, qword ptr [rsp + 2272]
                        mov              rbp, qword ptr [rbp + 2280]
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
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2664], rcx
                        mov              qword ptr [rsp + 2672], rdx
                        mov              qword ptr [rsp + 2680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2656
                        rep              stosb
main_α_body:
                        .type            n904_var_ref_bx, @function
n904_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n905_call_prolog_α
                        .size            n904_var_ref_bx, .-n904_var_ref_bx
                        .type            n905_call_prolog_bx, @function
n905_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_prolog_α:     mov              r11, 361
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn982: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn982]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n906_var_ref_α
n905_call_prolog_β:     mov              r11, 361;                            jmp   n976_lit_string_α
                        .size            n905_call_prolog_bx, .-n905_call_prolog_bx
                        .type            n906_var_ref_bx, @function
n906_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n907_call_prolog_α
                        .size            n906_var_ref_bx, .-n906_var_ref_bx
                        .type            n907_call_prolog_bx, @function
n907_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_call_prolog_α:     mov              r11, 363
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn986: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn986]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n908_var_ref_α
n907_call_prolog_β:     mov              r11, 363;                            jmp   n976_lit_string_α
                        .size            n907_call_prolog_bx, .-n907_call_prolog_bx
                        .type            n908_var_ref_bx, @function
n908_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n909_var_ref_α
                        .size            n908_var_ref_bx, .-n908_var_ref_bx
                        .type            n909_var_ref_bx, @function
n909_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n910_var_ref_α
                        .size            n909_var_ref_bx, .-n909_var_ref_bx
                        .type            n910_var_ref_bx, @function
n910_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n910_var_ref_α:         mov              r11, 366
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n911_var_ref_α
                        .size            n910_var_ref_bx, .-n910_var_ref_bx
                        .type            n911_var_ref_bx, @function
n911_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n911_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n912_var_ref_α
                        .size            n911_var_ref_bx, .-n911_var_ref_bx
                        .type            n912_var_ref_bx, @function
n912_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n912_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n913_var_ref_α
                        .size            n912_var_ref_bx, .-n912_var_ref_bx
                        .type            n913_var_ref_bx, @function
n913_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n913_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n914_var_ref_α
                        .size            n913_var_ref_bx, .-n913_var_ref_bx
                        .type            n914_var_ref_bx, @function
n914_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n914_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n915_var_ref_α
                        .size            n914_var_ref_bx, .-n914_var_ref_bx
                        .type            n915_var_ref_bx, @function
n915_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n915_var_ref_α:         mov              r11, 371
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n916_call_proc_staged_α
                        .size            n915_var_ref_bx, .-n915_var_ref_bx
                        .type            n916_call_proc_staged_bx, @function
n916_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n916_call_proc_staged_α:
                        mov              r11, 372
                        mov              qword ptr [rbp + 2144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_200
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1004_201
.Lcall_proc_staged_α_1004_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_202
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1004_203
.Lcall_proc_staged_α_1004_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_204
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1004_205
.Lcall_proc_staged_α_1004_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_206
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1004_207
.Lcall_proc_staged_α_1004_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_208
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1004_209
.Lcall_proc_staged_α_1004_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_210
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1004_211
.Lcall_proc_staged_α_1004_210:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_212
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1004_213
.Lcall_proc_staged_α_1004_212:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1004_214
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1004_215
.Lcall_proc_staged_α_1004_214:
                        mov              edi, 7
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1004_215:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1004_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1004_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1004_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1004_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1004_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1004_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2152], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1004_5
                        mov              qword ptr [rbp + 2144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1004_2
.Lcall_proc_staged_α_1004_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1004_2
.Lcall_proc_staged_α_1004_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1004_6
                        mov              qword ptr [rbp + 2144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1004_2
.Lcall_proc_staged_α_1004_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1004_2
.Lcall_proc_staged_α_1004_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1004_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n944_call_prolog_α
.Lcall_proc_staged_α_1004_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1004_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
.Lcall_proc_staged_α_1004_29:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    n944_call_prolog_α
                                                                              jmp   n917_var_ref_α
n916_call_proc_staged_β:
                        mov              r11, 372
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 2144], 0
                        lea              rdi, [rbp + 2160]
                        lea              rsi, [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n944_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
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
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 7
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
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
                        test             rax, rax;                            je    n944_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_1004_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_1004_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1004_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1004_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1004_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    n944_call_prolog_α
                                                                              jmp   n917_var_ref_α
.Lcall_proc_staged_α_1004_0:
                        .quad            .Lcall_proc_staged_α_1004_0_s
.Lcall_proc_staged_α_1004_0_s:
                        .string          "solve/8"
                        .size            n916_call_proc_staged_bx, .-n916_call_proc_staged_bx
                        .type            n917_var_ref_bx, @function
n917_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n917_var_ref_α:         mov              r11, 373
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n918_lit_string_α
                        .size            n917_var_ref_bx, .-n917_var_ref_bx
                        .type            n918_lit_string_bx, @function
n918_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rbp + 1888], 2            # result
                        mov              dword ptr [rbp + 1892], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1007_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n919_var_ref_α
.Llit_string_α_1007_0:  .quad            .Llit_string_α_1007_0_s
.Llit_string_α_1007_0_s:
                        .string          "."
                        .size            n918_lit_string_bx, .-n918_lit_string_bx
                        .type            n919_var_ref_bx, @function
n919_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n919_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n920_lit_string_α
                        .size            n919_var_ref_bx, .-n919_var_ref_bx
                        .type            n920_lit_string_bx, @function
n920_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1010_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n921_var_ref_α
.Llit_string_α_1010_0:  .quad            .Llit_string_α_1010_0_s
.Llit_string_α_1010_0_s:
                        .string          "."
                        .size            n920_lit_string_bx, .-n920_lit_string_bx
                        .type            n921_var_ref_bx, @function
n921_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n921_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n922_lit_string_α
                        .size            n921_var_ref_bx, .-n921_var_ref_bx
                        .type            n922_lit_string_bx, @function
n922_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1013_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n923_var_ref_α
.Llit_string_α_1013_0:  .quad            .Llit_string_α_1013_0_s
.Llit_string_α_1013_0_s:
                        .string          "."
                        .size            n922_lit_string_bx, .-n922_lit_string_bx
                        .type            n923_var_ref_bx, @function
n923_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n923_var_ref_α:         mov              r11, 379
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n924_lit_string_α
                        .size            n923_var_ref_bx, .-n923_var_ref_bx
                        .type            n924_lit_string_bx, @function
n924_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rbp + 1552], 2            # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1016_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n925_var_ref_α
.Llit_string_α_1016_0:  .quad            .Llit_string_α_1016_0_s
.Llit_string_α_1016_0_s:
                        .string          "."
                        .size            n924_lit_string_bx, .-n924_lit_string_bx
                        .type            n925_var_ref_bx, @function
n925_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n925_var_ref_α:         mov              r11, 381
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n926_lit_string_α
                        .size            n925_var_ref_bx, .-n925_var_ref_bx
                        .type            n926_lit_string_bx, @function
n926_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1019_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n927_var_ref_α
.Llit_string_α_1019_0:  .quad            .Llit_string_α_1019_0_s
.Llit_string_α_1019_0_s:
                        .string          "."
                        .size            n926_lit_string_bx, .-n926_lit_string_bx
                        .type            n927_var_ref_bx, @function
n927_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n927_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n928_lit_string_α
                        .size            n927_var_ref_bx, .-n927_var_ref_bx
                        .type            n928_lit_string_bx, @function
n928_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1022_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n929_var_ref_α
.Llit_string_α_1022_0:  .quad            .Llit_string_α_1022_0_s
.Llit_string_α_1022_0_s:
                        .string          "."
                        .size            n928_lit_string_bx, .-n928_lit_string_bx
                        .type            n929_var_ref_bx, @function
n929_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n929_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n930_lit_string_α
                        .size            n929_var_ref_bx, .-n929_var_ref_bx
                        .type            n930_lit_string_bx, @function
n930_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n930_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1025_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n931_var_ref_α
.Llit_string_α_1025_0:  .quad            .Llit_string_α_1025_0_s
.Llit_string_α_1025_0_s:
                        .string          "."
                        .size            n930_lit_string_bx, .-n930_lit_string_bx
                        .type            n931_var_ref_bx, @function
n931_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n931_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n932_lit_string_α
                        .size            n931_var_ref_bx, .-n931_var_ref_bx
                        .type            n932_lit_string_bx, @function
n932_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n932_lit_string_α:      mov              r11, 388
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1028_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n933_var_ref_α
.Llit_string_α_1028_0:  .quad            .Llit_string_α_1028_0_s
.Llit_string_α_1028_0_s:
                        .string          "."
                        .size            n932_lit_string_bx, .-n932_lit_string_bx
                        .type            n933_var_ref_bx, @function
n933_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n933_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n934_lit_string_α
                        .size            n933_var_ref_bx, .-n933_var_ref_bx
                        .type            n934_lit_string_bx, @function
n934_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n934_lit_string_α:      mov              r11, 390
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1031_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n935_call_prolog_α
.Llit_string_α_1031_0:  .quad            .Llit_string_α_1031_0_s
.Llit_string_α_1031_0_s:
                        .string          "[]"
                        .size            n934_lit_string_bx, .-n934_lit_string_bx
                        .type            n935_call_prolog_bx, @function
n935_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n935_call_prolog_α:     mov              r11, 391
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n936_call_prolog_α
n935_call_prolog_β:     mov              r11, 391;                            jmp   main_ω
                        .size            n935_call_prolog_bx, .-n935_call_prolog_bx
                        .type            n936_call_prolog_bx, @function
n936_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n936_call_prolog_α:     mov              r11, 392
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n937_call_prolog_α
n936_call_prolog_β:     mov              r11, 392;                            jmp   main_ω
                        .size            n936_call_prolog_bx, .-n936_call_prolog_bx
                        .type            n937_call_prolog_bx, @function
n937_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n937_call_prolog_α:     mov              r11, 393
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n938_call_prolog_α
n937_call_prolog_β:     mov              r11, 393;                            jmp   main_ω
                        .size            n937_call_prolog_bx, .-n937_call_prolog_bx
                        .type            n938_call_prolog_bx, @function
n938_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n938_call_prolog_α:     mov              r11, 394
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n939_call_prolog_α
n938_call_prolog_β:     mov              r11, 394;                            jmp   main_ω
                        .size            n938_call_prolog_bx, .-n938_call_prolog_bx
                        .type            n939_call_prolog_bx, @function
n939_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n939_call_prolog_α:     mov              r11, 395
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n940_call_prolog_α
n939_call_prolog_β:     mov              r11, 395;                            jmp   main_ω
                        .size            n939_call_prolog_bx, .-n939_call_prolog_bx
                        .type            n940_call_prolog_bx, @function
n940_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n940_call_prolog_α:     mov              r11, 396
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n941_call_prolog_α
n940_call_prolog_β:     mov              r11, 396;                            jmp   main_ω
                        .size            n940_call_prolog_bx, .-n940_call_prolog_bx
                        .type            n941_call_prolog_bx, @function
n941_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n941_call_prolog_α:     mov              r11, 397
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n942_call_prolog_α
n941_call_prolog_β:     mov              r11, 397;                            jmp   main_ω
                        .size            n941_call_prolog_bx, .-n941_call_prolog_bx
                        .type            n942_call_prolog_bx, @function
n942_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n942_call_prolog_α:     mov              r11, 398
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n943_call_prolog_α
n942_call_prolog_β:     mov              r11, 398;                            jmp   n976_lit_string_α
                        .size            n942_call_prolog_bx, .-n942_call_prolog_bx
                        .type            n943_call_prolog_bx, @function
n943_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n943_call_prolog_α:     mov              r11, 399
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
.Lcall_prolog_α_1040_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1040_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1040_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1040_40
.Lcall_prolog_α_1040_55:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1040_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1040_40
.Lcall_prolog_α_1040_56:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1040_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1040_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_1040_40
.Lcall_prolog_α_1040_41:
                        lea              r9, [rbp + 960]
.Lcall_prolog_α_1040_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_1040_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_1040_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1040_42
.Lcall_prolog_α_1040_57:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_1040_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1040_42
.Lcall_prolog_α_1040_58:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1040_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_1040_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1040_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_1040_42
.Lcall_prolog_α_1040_43:
                        cmp              r8, r9;                              je    .Lcall_prolog_α_1040_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1040_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_1040_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1040_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_1040_44
                                                                              jmp   .Lcall_prolog_α_1040_45
.Lcall_prolog_α_1040_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1040_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_1040_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1040_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1040_53
                                                                              jmp   .Lcall_prolog_α_1040_46
.Lcall_prolog_α_1040_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1040_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1040_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_1040_51
.Lcall_prolog_α_1040_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_1040_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_1040_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_1040_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_1040_47
                                                                              jmp   .Lcall_prolog_α_1040_48
.Lcall_prolog_α_1040_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_1040_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_1040_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_1040_51
.Lcall_prolog_α_1040_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_1040_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1040_53
                                                                              jmp   .Lcall_prolog_α_1040_52
.Lcall_prolog_α_1040_49:
                        cmp              dl, 80;                              je    .Lcall_prolog_α_1040_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_1040_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_1040_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_1040_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_1040_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1040_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_1040_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_1040_51
                                                                              jmp   .Lcall_prolog_α_1040_52
.Lcall_prolog_α_1040_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1040_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_1040_53
.Lcall_prolog_α_1040_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_1040_54
.Lcall_prolog_α_1040_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_1040_54
.Lcall_prolog_α_1040_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_1040_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n948_var_ref_α
n943_call_prolog_β:     mov              r11, 399;                            jmp   n976_lit_string_α
                        .size            n943_call_prolog_bx, .-n943_call_prolog_bx
                        .type            n944_call_prolog_bx, @function
n944_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n944_call_prolog_α:     mov              r11, 400
                        .section         .rodata
.Lcall_prolog_α_rkfn1042: .string          "$no_throw_or_fail"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1042]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 1114112
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n945_var_ref_α
n944_call_prolog_β:     mov              r11, 400;                            jmp   n976_lit_string_α
                        .size            n944_call_prolog_bx, .-n944_call_prolog_bx
                        .type            n945_var_ref_bx, @function
n945_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n945_var_ref_α:         mov              r11, 401
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n946_lit_string_α
                        .size            n945_var_ref_bx, .-n945_var_ref_bx
                        .type            n946_lit_string_bx, @function
n946_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n946_lit_string_α:      mov              r11, 402
                        mov              qword ptr [rbp + 1968], 2            # result
                        mov              dword ptr [rbp + 1972], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_1045_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n947_call_prolog_α
.Llit_string_α_1045_0:  .quad            .Llit_string_α_1045_0_s
.Llit_string_α_1045_0_s:
                        .string          "none"
                        .size            n946_lit_string_bx, .-n946_lit_string_bx
                        .type            n947_call_prolog_bx, @function
n947_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n947_call_prolog_α:     mov              r11, 403
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_1046_2]
                                                                              jmp   .Lcall_prolog_α_1046_3
.Lcall_prolog_α_1046_2: .quad            .Lcall_prolog_α_1046_2_s
.Lcall_prolog_α_1046_2_s:
                        .string          "none"
.Lcall_prolog_α_1046_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n948_var_ref_α
n947_call_prolog_β:     mov              r11, 403;                            jmp   n976_lit_string_α
                        .size            n947_call_prolog_bx, .-n947_call_prolog_bx
                        .type            n948_var_ref_bx, @function
n948_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n949_call_prolog_α
                        .size            n948_var_ref_bx, .-n948_var_ref_bx
                        .type            n949_call_prolog_bx, @function
n949_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n949_call_prolog_α:     mov              r11, 405
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1050: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1050]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n950_var_ref_α
n949_call_prolog_β:     mov              r11, 405;                            jmp   n976_lit_string_α
                        .size            n949_call_prolog_bx, .-n949_call_prolog_bx
                        .type            n950_var_ref_bx, @function
n950_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n950_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n951_call_prolog_α
                        .size            n950_var_ref_bx, .-n950_var_ref_bx
                        .type            n951_call_prolog_bx, @function
n951_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n951_call_prolog_α:     mov              r11, 407
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1054: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1054]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n952_var_α
n951_call_prolog_β:     mov              r11, 407;                            jmp   n976_lit_string_α
                        .size            n951_call_prolog_bx, .-n951_call_prolog_bx
                        .type            n952_var_bx, @function
n952_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n952_var_α:             mov              r11, 408
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 824], rax;          jmp   n953_call_prolog_α
                        .size            n952_var_bx, .-n952_var_bx
                        .type            n953_call_prolog_bx, @function
n953_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_call_prolog_α:     mov              r11, 409
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1058: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1058]
                        lea              rsi, [rbp + 800]
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
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n954_lit_string_α
n953_call_prolog_β:     mov              r11, 409;                            jmp   n976_lit_string_α
                        .size            n953_call_prolog_bx, .-n953_call_prolog_bx
                        .type            n954_lit_string_bx, @function
n954_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_string_α:      mov              r11, 410
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_1059_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n955_call_prolog_α
.Llit_string_α_1059_0:  .quad            .Llit_string_α_1059_0_s
.Llit_string_α_1059_0_s:
                        .string          ""
                        .size            n954_lit_string_bx, .-n954_lit_string_bx
                        .type            n955_call_prolog_bx, @function
n955_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_call_prolog_α:     mov              r11, 411
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1061: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1061]
                        lea              rsi, [rbp + 752]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n956_var_ref_α
n955_call_prolog_β:     mov              r11, 411;                            jmp   n976_lit_string_α
                        .size            n955_call_prolog_bx, .-n955_call_prolog_bx
                        .type            n956_var_ref_bx, @function
n956_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_var_ref_α:         mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n957_var_α
                        .size            n956_var_ref_bx, .-n956_var_ref_bx
                        .type            n957_var_bx, @function
n957_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_var_α:             mov              r11, 413
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 712], rax;          jmp   n958_var_α
                        .size            n957_var_bx, .-n957_var_bx
                        .type            n958_var_bx, @function
n958_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:             mov              r11, 414
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 728], rax;          jmp   n959_call_prolog_α
                        .size            n958_var_bx, .-n958_var_bx
                        .type            n959_call_prolog_bx, @function
n959_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n959_call_prolog_α:     mov              r11, 415
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n960_call_prolog_α
n959_call_prolog_β:     mov              r11, 415;                            jmp   n976_lit_string_α
                        .size            n959_call_prolog_bx, .-n959_call_prolog_bx
                        .type            n960_call_prolog_bx, @function
n960_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n960_call_prolog_α:     mov              r11, 416
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n961_var_ref_α
n960_call_prolog_β:     mov              r11, 416;                            jmp   n976_lit_string_α
                        .size            n960_call_prolog_bx, .-n960_call_prolog_bx
                        .type            n961_var_ref_bx, @function
n961_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n961_var_ref_α:         mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n962_var_α
                        .size            n961_var_ref_bx, .-n961_var_ref_bx
                        .type            n962_var_bx, @function
n962_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n962_var_α:             mov              r11, 418
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 552], rax;          jmp   n963_var_α
                        .size            n962_var_bx, .-n962_var_bx
                        .type            n963_var_bx, @function
n963_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n963_var_α:             mov              r11, 419
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 568], rax;          jmp   n964_call_prolog_α
                        .size            n963_var_bx, .-n963_var_bx
                        .type            n964_call_prolog_bx, @function
n964_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n964_call_prolog_α:     mov              r11, 420
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n965_call_prolog_α
n964_call_prolog_β:     mov              r11, 420;                            jmp   n976_lit_string_α
                        .size            n964_call_prolog_bx, .-n964_call_prolog_bx
                        .type            n965_call_prolog_bx, @function
n965_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n965_call_prolog_α:     mov              r11, 421
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n966_lit_string_α
n965_call_prolog_β:     mov              r11, 421;                            jmp   n976_lit_string_α
                        .size            n965_call_prolog_bx, .-n965_call_prolog_bx
                        .type            n966_lit_string_bx, @function
n966_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n966_lit_string_α:      mov              r11, 422
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_1078_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n967_lit_string_α
.Llit_string_α_1078_0:  .quad            .Llit_string_α_1078_0_s
.Llit_string_α_1078_0_s:
                        .string          "user_error"
                        .size            n966_lit_string_bx, .-n966_lit_string_bx
                        .type            n967_lit_string_bx, @function
n967_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_string_α:      mov              r11, 423
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 45
                        mov              rax, qword ptr [rip + .Llit_string_α_1079_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n968_lit_string_α
.Llit_string_α_1079_0:  .quad            .Llit_string_α_1079_0_s
.Llit_string_α_1079_0_s:
                        .string          "BENCH kernel=sendmore work_us=~w work_ms=~w~n"
                        .size            n967_lit_string_bx, .-n967_lit_string_bx
                        .type            n968_lit_string_bx, @function
n968_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n968_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1080_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n969_var_ref_α
.Llit_string_α_1080_0:  .quad            .Llit_string_α_1080_0_s
.Llit_string_α_1080_0_s:
                        .string          "."
                        .size            n968_lit_string_bx, .-n968_lit_string_bx
                        .type            n969_var_ref_bx, @function
n969_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_var_ref_α:         mov              r11, 425
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n970_lit_string_α
                        .size            n969_var_ref_bx, .-n969_var_ref_bx
                        .type            n970_lit_string_bx, @function
n970_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_lit_string_α:      mov              r11, 426
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1083_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n971_var_ref_α
.Llit_string_α_1083_0:  .quad            .Llit_string_α_1083_0_s
.Llit_string_α_1083_0_s:
                        .string          "."
                        .size            n970_lit_string_bx, .-n970_lit_string_bx
                        .type            n971_var_ref_bx, @function
n971_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_var_ref_α:         mov              r11, 427
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n972_lit_string_α
                        .size            n971_var_ref_bx, .-n971_var_ref_bx
                        .type            n972_lit_string_bx, @function
n972_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n972_lit_string_α:      mov              r11, 428
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1086_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n973_call_prolog_α
.Llit_string_α_1086_0:  .quad            .Llit_string_α_1086_0_s
.Llit_string_α_1086_0_s:
                        .string          "[]"
                        .size            n972_lit_string_bx, .-n972_lit_string_bx
                        .type            n973_call_prolog_bx, @function
n973_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n973_call_prolog_α:     mov              r11, 429
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n974_call_prolog_α
n973_call_prolog_β:     mov              r11, 429;                            jmp   main_ω
                        .size            n973_call_prolog_bx, .-n973_call_prolog_bx
                        .type            n974_call_prolog_bx, @function
n974_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n974_call_prolog_α:     mov              r11, 430
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   n975_call_prolog_α
n974_call_prolog_β:     mov              r11, 430;                            jmp   n976_lit_string_α
                        .size            n974_call_prolog_bx, .-n974_call_prolog_bx
                        .type            n975_call_prolog_bx, @function
n975_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n975_call_prolog_α:     mov              r11, 431
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1090: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1090]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n976_lit_string_α
                                                                              jmp   main_γ
n975_call_prolog_β:     mov              r11, 431;                            jmp   n976_lit_string_α
                        .size            n975_call_prolog_bx, .-n975_call_prolog_bx
                        .type            n976_lit_string_bx, @function
n976_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_string_α:      mov              r11, 432
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_1091_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n977_lit_string_α
.Llit_string_α_1091_0:  .quad            .Llit_string_α_1091_0_s
.Llit_string_α_1091_0_s:
                        .string          "user_error"
                        .size            n976_lit_string_bx, .-n976_lit_string_bx
                        .type            n977_lit_string_bx, @function
n977_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n977_lit_string_α:      mov              r11, 433
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_1092_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n978_call_prolog_α
.Llit_string_α_1092_0:  .quad            .Llit_string_α_1092_0_s
.Llit_string_α_1092_0_s:
                        .string          "Warning: initialization goal failed: main/0\n"
                        .size            n977_lit_string_bx, .-n977_lit_string_bx
                        .type            n978_call_prolog_bx, @function
n978_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n978_call_prolog_α:     mov              r11, 434
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn1094: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn1094]
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
n978_call_prolog_β:     mov              r11, 434;                            jmp   main_ω
                        .size            n978_call_prolog_bx, .-n978_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2664]
                        mov              rbp, qword ptr [rbp + 2680]
                        add              rsp, 2688;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2672]
                        mov              rbp, qword ptr [rbp + 2680]
                        add              rsp, 2688;                           jmp   rcx
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
                        .long            1424
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
