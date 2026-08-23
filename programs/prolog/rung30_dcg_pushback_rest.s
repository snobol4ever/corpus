                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__digits$2F3:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              qword ptr [rsp + 1480], rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1456
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
digits$2F3_α_body:
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rsp + 1344], rax
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
                        cmp              al, 104;                             je    digits$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n3_lit_string_α
.Lx48_0:                .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n4_call_builtin_prolog_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n27_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n7_var_ref_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
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
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        lea              r8, [rsp + 1056]
.Lx59_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx59_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx59_41
                        cmp              esi, 1;                              jne   .Lx59_55
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_55:               cmp              esi, 2;                              jne   .Lx59_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx59_41
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_56:               cmp              al, 72;                              jne   .Lx59_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx59_41
                        cmp              rax, r8;                             je    .Lx59_41
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_41:               lea              r9, [rsp + 1072]
.Lx59_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx59_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx59_43
                        cmp              esi, 1;                              jne   .Lx59_57
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_57:               cmp              esi, 2;                              jne   .Lx59_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx59_43
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_58:               cmp              al, 72;                              jne   .Lx59_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx59_43
                        cmp              rax, r9;                             je    .Lx59_43
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_43:               cmp              r8, r9;                              je    .Lx59_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx59_44
                        cmp              al, 104;                             je    .Lx59_44
                        cmp              al, 72;                              jne   .Lx59_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx59_44
                                                                              jmp   .Lx59_45
.Lx59_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx59_53
                        cmp              al, 104;                             je    .Lx59_53
                        cmp              al, 72;                              jne   .Lx59_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx59_53
                                                                              jmp   .Lx59_46
.Lx59_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx59_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx59_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx59_51
.Lx59_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx59_47
                        cmp              al, 104;                             je    .Lx59_47
                        cmp              al, 72;                              jne   .Lx59_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx59_47
                                                                              jmp   .Lx59_48
.Lx59_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx59_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx59_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx59_51
.Lx59_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx59_49
                        cmp              dl, 80;                              je    .Lx59_53
                                                                              jmp   .Lx59_52
.Lx59_49:               cmp              dl, 80;                              je    .Lx59_52
                        cmp              cl, 5;                               je    .Lx59_53
                        cmp              dl, 5;                               je    .Lx59_53
                        cmp              cl, 3;                               jne   .Lx59_50
                        cmp              dl, 3;                               jne   .Lx59_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx59_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx59_51
                                                                              jmp   .Lx59_52
.Lx59_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx59_53
.Lx59_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx59_54
.Lx59_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx59_54
.Lx59_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx59_54:               mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
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
.Lx64_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx64_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_41
                        cmp              esi, 1;                              jne   .Lx64_55
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_55:               cmp              esi, 2;                              jne   .Lx64_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_41
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_56:               cmp              al, 72;                              jne   .Lx64_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_41
                        cmp              rax, r8;                             je    .Lx64_41
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_41:               lea              r9, [rsp + 992]
.Lx64_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx64_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx64_43
                        cmp              esi, 1;                              jne   .Lx64_57
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_57:               cmp              esi, 2;                              jne   .Lx64_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_43
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_58:               cmp              al, 72;                              jne   .Lx64_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx64_43
                        cmp              rax, r9;                             je    .Lx64_43
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_43:               cmp              r8, r9;                              je    .Lx64_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx64_44
                        cmp              al, 104;                             je    .Lx64_44
                        cmp              al, 72;                              jne   .Lx64_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx64_44
                                                                              jmp   .Lx64_45
.Lx64_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx64_53
                        cmp              al, 104;                             je    .Lx64_53
                        cmp              al, 72;                              jne   .Lx64_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx64_53
                                                                              jmp   .Lx64_46
.Lx64_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx64_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx64_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx64_51
.Lx64_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx64_47
                        cmp              al, 104;                             je    .Lx64_47
                        cmp              al, 72;                              jne   .Lx64_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx64_47
                                                                              jmp   .Lx64_48
.Lx64_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx64_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx64_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx64_51
.Lx64_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx64_49
                        cmp              dl, 80;                              je    .Lx64_53
                                                                              jmp   .Lx64_52
.Lx64_49:               cmp              dl, 80;                              je    .Lx64_52
                        cmp              cl, 5;                               je    .Lx64_53
                        cmp              dl, 5;                               je    .Lx64_53
                        cmp              cl, 3;                               jne   .Lx64_50
                        cmp              dl, 3;                               jne   .Lx64_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx64_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx64_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx64_51
                                                                              jmp   .Lx64_52
.Lx64_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx64_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx64_53
.Lx64_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx64_54
.Lx64_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx64_54
.Lx64_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_54:               mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
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
.Lx69_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx69_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_41
                        cmp              esi, 1;                              jne   .Lx69_55
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_55:               cmp              esi, 2;                              jne   .Lx69_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_41
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_56:               cmp              al, 72;                              jne   .Lx69_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_41
                        cmp              rax, r8;                             je    .Lx69_41
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_41:               lea              r9, [rsp + 912]
.Lx69_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx69_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_43
                        cmp              esi, 1;                              jne   .Lx69_57
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_57:               cmp              esi, 2;                              jne   .Lx69_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_43
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_58:               cmp              al, 72;                              jne   .Lx69_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_43
                        cmp              rax, r9;                             je    .Lx69_43
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_43:               cmp              r8, r9;                              je    .Lx69_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx69_44
                        cmp              al, 104;                             je    .Lx69_44
                        cmp              al, 72;                              jne   .Lx69_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx69_44
                                                                              jmp   .Lx69_45
.Lx69_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_53
                        cmp              al, 104;                             je    .Lx69_53
                        cmp              al, 72;                              jne   .Lx69_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_53
                                                                              jmp   .Lx69_46
.Lx69_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx69_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx69_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx69_51
.Lx69_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_47
                        cmp              al, 104;                             je    .Lx69_47
                        cmp              al, 72;                              jne   .Lx69_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_47
                                                                              jmp   .Lx69_48
.Lx69_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx69_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx69_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx69_51
.Lx69_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx69_49
                        cmp              dl, 80;                              je    .Lx69_53
                                                                              jmp   .Lx69_52
.Lx69_49:               cmp              dl, 80;                              je    .Lx69_52
                        cmp              cl, 5;                               je    .Lx69_53
                        cmp              dl, 5;                               je    .Lx69_53
                        cmp              cl, 3;                               jne   .Lx69_50
                        cmp              dl, 3;                               jne   .Lx69_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx69_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx69_51
                                                                              jmp   .Lx69_52
.Lx69_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx69_53
.Lx69_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx69_54
.Lx69_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx69_54
.Lx69_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx69_54:               mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n26_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n20_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α: mov              r11, 21
                        lea              rsi, [rsp + 832]
                        lea              rdx, [rsp + 848]
                        lea              rcx, [rsp + 864]
                        call             digit$2F3_dcα;                       jmp   .Lx77_2
.Lx77_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx77_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
.Lx77_29:               mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n26_call_builtin_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_proc_staged_β: mov              r11, 21;                             jmp   n26_call_builtin_prolog_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "digit/3"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        mov              qword ptr [rsp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx85_200
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx85_201
.Lx85_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx85_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx85_202
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx85_203
.Lx85_202:              mov              edi, 1
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
.Lx85_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx85_204
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx85_205
.Lx85_204:              mov              edi, 2
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
.Lx85_205:              lea              rax, [rip + .Lx85_7]
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
                        test             rax, rax;                            je    .Lx85_1
                        lea              rcx, [rip + .Lx85_3]
                        lea              rdx, [rip + .Lx85_4];                jmp   rax
.Lx85_3:                mov              qword ptr [rsp + 680], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx85_5
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx85_2
.Lx85_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx85_2
.Lx85_4:                mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx85_6
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx85_2
.Lx85_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx85_2
.Lx85_1:                call             rt_faildescr@PLT
.Lx85_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx85_29
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
.Lx85_29:               mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n20_call_proc_staged_β
                                                                              jmp   n25_suspend_α
n24_call_proc_staged_β: mov              r11, 25
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 672], 0
                        lea              rdi, [rsp + 688]
                        lea              rsi, [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n20_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              ecx, 64
                        mov              r8d, 1344
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 2
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
                        test             rax, rax;                            je    n20_call_proc_staged_β
                        lea              r8, [rip + .Lx85_7]
                        push             r8
                        lea              rcx, [rip + .Lx85_3]
                        lea              rdx, [rip + .Lx85_4];                jmp   rax
.Lx85_7:                add              rsp, 8
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n20_call_proc_staged_β
                                                                              jmp   n25_suspend_α
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "digits/3"
#-----------------------------------------------------------------------------------------------------------------------
n25_suspend_α:          mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx87_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1344];         jmp   rax
.Lx87_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n25_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n25_suspend_β]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   digits$2F3_γ
n25_suspend_β:          mov              r11, 26;                             jmp   n24_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 72]
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
                        cmp              al, 104;                             je    digits$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n29_lit_string_α
.Lx91_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 2
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n30_call_builtin_prolog_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        lea              r8, [rsp + 480]
.Lx93_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx93_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx93_111
                        cmp              esi, 1;                              jne   .Lx93_112
                        mov              r8, rax;                             jmp   .Lx93_110
.Lx93_112:              cmp              esi, 2;                              jne   .Lx93_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx93_111
                        mov              r8, rax;                             jmp   .Lx93_110
.Lx93_113:              cmp              al, 72;                              jne   .Lx93_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx93_111
                        cmp              rax, r8;                             je    .Lx93_111
                        mov              r8, rax;                             jmp   .Lx93_110
.Lx93_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx93_114
                        cmp              al, 104;                             je    .Lx93_114
                        cmp              al, 72;                              jne   .Lx93_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx93_114
                                                                              jmp   .Lx93_118
.Lx93_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx93_115
                        cmp              al, 3;                               je    .Lx93_114
                        cmp              al, 2;                               jne   .Lx93_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx93_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx93_114
                                                                              jmp   .Lx93_116
.Lx93_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx93_117
.Lx93_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx93_117
.Lx93_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx93_117:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 2
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n33_call_builtin_prolog_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              rsi, qword ptr [rip + .Lx97_2];      jmp   .Lx97_3
.Lx97_2:                .quad            .Lx97_2_s
.Lx97_2_s:              .string          "[]"
.Lx97_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n44_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n44_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
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
.Lx102_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx102_41
                        cmp              esi, 1;                              jne   .Lx102_55
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_55:              cmp              esi, 2;                              jne   .Lx102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx102_41
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_56:              cmp              al, 72;                              jne   .Lx102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx102_41
                        cmp              rax, r8;                             je    .Lx102_41
                        mov              r8, rax;                             jmp   .Lx102_40
.Lx102_41:              lea              r9, [rsp + 336]
.Lx102_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx102_43
                        cmp              esi, 1;                              jne   .Lx102_57
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_57:              cmp              esi, 2;                              jne   .Lx102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx102_43
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_58:              cmp              al, 72;                              jne   .Lx102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx102_43
                        cmp              rax, r9;                             je    .Lx102_43
                        mov              r9, rax;                             jmp   .Lx102_42
.Lx102_43:              cmp              r8, r9;                              je    .Lx102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx102_44
                        cmp              al, 104;                             je    .Lx102_44
                        cmp              al, 72;                              jne   .Lx102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx102_44
                                                                              jmp   .Lx102_45
.Lx102_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx102_53
                        cmp              al, 104;                             je    .Lx102_53
                        cmp              al, 72;                              jne   .Lx102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx102_53
                                                                              jmp   .Lx102_46
.Lx102_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx102_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx102_51
.Lx102_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx102_47
                        cmp              al, 104;                             je    .Lx102_47
                        cmp              al, 72;                              jne   .Lx102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx102_47
                                                                              jmp   .Lx102_48
.Lx102_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx102_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx102_51
.Lx102_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx102_49
                        cmp              dl, 80;                              je    .Lx102_53
                                                                              jmp   .Lx102_52
.Lx102_49:              cmp              dl, 80;                              je    .Lx102_52
                        cmp              cl, 5;                               je    .Lx102_53
                        cmp              dl, 5;                               je    .Lx102_53
                        cmp              cl, 3;                               jne   .Lx102_50
                        cmp              dl, 3;                               jne   .Lx102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx102_51
                                                                              jmp   .Lx102_52
.Lx102_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx102_53
.Lx102_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx102_54
.Lx102_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx102_54
.Lx102_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx102_54:              mov              qword ptr [rsp + 304], rax
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
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
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
.Lx107_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx107_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx107_41
                        cmp              esi, 1;                              jne   .Lx107_55
                        mov              r8, rax;                             jmp   .Lx107_40
.Lx107_55:              cmp              esi, 2;                              jne   .Lx107_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_41
                        mov              r8, rax;                             jmp   .Lx107_40
.Lx107_56:              cmp              al, 72;                              jne   .Lx107_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx107_41
                        cmp              rax, r8;                             je    .Lx107_41
                        mov              r8, rax;                             jmp   .Lx107_40
.Lx107_41:              lea              r9, [rsp + 256]
.Lx107_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx107_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_43
                        cmp              esi, 1;                              jne   .Lx107_57
                        mov              r9, rax;                             jmp   .Lx107_42
.Lx107_57:              cmp              esi, 2;                              jne   .Lx107_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_43
                        mov              r9, rax;                             jmp   .Lx107_42
.Lx107_58:              cmp              al, 72;                              jne   .Lx107_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_43
                        cmp              rax, r9;                             je    .Lx107_43
                        mov              r9, rax;                             jmp   .Lx107_42
.Lx107_43:              cmp              r8, r9;                              je    .Lx107_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx107_44
                        cmp              al, 104;                             je    .Lx107_44
                        cmp              al, 72;                              jne   .Lx107_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx107_44
                                                                              jmp   .Lx107_45
.Lx107_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx107_53
                        cmp              al, 104;                             je    .Lx107_53
                        cmp              al, 72;                              jne   .Lx107_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx107_53
                                                                              jmp   .Lx107_46
.Lx107_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx107_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx107_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx107_51
.Lx107_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx107_47
                        cmp              al, 104;                             je    .Lx107_47
                        cmp              al, 72;                              jne   .Lx107_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx107_47
                                                                              jmp   .Lx107_48
.Lx107_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx107_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx107_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx107_51
.Lx107_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx107_49
                        cmp              dl, 80;                              je    .Lx107_53
                                                                              jmp   .Lx107_52
.Lx107_49:              cmp              dl, 80;                              je    .Lx107_52
                        cmp              cl, 5;                               je    .Lx107_53
                        cmp              dl, 5;                               je    .Lx107_53
                        cmp              cl, 3;                               jne   .Lx107_50
                        cmp              dl, 3;                               jne   .Lx107_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx107_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx107_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx107_51
                                                                              jmp   .Lx107_52
.Lx107_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx107_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx107_53
.Lx107_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx107_54
.Lx107_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx107_54
.Lx107_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx107_54:              mov              qword ptr [rsp + 224], rax
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
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
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
.Lx112_41:              lea              r9, [rsp + 176]
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
.Lx112_54:              mov              qword ptr [rsp + 144], rax
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
                        test             rax, rax;                            je    .Lx114_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1344];         jmp   rax
.Lx114_61:              mov              rdi, qword ptr [rsp + 64]
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
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   digits$2F3_γ
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
                        cmp              al, 104;                             je    digits$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   digits$2F3_ω
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
digits$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
digits$2F3_β:
                                                                              jmp   n25_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
digits$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx115_50
                        mov              qword ptr [rsp + 1344], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1344];         jmp   rax
.Lx115_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1464]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digits$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1472]
                        add              rsp, 1488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__digit$2F3:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              qword ptr [rsp + 936], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 912
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
digit$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 46
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx144_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx144_101
.Lx144_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx144_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx144_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx144_101
.Lx144_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx144_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    digit$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_var_ref_α
n116_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        lea              r8, [rsp + 768]
.Lx149_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx149_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx149_41
                        cmp              esi, 1;                              jne   .Lx149_55
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_55:              cmp              esi, 2;                              jne   .Lx149_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx149_41
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_56:              cmp              al, 72;                              jne   .Lx149_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx149_41
                        cmp              rax, r8;                             je    .Lx149_41
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_41:              lea              r9, [rsp + 784]
.Lx149_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx149_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx149_43
                        cmp              esi, 1;                              jne   .Lx149_57
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_57:              cmp              esi, 2;                              jne   .Lx149_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx149_43
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_58:              cmp              al, 72;                              jne   .Lx149_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx149_43
                        cmp              rax, r9;                             je    .Lx149_43
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_43:              cmp              r8, r9;                              je    .Lx149_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx149_44
                        cmp              al, 104;                             je    .Lx149_44
                        cmp              al, 72;                              jne   .Lx149_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx149_44
                                                                              jmp   .Lx149_45
.Lx149_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx149_53
                        cmp              al, 104;                             je    .Lx149_53
                        cmp              al, 72;                              jne   .Lx149_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx149_53
                                                                              jmp   .Lx149_46
.Lx149_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx149_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx149_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx149_51
.Lx149_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx149_47
                        cmp              al, 104;                             je    .Lx149_47
                        cmp              al, 72;                              jne   .Lx149_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx149_47
                                                                              jmp   .Lx149_48
.Lx149_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx149_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx149_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx149_51
.Lx149_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx149_49
                        cmp              dl, 80;                              je    .Lx149_53
                                                                              jmp   .Lx149_52
.Lx149_49:              cmp              dl, 80;                              je    .Lx149_52
                        cmp              cl, 5;                               je    .Lx149_53
                        cmp              dl, 5;                               je    .Lx149_53
                        cmp              cl, 3;                               jne   .Lx149_50
                        cmp              dl, 3;                               jne   .Lx149_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx149_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx149_51
                                                                              jmp   .Lx149_52
.Lx149_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx149_53
.Lx149_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx149_54
.Lx149_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx149_54
.Lx149_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx149_54:              mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n122_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              r11, 52
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
.Lx154_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              esi, 1;                              jne   .Lx154_55
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_55:              cmp              esi, 2;                              jne   .Lx154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_56:              cmp              al, 72;                              jne   .Lx154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              rax, r8;                             je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_41:              lea              r9, [rsp + 704]
.Lx154_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              esi, 1;                              jne   .Lx154_57
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_57:              cmp              esi, 2;                              jne   .Lx154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_58:              cmp              al, 72;                              jne   .Lx154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              rax, r9;                             je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_43:              cmp              r8, r9;                              je    .Lx154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx154_44
                        cmp              al, 104;                             je    .Lx154_44
                        cmp              al, 72;                              jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx154_44
                                                                              jmp   .Lx154_45
.Lx154_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_53
                        cmp              al, 104;                             je    .Lx154_53
                        cmp              al, 72;                              jne   .Lx154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_53
                                                                              jmp   .Lx154_46
.Lx154_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx154_51
.Lx154_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_47
                        cmp              al, 104;                             je    .Lx154_47
                        cmp              al, 72;                              jne   .Lx154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_47
                                                                              jmp   .Lx154_48
.Lx154_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx154_51
.Lx154_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx154_49
                        cmp              dl, 80;                              je    .Lx154_53
                                                                              jmp   .Lx154_52
.Lx154_49:              cmp              dl, 80;                              je    .Lx154_52
                        cmp              cl, 5;                               je    .Lx154_53
                        cmp              dl, 5;                               je    .Lx154_53
                        cmp              cl, 3;                               jne   .Lx154_50
                        cmp              dl, 3;                               jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx154_51
                                                                              jmp   .Lx154_52
.Lx154_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx154_53
.Lx154_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx154_54
.Lx154_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx154_54
.Lx154_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx154_54:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_var_ref_α
n122_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 848]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              r11, 55
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
.Lx159_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              esi, 1;                              jne   .Lx159_55
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_55:              cmp              esi, 2;                              jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_56:              cmp              al, 72;                              jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              rax, r8;                             je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_41:              lea              r9, [rsp + 624]
.Lx159_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              esi, 1;                              jne   .Lx159_57
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_57:              cmp              esi, 2;                              jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_58:              cmp              al, 72;                              jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              rax, r9;                             je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_43:              cmp              r8, r9;                              je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx159_44
                        cmp              al, 104;                             je    .Lx159_44
                        cmp              al, 72;                              jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx159_44
                                                                              jmp   .Lx159_45
.Lx159_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_53
                        cmp              al, 104;                             je    .Lx159_53
                        cmp              al, 72;                              jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_53
                                                                              jmp   .Lx159_46
.Lx159_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx159_51
.Lx159_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_47
                        cmp              al, 104;                             je    .Lx159_47
                        cmp              al, 72;                              jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_47
                                                                              jmp   .Lx159_48
.Lx159_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx159_51
.Lx159_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx159_49
                        cmp              dl, 80;                              je    .Lx159_53
                                                                              jmp   .Lx159_52
.Lx159_49:              cmp              dl, 80;                              je    .Lx159_52
                        cmp              cl, 5;                               je    .Lx159_53
                        cmp              dl, 5;                               je    .Lx159_53
                        cmp              cl, 3;                               jne   .Lx159_50
                        cmp              dl, 3;                               jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx159_51
                                                                              jmp   .Lx159_52
.Lx159_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx159_53
.Lx159_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx159_54
.Lx159_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx159_54
.Lx159_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx159_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_var_ref_α
n125_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n128_var_ref_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 832]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx168_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx168_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx168_41
                        cmp              esi, 1;                              jne   .Lx168_55
                        mov              r8, rax;                             jmp   .Lx168_40
.Lx168_55:              cmp              esi, 2;                              jne   .Lx168_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx168_41
                        mov              r8, rax;                             jmp   .Lx168_40
.Lx168_56:              cmp              al, 72;                              jne   .Lx168_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx168_41
                        cmp              rax, r8;                             je    .Lx168_41
                        mov              r8, rax;                             jmp   .Lx168_40
.Lx168_41:              lea              r9, [rsp + 432]
.Lx168_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx168_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx168_43
                        cmp              esi, 1;                              jne   .Lx168_57
                        mov              r9, rax;                             jmp   .Lx168_42
.Lx168_57:              cmp              esi, 2;                              jne   .Lx168_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx168_43
                        mov              r9, rax;                             jmp   .Lx168_42
.Lx168_58:              cmp              al, 72;                              jne   .Lx168_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx168_43
                        cmp              rax, r9;                             je    .Lx168_43
                        mov              r9, rax;                             jmp   .Lx168_42
.Lx168_43:              cmp              r8, r9;                              je    .Lx168_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx168_44
                        cmp              al, 104;                             je    .Lx168_44
                        cmp              al, 72;                              jne   .Lx168_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx168_44
                                                                              jmp   .Lx168_45
.Lx168_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx168_53
                        cmp              al, 104;                             je    .Lx168_53
                        cmp              al, 72;                              jne   .Lx168_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx168_53
                                                                              jmp   .Lx168_46
.Lx168_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx168_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx168_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx168_51
.Lx168_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx168_47
                        cmp              al, 104;                             je    .Lx168_47
                        cmp              al, 72;                              jne   .Lx168_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx168_47
                                                                              jmp   .Lx168_48
.Lx168_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx168_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx168_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx168_51
.Lx168_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx168_49
                        cmp              dl, 80;                              je    .Lx168_53
                                                                              jmp   .Lx168_52
.Lx168_49:              cmp              dl, 80;                              je    .Lx168_52
                        cmp              cl, 5;                               je    .Lx168_53
                        cmp              dl, 5;                               je    .Lx168_53
                        cmp              cl, 3;                               jne   .Lx168_50
                        cmp              dl, 3;                               jne   .Lx168_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx168_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx168_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx168_51
                                                                              jmp   .Lx168_52
.Lx168_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx168_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx168_53
.Lx168_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx168_54
.Lx168_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx168_54
.Lx168_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx168_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_var_α
n131_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 376], rax;          jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n134_call_builtin_prolog_α
.Lx171_0:               .quad            48
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 64
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
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_var_α
n134_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             mov              r11, 65
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 296], rax;          jmp   n136_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              r11, 66
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n137_call_builtin_prolog_α
.Lx175_0:               .quad            57
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
                        mov              r11, 67
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
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n138_var_ref_α
n137_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 832]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 848]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              r11, 70
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
.Lx181_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx181_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx181_41
                        cmp              esi, 1;                              jne   .Lx181_55
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_55:              cmp              esi, 2;                              jne   .Lx181_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx181_41
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_56:              cmp              al, 72;                              jne   .Lx181_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx181_41
                        cmp              rax, r8;                             je    .Lx181_41
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_41:              lea              r9, [rsp + 192]
.Lx181_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx181_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx181_43
                        cmp              esi, 1;                              jne   .Lx181_57
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_57:              cmp              esi, 2;                              jne   .Lx181_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx181_43
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_58:              cmp              al, 72;                              jne   .Lx181_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx181_43
                        cmp              rax, r9;                             je    .Lx181_43
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_43:              cmp              r8, r9;                              je    .Lx181_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx181_44
                        cmp              al, 104;                             je    .Lx181_44
                        cmp              al, 72;                              jne   .Lx181_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx181_44
                                                                              jmp   .Lx181_45
.Lx181_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx181_53
                        cmp              al, 104;                             je    .Lx181_53
                        cmp              al, 72;                              jne   .Lx181_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx181_53
                                                                              jmp   .Lx181_46
.Lx181_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx181_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx181_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx181_51
.Lx181_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx181_47
                        cmp              al, 104;                             je    .Lx181_47
                        cmp              al, 72;                              jne   .Lx181_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx181_47
                                                                              jmp   .Lx181_48
.Lx181_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx181_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx181_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx181_51
.Lx181_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx181_49
                        cmp              dl, 80;                              je    .Lx181_53
                                                                              jmp   .Lx181_52
.Lx181_49:              cmp              dl, 80;                              je    .Lx181_52
                        cmp              cl, 5;                               je    .Lx181_53
                        cmp              dl, 5;                               je    .Lx181_53
                        cmp              cl, 3;                               jne   .Lx181_50
                        cmp              dl, 3;                               jne   .Lx181_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx181_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx181_51
                                                                              jmp   .Lx181_52
.Lx181_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx181_53
.Lx181_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx181_54
.Lx181_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx181_54
.Lx181_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx181_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n143_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_move_label_α
n140_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_move_label_α:      mov              r11, 71
                        lea              rax, [rip + n143_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   digit$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n142_disjunction_α:     mov              r11, 72
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    digit$2F3_ω
                                                                              jmp   rax
n142_disjunction_β:     mov              r11, 72;                             jmp   digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              r11, 73
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
                        cmp              al, 104;                             je    digit$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   digit$2F3_ω
n143_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
digit$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
digit$2F3_β:
                                                                              jmp   n142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F3_ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F3_dcα:
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
                        add              rsp, 32
                        lea              rcx, [rip + .Lx187_2]
                        lea              rdx, [rip + .Lx187_3];               jmp   FN__digit$2F3
.Lx187_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx187_3:               pop              r12
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
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 608
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
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
n188_call_builtin_prolog_α:
                        mov              r11, 74
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx208_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx208_101
.Lx208_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx208_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx208_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx208_101
.Lx208_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx208_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_lit_string_α
n188_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 3
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n190_var_ref_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n191_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn213:              .string          "$atom_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n207_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_var_ref_α
n191_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n194_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 2
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n195_call_proc_staged_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n195_call_proc_staged_α:
                        mov              r11, 81
                        mov              qword ptr [rsp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx220_200
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx220_201
.Lx220_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx220_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx220_202
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx220_203
.Lx220_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx220_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx220_204
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx220_205
.Lx220_204:             mov              edi, 2
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
.Lx220_205:             lea              rax, [rip + .Lx220_7]
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
                        test             rax, rax;                            je    .Lx220_1
                        lea              rcx, [rip + .Lx220_3]
                        lea              rdx, [rip + .Lx220_4];               jmp   rax
.Lx220_3:               mov              qword ptr [rsp + 392], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 384]
                        test             rax, rax;                            jne   .Lx220_5
                        mov              qword ptr [rsp + 384], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx220_2
.Lx220_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx220_2
.Lx220_4:               mov              rax, qword ptr [rsp + 384]
                        test             rax, rax;                            jne   .Lx220_6
                        mov              qword ptr [rsp + 384], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx220_2
.Lx220_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx220_2
.Lx220_1:               call             rt_faildescr@PLT
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
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx220_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                                                                              jmp   n196_var_ref_α
n195_call_proc_staged_β:
                        mov              r11, 81
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 384], 0
                        lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n201_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              ecx, 64
                        mov              r8d, 1344
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        test             rax, rax;                            je    n201_lit_string_α
                        lea              r8, [rip + .Lx220_7]
                        push             r8
                        lea              rcx, [rip + .Lx220_3]
                        lea              rdx, [rip + .Lx220_4];               jmp   rax
.Lx220_7:               add              rsp, 8
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                                                                              jmp   n196_var_ref_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "digits/3"
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n197_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n198_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn226:              .string          "$atom_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n207_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_var_α
n198_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 184], rax;          jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn230:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n207_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_lit_string_α
n200_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 4
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n202_call_builtin_prolog_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn233:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n207_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_lit_string_α
n202_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n204_call_builtin_prolog_α
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn236:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n207_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n205_move_label_α
n204_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n205_move_label_α:      mov              r11, 91
                        lea              rax, [rip + n207_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n206_disjunction_α:     mov              r11, 92
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
n206_disjunction_β:     mov              r11, 92;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
                        mov              r11, 93
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
n207_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n206_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 616]
                        add              rsp, 640;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 624]
                        add              rsp, 640;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "digits/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__digits$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1440
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "digit/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__digit$2F3
                        .quad            digit$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            896
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
