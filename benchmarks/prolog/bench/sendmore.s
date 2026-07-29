                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sumdigit$2F5_α
proc_sumdigit$2F5_α:
                        .global          proc_sumdigit$2F5_α
                        .global          proc_sumdigit$2F5_β
                        .global          proc_sumdigit$2F5_γ
                        .global          proc_sumdigit$2F5_ω
                        sub              rsp, 1440
                        mov              [rsp + 1416], rcx
                        mov              [rsp + 1424], rdx
                        mov              [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1296
                        mov              edx, 1408
                        call             rt_jmp_frame_lexprep2@PLT
proc_sumdigit$2F5_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1296], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx42_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx42_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx42_101
.Lx42_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx42_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_sumdigit$2F5_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_sumdigit$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1232]
                        lea              r8, [rbp + 1232]
.Lx47_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx47_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        cmp              esi, 1
                                                                                        jne   .Lx47_55
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_55:
                        cmp              esi, 2
                                                                                        jne   .Lx47_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_56:
                        cmp              eax, 13
                                                                                        jne   .Lx47_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        cmp              rax, r8
                                                                                        je    .Lx47_41
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_41:
                        lea              r9, [rbp + 1248]
.Lx47_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx47_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        cmp              esi, 1
                                                                                        jne   .Lx47_57
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_57:
                        cmp              esi, 2
                                                                                        jne   .Lx47_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_58:
                        cmp              eax, 13
                                                                                        jne   .Lx47_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        cmp              rax, r9
                                                                                        je    .Lx47_43
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_43:
                        cmp              r8, r9
                                                                                        je    .Lx47_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_44
                        cmp              eax, 99
                                                                                        je    .Lx47_44
                        cmp              eax, 13
                                                                                        jne   .Lx47_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx47_44
                                                                                        jmp   .Lx47_45
.Lx47_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_53
                        cmp              eax, 99
                                                                                        je    .Lx47_53
                        cmp              eax, 13
                                                                                        jne   .Lx47_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx47_53
                                                                                        jmp   .Lx47_46
.Lx47_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx47_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx47_51
.Lx47_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_47
                        cmp              eax, 99
                                                                                        je    .Lx47_47
                        cmp              eax, 13
                                                                                        jne   .Lx47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx47_47
                                                                                        jmp   .Lx47_48
.Lx47_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx47_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx47_51
.Lx47_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx47_49
                        cmp              edx, 14
                                                                                        je    .Lx47_53
                                                                                        jmp   .Lx47_52
.Lx47_49:
                        cmp              edx, 14
                                                                                        je    .Lx47_52
                        cmp              ecx, 7
                                                                                        je    .Lx47_53
                        cmp              edx, 7
                                                                                        je    .Lx47_53
                        cmp              ecx, 6
                                                                                        jne   .Lx47_50
                        cmp              edx, 6
                                                                                        jne   .Lx47_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx47_51
                                                                                        jmp   .Lx47_52
.Lx47_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx47_53
.Lx47_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx47_54
.Lx47_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx47_54
.Lx47_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx47_54:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_sumdigit$2F5_ω
                                                                                        jmp   proc_sumdigit$2F5_ω
n5_op11_β:
                                                                                        jmp   proc_sumdigit$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        lea              r8, [rbp + 1152]
.Lx53_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              esi, 1
                                                                                        jne   .Lx53_55
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_55:
                        cmp              esi, 2
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_56:
                        cmp              eax, 13
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              rax, r8
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_41:
                        lea              r9, [rbp + 1168]
.Lx53_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              esi, 1
                                                                                        jne   .Lx53_57
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_57:
                        cmp              esi, 2
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_58:
                        cmp              eax, 13
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              rax, r9
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_43:
                        cmp              r8, r9
                                                                                        je    .Lx53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_44
                        cmp              eax, 99
                                                                                        je    .Lx53_44
                        cmp              eax, 13
                                                                                        jne   .Lx53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx53_44
                                                                                        jmp   .Lx53_45
.Lx53_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_53
                        cmp              eax, 99
                                                                                        je    .Lx53_53
                        cmp              eax, 13
                                                                                        jne   .Lx53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_46
.Lx53_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx53_51
.Lx53_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_47
                        cmp              eax, 99
                                                                                        je    .Lx53_47
                        cmp              eax, 13
                                                                                        jne   .Lx53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_47
                                                                                        jmp   .Lx53_48
.Lx53_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx53_51
.Lx53_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx53_49
                        cmp              edx, 14
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_52
.Lx53_49:
                        cmp              edx, 14
                                                                                        je    .Lx53_52
                        cmp              ecx, 7
                                                                                        je    .Lx53_53
                        cmp              edx, 7
                                                                                        je    .Lx53_53
                        cmp              ecx, 6
                                                                                        jne   .Lx53_50
                        cmp              edx, 6
                                                                                        jne   .Lx53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx53_51
                                                                                        jmp   .Lx53_52
.Lx53_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
.Lx53_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx53_54
.Lx53_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx53_54
.Lx53_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx53_54:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx58_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx58_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        cmp              esi, 1
                                                                                        jne   .Lx58_55
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_55:
                        cmp              esi, 2
                                                                                        jne   .Lx58_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_56:
                        cmp              eax, 13
                                                                                        jne   .Lx58_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_41
                        cmp              rax, r8
                                                                                        je    .Lx58_41
                        mov              r8, rax
                                                                                        jmp   .Lx58_40
.Lx58_41:
                        lea              r9, [rbp + 1088]
.Lx58_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx58_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        cmp              esi, 1
                                                                                        jne   .Lx58_57
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_57:
                        cmp              esi, 2
                                                                                        jne   .Lx58_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_58:
                        cmp              eax, 13
                                                                                        jne   .Lx58_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx58_43
                        cmp              rax, r9
                                                                                        je    .Lx58_43
                        mov              r9, rax
                                                                                        jmp   .Lx58_42
.Lx58_43:
                        cmp              r8, r9
                                                                                        je    .Lx58_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_44
                        cmp              eax, 99
                                                                                        je    .Lx58_44
                        cmp              eax, 13
                                                                                        jne   .Lx58_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx58_44
                                                                                        jmp   .Lx58_45
.Lx58_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_53
                        cmp              eax, 99
                                                                                        je    .Lx58_53
                        cmp              eax, 13
                                                                                        jne   .Lx58_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx58_53
                                                                                        jmp   .Lx58_46
.Lx58_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx58_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx58_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx58_51
.Lx58_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx58_47
                        cmp              eax, 99
                                                                                        je    .Lx58_47
                        cmp              eax, 13
                                                                                        jne   .Lx58_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx58_47
                                                                                        jmp   .Lx58_48
.Lx58_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx58_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx58_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx58_51
.Lx58_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx58_49
                        cmp              edx, 14
                                                                                        je    .Lx58_53
                                                                                        jmp   .Lx58_52
.Lx58_49:
                        cmp              edx, 14
                                                                                        je    .Lx58_52
                        cmp              ecx, 7
                                                                                        je    .Lx58_53
                        cmp              edx, 7
                                                                                        je    .Lx58_53
                        cmp              ecx, 6
                                                                                        jne   .Lx58_50
                        cmp              edx, 6
                                                                                        jne   .Lx58_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx58_51
                                                                                        jmp   .Lx58_52
.Lx58_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx58_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx58_53
.Lx58_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx58_54
.Lx58_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx58_54
.Lx58_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx58_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_var_ref_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx63_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx63_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_41
                        cmp              esi, 1
                                                                                        jne   .Lx63_55
                        mov              r8, rax
                                                                                        jmp   .Lx63_40
.Lx63_55:
                        cmp              esi, 2
                                                                                        jne   .Lx63_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx63_41
                        mov              r8, rax
                                                                                        jmp   .Lx63_40
.Lx63_56:
                        cmp              eax, 13
                                                                                        jne   .Lx63_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_41
                        cmp              rax, r8
                                                                                        je    .Lx63_41
                        mov              r8, rax
                                                                                        jmp   .Lx63_40
.Lx63_41:
                        lea              r9, [rbp + 1008]
.Lx63_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx63_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_43
                        cmp              esi, 1
                                                                                        jne   .Lx63_57
                        mov              r9, rax
                                                                                        jmp   .Lx63_42
.Lx63_57:
                        cmp              esi, 2
                                                                                        jne   .Lx63_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx63_43
                        mov              r9, rax
                                                                                        jmp   .Lx63_42
.Lx63_58:
                        cmp              eax, 13
                                                                                        jne   .Lx63_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx63_43
                        cmp              rax, r9
                                                                                        je    .Lx63_43
                        mov              r9, rax
                                                                                        jmp   .Lx63_42
.Lx63_43:
                        cmp              r8, r9
                                                                                        je    .Lx63_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx63_44
                        cmp              eax, 99
                                                                                        je    .Lx63_44
                        cmp              eax, 13
                                                                                        jne   .Lx63_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx63_44
                                                                                        jmp   .Lx63_45
.Lx63_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx63_53
                        cmp              eax, 99
                                                                                        je    .Lx63_53
                        cmp              eax, 13
                                                                                        jne   .Lx63_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx63_53
                                                                                        jmp   .Lx63_46
.Lx63_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx63_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx63_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx63_51
.Lx63_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx63_47
                        cmp              eax, 99
                                                                                        je    .Lx63_47
                        cmp              eax, 13
                                                                                        jne   .Lx63_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx63_47
                                                                                        jmp   .Lx63_48
.Lx63_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx63_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx63_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx63_51
.Lx63_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx63_49
                        cmp              edx, 14
                                                                                        je    .Lx63_53
                                                                                        jmp   .Lx63_52
.Lx63_49:
                        cmp              edx, 14
                                                                                        je    .Lx63_52
                        cmp              ecx, 7
                                                                                        je    .Lx63_53
                        cmp              edx, 7
                                                                                        je    .Lx63_53
                        cmp              ecx, 6
                                                                                        jne   .Lx63_50
                        cmp              edx, 6
                                                                                        jne   .Lx63_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx63_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx63_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx63_51
                                                                                        jmp   .Lx63_52
.Lx63_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx63_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx63_53
.Lx63_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx63_54
.Lx63_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx63_54
.Lx63_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx63_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n15_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx68_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx68_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_41
                        cmp              esi, 1
                                                                                        jne   .Lx68_55
                        mov              r8, rax
                                                                                        jmp   .Lx68_40
.Lx68_55:
                        cmp              esi, 2
                                                                                        jne   .Lx68_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx68_41
                        mov              r8, rax
                                                                                        jmp   .Lx68_40
.Lx68_56:
                        cmp              eax, 13
                                                                                        jne   .Lx68_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_41
                        cmp              rax, r8
                                                                                        je    .Lx68_41
                        mov              r8, rax
                                                                                        jmp   .Lx68_40
.Lx68_41:
                        lea              r9, [rbp + 928]
.Lx68_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx68_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_43
                        cmp              esi, 1
                                                                                        jne   .Lx68_57
                        mov              r9, rax
                                                                                        jmp   .Lx68_42
.Lx68_57:
                        cmp              esi, 2
                                                                                        jne   .Lx68_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx68_43
                        mov              r9, rax
                                                                                        jmp   .Lx68_42
.Lx68_58:
                        cmp              eax, 13
                                                                                        jne   .Lx68_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_43
                        cmp              rax, r9
                                                                                        je    .Lx68_43
                        mov              r9, rax
                                                                                        jmp   .Lx68_42
.Lx68_43:
                        cmp              r8, r9
                                                                                        je    .Lx68_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx68_44
                        cmp              eax, 99
                                                                                        je    .Lx68_44
                        cmp              eax, 13
                                                                                        jne   .Lx68_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx68_44
                                                                                        jmp   .Lx68_45
.Lx68_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx68_53
                        cmp              eax, 99
                                                                                        je    .Lx68_53
                        cmp              eax, 13
                                                                                        jne   .Lx68_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx68_53
                                                                                        jmp   .Lx68_46
.Lx68_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx68_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx68_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx68_51
.Lx68_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx68_47
                        cmp              eax, 99
                                                                                        je    .Lx68_47
                        cmp              eax, 13
                                                                                        jne   .Lx68_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx68_47
                                                                                        jmp   .Lx68_48
.Lx68_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx68_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx68_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx68_51
.Lx68_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx68_49
                        cmp              edx, 14
                                                                                        je    .Lx68_53
                                                                                        jmp   .Lx68_52
.Lx68_49:
                        cmp              edx, 14
                                                                                        je    .Lx68_52
                        cmp              ecx, 7
                                                                                        je    .Lx68_53
                        cmp              edx, 7
                                                                                        je    .Lx68_53
                        cmp              ecx, 6
                                                                                        jne   .Lx68_50
                        cmp              edx, 6
                                                                                        jne   .Lx68_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx68_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx68_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx68_51
                                                                                        jmp   .Lx68_52
.Lx68_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx68_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx68_53
.Lx68_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx68_54
.Lx68_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx68_54
.Lx68_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx68_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n17_var_ref_α
n16_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n21_var_α
n20_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n23_op11_α
n22_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n24_var_α
n23_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n27_op11_α
.Lx82_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n26_var_ref_α
                                                                                        jmp   n29_var_ref_α
n27_op11_β:
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n32_op11_α
.Lx90_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n34_op11_α
n32_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
.Lx94_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx94_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_41
                        cmp              esi, 1
                                                                                        jne   .Lx94_55
                        mov              r8, rax
                                                                                        jmp   .Lx94_40
.Lx94_55:
                        cmp              esi, 2
                                                                                        jne   .Lx94_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx94_41
                        mov              r8, rax
                                                                                        jmp   .Lx94_40
.Lx94_56:
                        cmp              eax, 13
                                                                                        jne   .Lx94_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_41
                        cmp              rax, r8
                                                                                        je    .Lx94_41
                        mov              r8, rax
                                                                                        jmp   .Lx94_40
.Lx94_41:
                        lea              r9, [rbp + 288]
.Lx94_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx94_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_43
                        cmp              esi, 1
                                                                                        jne   .Lx94_57
                        mov              r9, rax
                                                                                        jmp   .Lx94_42
.Lx94_57:
                        cmp              esi, 2
                                                                                        jne   .Lx94_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx94_43
                        mov              r9, rax
                                                                                        jmp   .Lx94_42
.Lx94_58:
                        cmp              eax, 13
                                                                                        jne   .Lx94_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_43
                        cmp              rax, r9
                                                                                        je    .Lx94_43
                        mov              r9, rax
                                                                                        jmp   .Lx94_42
.Lx94_43:
                        cmp              r8, r9
                                                                                        je    .Lx94_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx94_44
                        cmp              eax, 99
                                                                                        je    .Lx94_44
                        cmp              eax, 13
                                                                                        jne   .Lx94_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx94_44
                                                                                        jmp   .Lx94_45
.Lx94_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx94_53
                        cmp              eax, 99
                                                                                        je    .Lx94_53
                        cmp              eax, 13
                                                                                        jne   .Lx94_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx94_53
                                                                                        jmp   .Lx94_46
.Lx94_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx94_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx94_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx94_51
.Lx94_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx94_47
                        cmp              eax, 99
                                                                                        je    .Lx94_47
                        cmp              eax, 13
                                                                                        jne   .Lx94_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx94_47
                                                                                        jmp   .Lx94_48
.Lx94_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx94_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx94_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx94_51
.Lx94_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx94_49
                        cmp              edx, 14
                                                                                        je    .Lx94_53
                                                                                        jmp   .Lx94_52
.Lx94_49:
                        cmp              edx, 14
                                                                                        je    .Lx94_52
                        cmp              ecx, 7
                                                                                        je    .Lx94_53
                        cmp              edx, 7
                                                                                        je    .Lx94_53
                        cmp              ecx, 6
                                                                                        jne   .Lx94_50
                        cmp              edx, 6
                                                                                        jne   .Lx94_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx94_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx94_51
                                                                                        jmp   .Lx94_52
.Lx94_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx94_53
.Lx94_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx94_54
.Lx94_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx94_54
.Lx94_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx94_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n35_var_ref_α
n33_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n36_var_ref_α
n34_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n39_op11_α
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n40_op11_α
.Lx101_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n41_suspend_α
n39_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n41_suspend_α
n40_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_suspend_α:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sumdigit$2F5_γ
n41_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_sumdigit$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sumdigit$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1296]
#-----------------------------------------------------------------------------------------------------------------------
proc_sumdigit$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sumdigit$2F5_res]
                        push             rax
                        mov              rax, [rbp + 1416]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sumdigit$2F5_ω:
                        mov              rax, [rbp + 1424]
                        lea              rsp, [rbp + 1440]
                        mov              rbp, [rbp + 1432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_digit$2F1_α
proc_digit$2F1_α:
                        .global          proc_digit$2F1_α
                        .global          proc_digit$2F1_β
                        .global          proc_digit$2F1_γ
                        .global          proc_digit$2F1_ω
                        sub              rsp, 2512
                        mov              [rsp + 2488], rcx
                        mov              [rsp + 2496], rdx
                        mov              [rsp + 2504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2464
                        mov              edx, 2480
                        call             rt_jmp_frame_lexprep2@PLT
proc_digit$2F1_α_body:
                        lea              rax, [rip + n117_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx197_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx197_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx197_101
.Lx197_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx197_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n107_var_ref_α
n106_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n108_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n109_lit_integer_α
.Lx200_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rbp + 2448], 6
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n110_op11_α
.Lx201_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2368]
                        lea              r8, [rbp + 2368]
.Lx202_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_111
                        cmp              esi, 1
                                                                                        jne   .Lx202_112
                        mov              r8, rax
                                                                                        jmp   .Lx202_110
.Lx202_112:
                        cmp              esi, 2
                                                                                        jne   .Lx202_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_111
                        mov              r8, rax
                                                                                        jmp   .Lx202_110
.Lx202_113:
                        cmp              eax, 13
                                                                                        jne   .Lx202_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_111
                        cmp              rax, r8
                                                                                        je    .Lx202_111
                        mov              r8, rax
                                                                                        jmp   .Lx202_110
.Lx202_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_114
                        cmp              eax, 99
                                                                                        je    .Lx202_114
                        cmp              eax, 13
                                                                                        jne   .Lx202_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx202_114
                                                                                        jmp   .Lx202_118
.Lx202_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx202_115
                        cmp              eax, 6
                                                                                        jne   .Lx202_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx202_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx202_115
                                                                                        jmp   .Lx202_114
.Lx202_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx202_117
.Lx202_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx202_117
.Lx202_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx202_117:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n112_var_ref_α
                                                                                        jmp   n111_var_ref_α
n110_op11_β:
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n114_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 6
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n115_op11_α
.Lx207_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 2192], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n116_lit_integer_α
.Lx208_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n118_op11_α
                                                                                        jmp   n117_suspend_α
n115_op11_β:
                                                                                        jmp   n118_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n119_op11_α
.Lx210_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n117_suspend_α:
                        lea              rax, [rip + n117_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n117_suspend_β:
                                                                                        jmp   n118_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n112_var_ref_α
n118_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        lea              r8, [rbp + 2128]
.Lx214_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx214_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_111
                        cmp              esi, 1
                                                                                        jne   .Lx214_112
                        mov              r8, rax
                                                                                        jmp   .Lx214_110
.Lx214_112:
                        cmp              esi, 2
                                                                                        jne   .Lx214_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx214_111
                        mov              r8, rax
                                                                                        jmp   .Lx214_110
.Lx214_113:
                        cmp              eax, 13
                                                                                        jne   .Lx214_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_111
                        cmp              rax, r8
                                                                                        je    .Lx214_111
                        mov              r8, rax
                                                                                        jmp   .Lx214_110
.Lx214_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx214_114
                        cmp              eax, 99
                                                                                        je    .Lx214_114
                        cmp              eax, 13
                                                                                        jne   .Lx214_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx214_114
                                                                                        jmp   .Lx214_118
.Lx214_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx214_115
                        cmp              eax, 6
                                                                                        jne   .Lx214_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx214_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx214_115
                                                                                        jmp   .Lx214_114
.Lx214_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx214_117
.Lx214_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx214_117
.Lx214_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx214_117:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n121_var_ref_α
                                                                                        jmp   n120_var_ref_α
n119_op11_β:
                                                                                        jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n122_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n124_op11_α
.Lx219_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n125_lit_integer_α
.Lx220_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n127_op11_α
                                                                                        jmp   n126_suspend_α
n124_op11_β:
                                                                                        jmp   n127_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n128_op11_α
.Lx222_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n126_suspend_α:
                        lea              rax, [rip + n126_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n126_suspend_β:
                                                                                        jmp   n127_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n121_var_ref_α
n127_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lx226_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx226_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        cmp              esi, 1
                                                                                        jne   .Lx226_112
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_112:
                        cmp              esi, 2
                                                                                        jne   .Lx226_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_113:
                        cmp              eax, 13
                                                                                        jne   .Lx226_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        cmp              rax, r8
                                                                                        je    .Lx226_111
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx226_114
                        cmp              eax, 99
                                                                                        je    .Lx226_114
                        cmp              eax, 13
                                                                                        jne   .Lx226_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx226_114
                                                                                        jmp   .Lx226_118
.Lx226_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx226_115
                        cmp              eax, 6
                                                                                        jne   .Lx226_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx226_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx226_115
                                                                                        jmp   .Lx226_114
.Lx226_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx226_117
.Lx226_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx226_117
.Lx226_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx226_117:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n130_var_ref_α
                                                                                        jmp   n129_var_ref_α
n128_op11_β:
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n131_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n133_op11_α
.Lx231_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n134_lit_integer_α
.Lx232_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n136_op11_α
                                                                                        jmp   n135_suspend_α
n133_op11_β:
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n137_op11_α
.Lx234_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n135_suspend_β:
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n130_var_ref_α
n136_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lx238_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx238_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_111
                        cmp              esi, 1
                                                                                        jne   .Lx238_112
                        mov              r8, rax
                                                                                        jmp   .Lx238_110
.Lx238_112:
                        cmp              esi, 2
                                                                                        jne   .Lx238_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_111
                        mov              r8, rax
                                                                                        jmp   .Lx238_110
.Lx238_113:
                        cmp              eax, 13
                                                                                        jne   .Lx238_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_111
                        cmp              rax, r8
                                                                                        je    .Lx238_111
                        mov              r8, rax
                                                                                        jmp   .Lx238_110
.Lx238_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_114
                        cmp              eax, 99
                                                                                        je    .Lx238_114
                        cmp              eax, 13
                                                                                        jne   .Lx238_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx238_114
                                                                                        jmp   .Lx238_118
.Lx238_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx238_115
                        cmp              eax, 6
                                                                                        jne   .Lx238_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx238_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx238_115
                                                                                        jmp   .Lx238_114
.Lx238_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx238_117
.Lx238_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx238_117
.Lx238_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx238_117:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n139_var_ref_α
                                                                                        jmp   n138_var_ref_α
n137_op11_β:
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n142_op11_α
.Lx243_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n143_lit_integer_α
.Lx244_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n145_op11_α
                                                                                        jmp   n144_suspend_α
n142_op11_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n146_op11_α
.Lx246_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n144_suspend_α:
                        lea              rax, [rip + n144_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n144_suspend_β:
                                                                                        jmp   n145_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n139_var_ref_α
n145_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1408]
                        lea              r8, [rbp + 1408]
.Lx250_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx250_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx250_111
                        cmp              esi, 1
                                                                                        jne   .Lx250_112
                        mov              r8, rax
                                                                                        jmp   .Lx250_110
.Lx250_112:
                        cmp              esi, 2
                                                                                        jne   .Lx250_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx250_111
                        mov              r8, rax
                                                                                        jmp   .Lx250_110
.Lx250_113:
                        cmp              eax, 13
                                                                                        jne   .Lx250_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx250_111
                        cmp              rax, r8
                                                                                        je    .Lx250_111
                        mov              r8, rax
                                                                                        jmp   .Lx250_110
.Lx250_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx250_114
                        cmp              eax, 99
                                                                                        je    .Lx250_114
                        cmp              eax, 13
                                                                                        jne   .Lx250_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx250_114
                                                                                        jmp   .Lx250_118
.Lx250_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx250_115
                        cmp              eax, 6
                                                                                        jne   .Lx250_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx250_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx250_115
                                                                                        jmp   .Lx250_114
.Lx250_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx250_117
.Lx250_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx250_117
.Lx250_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx250_117:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n148_var_ref_α
                                                                                        jmp   n147_var_ref_α
n146_op11_β:
                                                                                        jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n151_op11_α
.Lx255_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n152_lit_integer_α
.Lx256_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        movabs           rsi, 4
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n153_suspend_α
n151_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n155_op11_α
.Lx258_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n153_suspend_α:
                        lea              rax, [rip + n153_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n153_suspend_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n148_var_ref_α
n154_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx262_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx262_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_111
                        cmp              esi, 1
                                                                                        jne   .Lx262_112
                        mov              r8, rax
                                                                                        jmp   .Lx262_110
.Lx262_112:
                        cmp              esi, 2
                                                                                        jne   .Lx262_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx262_111
                        mov              r8, rax
                                                                                        jmp   .Lx262_110
.Lx262_113:
                        cmp              eax, 13
                                                                                        jne   .Lx262_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx262_111
                        cmp              rax, r8
                                                                                        je    .Lx262_111
                        mov              r8, rax
                                                                                        jmp   .Lx262_110
.Lx262_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx262_114
                        cmp              eax, 99
                                                                                        je    .Lx262_114
                        cmp              eax, 13
                                                                                        jne   .Lx262_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx262_114
                                                                                        jmp   .Lx262_118
.Lx262_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx262_115
                        cmp              eax, 6
                                                                                        jne   .Lx262_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx262_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx262_115
                                                                                        jmp   .Lx262_114
.Lx262_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx262_117
.Lx262_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx262_117
.Lx262_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx262_117:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n157_var_ref_α
                                                                                        jmp   n156_var_ref_α
n155_op11_β:
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n158_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n160_op11_α
.Lx267_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n161_lit_integer_α
.Lx268_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        movabs           rsi, 5
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n163_op11_α
                                                                                        jmp   n162_suspend_α
n160_op11_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n164_op11_α
.Lx270_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n162_suspend_α:
                        lea              rax, [rip + n162_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n162_suspend_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n157_var_ref_α
n163_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx274_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx274_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx274_111
                        cmp              esi, 1
                                                                                        jne   .Lx274_112
                        mov              r8, rax
                                                                                        jmp   .Lx274_110
.Lx274_112:
                        cmp              esi, 2
                                                                                        jne   .Lx274_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx274_111
                        mov              r8, rax
                                                                                        jmp   .Lx274_110
.Lx274_113:
                        cmp              eax, 13
                                                                                        jne   .Lx274_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx274_111
                        cmp              rax, r8
                                                                                        je    .Lx274_111
                        mov              r8, rax
                                                                                        jmp   .Lx274_110
.Lx274_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx274_114
                        cmp              eax, 99
                                                                                        je    .Lx274_114
                        cmp              eax, 13
                                                                                        jne   .Lx274_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx274_114
                                                                                        jmp   .Lx274_118
.Lx274_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx274_115
                        cmp              eax, 6
                                                                                        jne   .Lx274_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx274_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx274_115
                                                                                        jmp   .Lx274_114
.Lx274_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx274_117
.Lx274_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx274_117
.Lx274_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx274_117:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n166_var_ref_α
                                                                                        jmp   n165_var_ref_α
n164_op11_β:
                                                                                        jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n167_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n168_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n169_op11_α
.Lx279_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n170_lit_integer_α
.Lx280_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 6
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n172_op11_α
                                                                                        jmp   n171_suspend_α
n169_op11_β:
                                                                                        jmp   n172_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n173_op11_α
.Lx282_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n171_suspend_α:
                        lea              rax, [rip + n171_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n171_suspend_β:
                                                                                        jmp   n172_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n166_var_ref_α
n172_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx286_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx286_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_111
                        cmp              esi, 1
                                                                                        jne   .Lx286_112
                        mov              r8, rax
                                                                                        jmp   .Lx286_110
.Lx286_112:
                        cmp              esi, 2
                                                                                        jne   .Lx286_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx286_111
                        mov              r8, rax
                                                                                        jmp   .Lx286_110
.Lx286_113:
                        cmp              eax, 13
                                                                                        jne   .Lx286_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx286_111
                        cmp              rax, r8
                                                                                        je    .Lx286_111
                        mov              r8, rax
                                                                                        jmp   .Lx286_110
.Lx286_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx286_114
                        cmp              eax, 99
                                                                                        je    .Lx286_114
                        cmp              eax, 13
                                                                                        jne   .Lx286_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx286_114
                                                                                        jmp   .Lx286_118
.Lx286_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx286_115
                        cmp              eax, 6
                                                                                        jne   .Lx286_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx286_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx286_115
                                                                                        jmp   .Lx286_114
.Lx286_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx286_117
.Lx286_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx286_117
.Lx286_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx286_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n175_var_ref_α
                                                                                        jmp   n174_var_ref_α
n173_op11_β:
                                                                                        jmp   n175_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n177_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n178_op11_α
.Lx291_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n179_lit_integer_α
.Lx292_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 7
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n180_suspend_α
n178_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n182_op11_α
.Lx294_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n180_suspend_α:
                        lea              rax, [rip + n180_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n180_suspend_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n175_var_ref_α
n181_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx298_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx298_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_111
                        cmp              esi, 1
                                                                                        jne   .Lx298_112
                        mov              r8, rax
                                                                                        jmp   .Lx298_110
.Lx298_112:
                        cmp              esi, 2
                                                                                        jne   .Lx298_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_111
                        mov              r8, rax
                                                                                        jmp   .Lx298_110
.Lx298_113:
                        cmp              eax, 13
                                                                                        jne   .Lx298_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_111
                        cmp              rax, r8
                                                                                        je    .Lx298_111
                        mov              r8, rax
                                                                                        jmp   .Lx298_110
.Lx298_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_114
                        cmp              eax, 99
                                                                                        je    .Lx298_114
                        cmp              eax, 13
                                                                                        jne   .Lx298_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx298_114
                                                                                        jmp   .Lx298_118
.Lx298_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx298_115
                        cmp              eax, 6
                                                                                        jne   .Lx298_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx298_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx298_115
                                                                                        jmp   .Lx298_114
.Lx298_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx298_117
.Lx298_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx298_117
.Lx298_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx298_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n184_var_ref_α
                                                                                        jmp   n183_var_ref_α
n182_op11_β:
                                                                                        jmp   n184_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n185_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n186_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n187_op11_α
.Lx303_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n188_lit_integer_α
.Lx304_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n189_suspend_α
n187_op11_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n191_op11_α
.Lx306_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n189_suspend_α:
                        lea              rax, [rip + n189_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n189_suspend_β:
                                                                                        jmp   n190_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   n184_var_ref_α
n190_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx310_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx310_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx310_111
                        cmp              esi, 1
                                                                                        jne   .Lx310_112
                        mov              r8, rax
                                                                                        jmp   .Lx310_110
.Lx310_112:
                        cmp              esi, 2
                                                                                        jne   .Lx310_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx310_111
                        mov              r8, rax
                                                                                        jmp   .Lx310_110
.Lx310_113:
                        cmp              eax, 13
                                                                                        jne   .Lx310_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx310_111
                        cmp              rax, r8
                                                                                        je    .Lx310_111
                        mov              r8, rax
                                                                                        jmp   .Lx310_110
.Lx310_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx310_114
                        cmp              eax, 99
                                                                                        je    .Lx310_114
                        cmp              eax, 13
                                                                                        jne   .Lx310_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx310_114
                                                                                        jmp   .Lx310_118
.Lx310_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx310_115
                        cmp              eax, 6
                                                                                        jne   .Lx310_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx310_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx310_115
                                                                                        jmp   .Lx310_114
.Lx310_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx310_117
.Lx310_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx310_117
.Lx310_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx310_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n192_var_ref_α
n191_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F1_ω
                                                                                        jmp   proc_digit$2F1_ω
n193_op11_β:
                                                                                        jmp   proc_digit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n195_op11_α
.Lx314_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 9
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n196_suspend_α
n195_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_suspend_α:
                        lea              rax, [rip + n196_suspend_β]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digit$2F1_γ
n196_suspend_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2464]
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_digit$2F1_res]
                        push             rax
                        mov              rax, [rbp + 2488]
                        mov              rbp, [rbp + 2504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F1_ω:
                        mov              rax, [rbp + 2496]
                        lea              rsp, [rbp + 2512]
                        mov              rbp, [rbp + 2504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_solve$2F8_α
proc_solve$2F8_α:
                        .global          proc_solve$2F8_α
                        .global          proc_solve$2F8_β
                        .global          proc_solve$2F8_γ
                        .global          proc_solve$2F8_ω
                        sub              rsp, 4544
                        mov              [rsp + 4520], rcx
                        mov              [rsp + 4528], rdx
                        mov              [rsp + 4536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4320
                        mov              edx, 4512
                        call             rt_jmp_frame_lexprep2@PLT
proc_solve$2F8_α_body:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 4320], rax
#-----------------------------------------------------------------------------------------------------------------------
n318_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx461_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx461_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx461_101
.Lx461_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx461_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_solve$2F8_ω
                                                                                        jmp   n319_var_ref_α
n318_op11_β:
                                                                                        jmp   proc_solve$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                                                                                        jmp   n320_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n321_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4256]
                        lea              r8, [rbp + 4256]
.Lx466_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx466_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx466_41
                        cmp              esi, 1
                                                                                        jne   .Lx466_55
                        mov              r8, rax
                                                                                        jmp   .Lx466_40
.Lx466_55:
                        cmp              esi, 2
                                                                                        jne   .Lx466_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx466_41
                        mov              r8, rax
                                                                                        jmp   .Lx466_40
.Lx466_56:
                        cmp              eax, 13
                                                                                        jne   .Lx466_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx466_41
                        cmp              rax, r8
                                                                                        je    .Lx466_41
                        mov              r8, rax
                                                                                        jmp   .Lx466_40
.Lx466_41:
                        lea              r9, [rbp + 4272]
.Lx466_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx466_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx466_43
                        cmp              esi, 1
                                                                                        jne   .Lx466_57
                        mov              r9, rax
                                                                                        jmp   .Lx466_42
.Lx466_57:
                        cmp              esi, 2
                                                                                        jne   .Lx466_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx466_43
                        mov              r9, rax
                                                                                        jmp   .Lx466_42
.Lx466_58:
                        cmp              eax, 13
                                                                                        jne   .Lx466_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx466_43
                        cmp              rax, r9
                                                                                        je    .Lx466_43
                        mov              r9, rax
                                                                                        jmp   .Lx466_42
.Lx466_43:
                        cmp              r8, r9
                                                                                        je    .Lx466_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx466_44
                        cmp              eax, 99
                                                                                        je    .Lx466_44
                        cmp              eax, 13
                                                                                        jne   .Lx466_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx466_44
                                                                                        jmp   .Lx466_45
.Lx466_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx466_53
                        cmp              eax, 99
                                                                                        je    .Lx466_53
                        cmp              eax, 13
                                                                                        jne   .Lx466_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx466_53
                                                                                        jmp   .Lx466_46
.Lx466_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx466_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx466_51
.Lx466_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx466_47
                        cmp              eax, 99
                                                                                        je    .Lx466_47
                        cmp              eax, 13
                                                                                        jne   .Lx466_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx466_47
                                                                                        jmp   .Lx466_48
.Lx466_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx466_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx466_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx466_51
.Lx466_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx466_49
                        cmp              edx, 14
                                                                                        je    .Lx466_53
                                                                                        jmp   .Lx466_52
.Lx466_49:
                        cmp              edx, 14
                                                                                        je    .Lx466_52
                        cmp              ecx, 7
                                                                                        je    .Lx466_53
                        cmp              edx, 7
                                                                                        je    .Lx466_53
                        cmp              ecx, 6
                                                                                        jne   .Lx466_50
                        cmp              edx, 6
                                                                                        jne   .Lx466_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx466_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx466_51
                                                                                        jmp   .Lx466_52
.Lx466_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx466_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx466_53
.Lx466_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx466_54
.Lx466_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx466_54
.Lx466_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx466_54:
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n322_var_ref_α
n321_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_solve$2F8_ω
                                                                                        jmp   proc_solve$2F8_ω
n323_op11_β:
                                                                                        jmp   proc_solve$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4176]
                        lea              r8, [rbp + 4176]
.Lx472_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx472_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx472_41
                        cmp              esi, 1
                                                                                        jne   .Lx472_55
                        mov              r8, rax
                                                                                        jmp   .Lx472_40
.Lx472_55:
                        cmp              esi, 2
                                                                                        jne   .Lx472_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx472_41
                        mov              r8, rax
                                                                                        jmp   .Lx472_40
.Lx472_56:
                        cmp              eax, 13
                                                                                        jne   .Lx472_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx472_41
                        cmp              rax, r8
                                                                                        je    .Lx472_41
                        mov              r8, rax
                                                                                        jmp   .Lx472_40
.Lx472_41:
                        lea              r9, [rbp + 4192]
.Lx472_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx472_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx472_43
                        cmp              esi, 1
                                                                                        jne   .Lx472_57
                        mov              r9, rax
                                                                                        jmp   .Lx472_42
.Lx472_57:
                        cmp              esi, 2
                                                                                        jne   .Lx472_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx472_43
                        mov              r9, rax
                                                                                        jmp   .Lx472_42
.Lx472_58:
                        cmp              eax, 13
                                                                                        jne   .Lx472_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx472_43
                        cmp              rax, r9
                                                                                        je    .Lx472_43
                        mov              r9, rax
                                                                                        jmp   .Lx472_42
.Lx472_43:
                        cmp              r8, r9
                                                                                        je    .Lx472_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx472_44
                        cmp              eax, 99
                                                                                        je    .Lx472_44
                        cmp              eax, 13
                                                                                        jne   .Lx472_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx472_44
                                                                                        jmp   .Lx472_45
.Lx472_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx472_53
                        cmp              eax, 99
                                                                                        je    .Lx472_53
                        cmp              eax, 13
                                                                                        jne   .Lx472_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx472_53
                                                                                        jmp   .Lx472_46
.Lx472_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx472_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx472_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx472_51
.Lx472_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx472_47
                        cmp              eax, 99
                                                                                        je    .Lx472_47
                        cmp              eax, 13
                                                                                        jne   .Lx472_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx472_47
                                                                                        jmp   .Lx472_48
.Lx472_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx472_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx472_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx472_51
.Lx472_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx472_49
                        cmp              edx, 14
                                                                                        je    .Lx472_53
                                                                                        jmp   .Lx472_52
.Lx472_49:
                        cmp              edx, 14
                                                                                        je    .Lx472_52
                        cmp              ecx, 7
                                                                                        je    .Lx472_53
                        cmp              edx, 7
                                                                                        je    .Lx472_53
                        cmp              ecx, 6
                                                                                        jne   .Lx472_50
                        cmp              edx, 6
                                                                                        jne   .Lx472_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx472_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx472_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx472_51
                                                                                        jmp   .Lx472_52
.Lx472_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx472_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx472_53
.Lx472_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx472_54
.Lx472_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx472_54
.Lx472_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx472_54:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n326_var_ref_α
n325_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4096]
                        lea              r8, [rbp + 4096]
.Lx477_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx477_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        cmp              esi, 1
                                                                                        jne   .Lx477_55
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_55:
                        cmp              esi, 2
                                                                                        jne   .Lx477_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_56:
                        cmp              eax, 13
                                                                                        jne   .Lx477_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        cmp              rax, r8
                                                                                        je    .Lx477_41
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_41:
                        lea              r9, [rbp + 4112]
.Lx477_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx477_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        cmp              esi, 1
                                                                                        jne   .Lx477_57
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_57:
                        cmp              esi, 2
                                                                                        jne   .Lx477_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_58:
                        cmp              eax, 13
                                                                                        jne   .Lx477_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        cmp              rax, r9
                                                                                        je    .Lx477_43
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_43:
                        cmp              r8, r9
                                                                                        je    .Lx477_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_44
                        cmp              eax, 99
                                                                                        je    .Lx477_44
                        cmp              eax, 13
                                                                                        jne   .Lx477_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx477_44
                                                                                        jmp   .Lx477_45
.Lx477_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_53
                        cmp              eax, 99
                                                                                        je    .Lx477_53
                        cmp              eax, 13
                                                                                        jne   .Lx477_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx477_53
                                                                                        jmp   .Lx477_46
.Lx477_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx477_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx477_51
.Lx477_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_47
                        cmp              eax, 99
                                                                                        je    .Lx477_47
                        cmp              eax, 13
                                                                                        jne   .Lx477_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx477_47
                                                                                        jmp   .Lx477_48
.Lx477_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx477_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx477_51
.Lx477_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx477_49
                        cmp              edx, 14
                                                                                        je    .Lx477_53
                                                                                        jmp   .Lx477_52
.Lx477_49:
                        cmp              edx, 14
                                                                                        je    .Lx477_52
                        cmp              ecx, 7
                                                                                        je    .Lx477_53
                        cmp              edx, 7
                                                                                        je    .Lx477_53
                        cmp              ecx, 6
                                                                                        jne   .Lx477_50
                        cmp              edx, 6
                                                                                        jne   .Lx477_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx477_51
                                                                                        jmp   .Lx477_52
.Lx477_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx477_53
.Lx477_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx477_54
.Lx477_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx477_54
.Lx477_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx477_54:
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n329_var_ref_α
n328_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n331_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4040], rax
                        lea              rdi, [rbp + 4016]
                        lea              r8, [rbp + 4016]
.Lx482_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              esi, 1
                                                                                        jne   .Lx482_55
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_55:
                        cmp              esi, 2
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_56:
                        cmp              eax, 13
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              rax, r8
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_41:
                        lea              r9, [rbp + 4032]
.Lx482_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              esi, 1
                                                                                        jne   .Lx482_57
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_57:
                        cmp              esi, 2
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_58:
                        cmp              eax, 13
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              rax, r9
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_43:
                        cmp              r8, r9
                                                                                        je    .Lx482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_44
                        cmp              eax, 99
                                                                                        je    .Lx482_44
                        cmp              eax, 13
                                                                                        jne   .Lx482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx482_44
                                                                                        jmp   .Lx482_45
.Lx482_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_53
                        cmp              eax, 99
                                                                                        je    .Lx482_53
                        cmp              eax, 13
                                                                                        jne   .Lx482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_46
.Lx482_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx482_51
.Lx482_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_47
                        cmp              eax, 99
                                                                                        je    .Lx482_47
                        cmp              eax, 13
                                                                                        jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_47
                                                                                        jmp   .Lx482_48
.Lx482_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx482_51
.Lx482_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx482_49
                        cmp              edx, 14
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_52
.Lx482_49:
                        cmp              edx, 14
                                                                                        je    .Lx482_52
                        cmp              ecx, 7
                                                                                        je    .Lx482_53
                        cmp              edx, 7
                                                                                        je    .Lx482_53
                        cmp              ecx, 6
                                                                                        jne   .Lx482_50
                        cmp              edx, 6
                                                                                        jne   .Lx482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx482_51
                                                                                        jmp   .Lx482_52
.Lx482_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
.Lx482_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx482_54
.Lx482_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx482_54
.Lx482_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx482_54:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n332_var_ref_α
n331_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n334_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n334_op11_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3960], rax
                        lea              rdi, [rbp + 3936]
                        lea              r8, [rbp + 3936]
.Lx487_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        cmp              esi, 1
                                                                                        jne   .Lx487_55
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_55:
                        cmp              esi, 2
                                                                                        jne   .Lx487_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_56:
                        cmp              eax, 13
                                                                                        jne   .Lx487_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_41
                        cmp              rax, r8
                                                                                        je    .Lx487_41
                        mov              r8, rax
                                                                                        jmp   .Lx487_40
.Lx487_41:
                        lea              r9, [rbp + 3952]
.Lx487_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx487_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        cmp              esi, 1
                                                                                        jne   .Lx487_57
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_57:
                        cmp              esi, 2
                                                                                        jne   .Lx487_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_58:
                        cmp              eax, 13
                                                                                        jne   .Lx487_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx487_43
                        cmp              rax, r9
                                                                                        je    .Lx487_43
                        mov              r9, rax
                                                                                        jmp   .Lx487_42
.Lx487_43:
                        cmp              r8, r9
                                                                                        je    .Lx487_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_44
                        cmp              eax, 99
                                                                                        je    .Lx487_44
                        cmp              eax, 13
                                                                                        jne   .Lx487_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx487_44
                                                                                        jmp   .Lx487_45
.Lx487_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_53
                        cmp              eax, 99
                                                                                        je    .Lx487_53
                        cmp              eax, 13
                                                                                        jne   .Lx487_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_53
                                                                                        jmp   .Lx487_46
.Lx487_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx487_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx487_51
.Lx487_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx487_47
                        cmp              eax, 99
                                                                                        je    .Lx487_47
                        cmp              eax, 13
                                                                                        jne   .Lx487_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx487_47
                                                                                        jmp   .Lx487_48
.Lx487_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx487_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx487_51
.Lx487_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx487_49
                        cmp              edx, 14
                                                                                        je    .Lx487_53
                                                                                        jmp   .Lx487_52
.Lx487_49:
                        cmp              edx, 14
                                                                                        je    .Lx487_52
                        cmp              ecx, 7
                                                                                        je    .Lx487_53
                        cmp              edx, 7
                                                                                        je    .Lx487_53
                        cmp              ecx, 6
                                                                                        jne   .Lx487_50
                        cmp              edx, 6
                                                                                        jne   .Lx487_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx487_51
                                                                                        jmp   .Lx487_52
.Lx487_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx487_53
.Lx487_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx487_54
.Lx487_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx487_54
.Lx487_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx487_54:
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n335_var_ref_α
n334_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                                                                                        jmp   n336_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n337_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n337_op11_α:
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3856]
                        lea              r8, [rbp + 3856]
.Lx492_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx492_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        cmp              esi, 1
                                                                                        jne   .Lx492_55
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_55:
                        cmp              esi, 2
                                                                                        jne   .Lx492_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_56:
                        cmp              eax, 13
                                                                                        jne   .Lx492_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_41
                        cmp              rax, r8
                                                                                        je    .Lx492_41
                        mov              r8, rax
                                                                                        jmp   .Lx492_40
.Lx492_41:
                        lea              r9, [rbp + 3872]
.Lx492_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx492_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        cmp              esi, 1
                                                                                        jne   .Lx492_57
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_57:
                        cmp              esi, 2
                                                                                        jne   .Lx492_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_58:
                        cmp              eax, 13
                                                                                        jne   .Lx492_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx492_43
                        cmp              rax, r9
                                                                                        je    .Lx492_43
                        mov              r9, rax
                                                                                        jmp   .Lx492_42
.Lx492_43:
                        cmp              r8, r9
                                                                                        je    .Lx492_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_44
                        cmp              eax, 99
                                                                                        je    .Lx492_44
                        cmp              eax, 13
                                                                                        jne   .Lx492_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx492_44
                                                                                        jmp   .Lx492_45
.Lx492_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_53
                        cmp              eax, 99
                                                                                        je    .Lx492_53
                        cmp              eax, 13
                                                                                        jne   .Lx492_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx492_53
                                                                                        jmp   .Lx492_46
.Lx492_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx492_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx492_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx492_51
.Lx492_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx492_47
                        cmp              eax, 99
                                                                                        je    .Lx492_47
                        cmp              eax, 13
                                                                                        jne   .Lx492_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx492_47
                                                                                        jmp   .Lx492_48
.Lx492_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx492_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx492_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx492_51
.Lx492_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx492_49
                        cmp              edx, 14
                                                                                        je    .Lx492_53
                                                                                        jmp   .Lx492_52
.Lx492_49:
                        cmp              edx, 14
                                                                                        je    .Lx492_52
                        cmp              ecx, 7
                                                                                        je    .Lx492_53
                        cmp              edx, 7
                                                                                        je    .Lx492_53
                        cmp              ecx, 6
                                                                                        jne   .Lx492_50
                        cmp              edx, 6
                                                                                        jne   .Lx492_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx492_51
                                                                                        jmp   .Lx492_52
.Lx492_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx492_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx492_53
.Lx492_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx492_54
.Lx492_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx492_54
.Lx492_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx492_54:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n338_var_ref_α
n337_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n339_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n340_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        lea              rdi, [rbp + 3776]
                        lea              r8, [rbp + 3776]
.Lx497_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx497_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        cmp              esi, 1
                                                                                        jne   .Lx497_55
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_55:
                        cmp              esi, 2
                                                                                        jne   .Lx497_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_56:
                        cmp              eax, 13
                                                                                        jne   .Lx497_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_41
                        cmp              rax, r8
                                                                                        je    .Lx497_41
                        mov              r8, rax
                                                                                        jmp   .Lx497_40
.Lx497_41:
                        lea              r9, [rbp + 3792]
.Lx497_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx497_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        cmp              esi, 1
                                                                                        jne   .Lx497_57
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_57:
                        cmp              esi, 2
                                                                                        jne   .Lx497_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_58:
                        cmp              eax, 13
                                                                                        jne   .Lx497_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx497_43
                        cmp              rax, r9
                                                                                        je    .Lx497_43
                        mov              r9, rax
                                                                                        jmp   .Lx497_42
.Lx497_43:
                        cmp              r8, r9
                                                                                        je    .Lx497_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_44
                        cmp              eax, 99
                                                                                        je    .Lx497_44
                        cmp              eax, 13
                                                                                        jne   .Lx497_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx497_44
                                                                                        jmp   .Lx497_45
.Lx497_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_53
                        cmp              eax, 99
                                                                                        je    .Lx497_53
                        cmp              eax, 13
                                                                                        jne   .Lx497_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx497_53
                                                                                        jmp   .Lx497_46
.Lx497_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx497_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx497_51
.Lx497_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx497_47
                        cmp              eax, 99
                                                                                        je    .Lx497_47
                        cmp              eax, 13
                                                                                        jne   .Lx497_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx497_47
                                                                                        jmp   .Lx497_48
.Lx497_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx497_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx497_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx497_51
.Lx497_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx497_49
                        cmp              edx, 14
                                                                                        je    .Lx497_53
                                                                                        jmp   .Lx497_52
.Lx497_49:
                        cmp              edx, 14
                                                                                        je    .Lx497_52
                        cmp              ecx, 7
                                                                                        je    .Lx497_53
                        cmp              edx, 7
                                                                                        je    .Lx497_53
                        cmp              ecx, 6
                                                                                        jne   .Lx497_50
                        cmp              edx, 6
                                                                                        jne   .Lx497_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx497_51
                                                                                        jmp   .Lx497_52
.Lx497_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx497_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx497_53
.Lx497_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx497_54
.Lx497_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx497_54
.Lx497_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx497_54:
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n341_var_ref_α
n340_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n343_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3696]
                        lea              r8, [rbp + 3696]
.Lx502_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        cmp              esi, 1
                                                                                        jne   .Lx502_55
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_55:
                        cmp              esi, 2
                                                                                        jne   .Lx502_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_56:
                        cmp              eax, 13
                                                                                        jne   .Lx502_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_41
                        cmp              rax, r8
                                                                                        je    .Lx502_41
                        mov              r8, rax
                                                                                        jmp   .Lx502_40
.Lx502_41:
                        lea              r9, [rbp + 3712]
.Lx502_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx502_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        cmp              esi, 1
                                                                                        jne   .Lx502_57
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_57:
                        cmp              esi, 2
                                                                                        jne   .Lx502_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_58:
                        cmp              eax, 13
                                                                                        jne   .Lx502_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx502_43
                        cmp              rax, r9
                                                                                        je    .Lx502_43
                        mov              r9, rax
                                                                                        jmp   .Lx502_42
.Lx502_43:
                        cmp              r8, r9
                                                                                        je    .Lx502_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_44
                        cmp              eax, 99
                                                                                        je    .Lx502_44
                        cmp              eax, 13
                                                                                        jne   .Lx502_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx502_44
                                                                                        jmp   .Lx502_45
.Lx502_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_53
                        cmp              eax, 99
                                                                                        je    .Lx502_53
                        cmp              eax, 13
                                                                                        jne   .Lx502_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_53
                                                                                        jmp   .Lx502_46
.Lx502_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx502_53
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
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx502_51
.Lx502_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx502_47
                        cmp              eax, 99
                                                                                        je    .Lx502_47
                        cmp              eax, 13
                                                                                        jne   .Lx502_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx502_47
                                                                                        jmp   .Lx502_48
.Lx502_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx502_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx502_53
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
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx502_51
.Lx502_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx502_49
                        cmp              edx, 14
                                                                                        je    .Lx502_53
                                                                                        jmp   .Lx502_52
.Lx502_49:
                        cmp              edx, 14
                                                                                        je    .Lx502_52
                        cmp              ecx, 7
                                                                                        je    .Lx502_53
                        cmp              edx, 7
                                                                                        je    .Lx502_53
                        cmp              ecx, 6
                                                                                        jne   .Lx502_50
                        cmp              edx, 6
                                                                                        jne   .Lx502_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx502_51
                                                                                        jmp   .Lx502_52
.Lx502_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx502_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx502_53
.Lx502_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx502_54
.Lx502_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx502_54
.Lx502_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx502_54:
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n344_var_ref_α
n343_op11_β:
                                                                                        jmp   n323_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n345_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        mov              qword ptr [rbp + 3632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx506_20
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx506_21
.Lx506_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        call             rt_arg_stage@PLT
.Lx506_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx506_1
                        lea              rcx, [rip + .Lx506_3]
                        lea              rdx, [rip + .Lx506_4]
                                                                                        jmp   rax
.Lx506_3:
                        mov              qword ptr [rbp + 3640], rsp
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx506_5
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx506_2
.Lx506_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx506_2
.Lx506_4:
                        mov              rax, qword ptr [rbp + 3632]
                        test             rax, rax
                                                                                        jne   .Lx506_6
                        mov              qword ptr [rbp + 3632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx506_2
.Lx506_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx506_2
.Lx506_1:
                        call             rt_faildescr@PLT
.Lx506_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n323_op11_α
                                                                                        jmp   n346_var_ref_α
n345_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3640]
                                                                                        jmp   qword ptr [rsp]
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n347_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_proc_staged_α:
                        mov              qword ptr [rbp + 3552], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx510_20
                        mov              rax, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx510_21
.Lx510_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        call             rt_arg_stage@PLT
.Lx510_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx510_1
                        lea              rcx, [rip + .Lx510_3]
                        lea              rdx, [rip + .Lx510_4]
                                                                                        jmp   rax
.Lx510_3:
                        mov              qword ptr [rbp + 3560], rsp
                        mov              rax, qword ptr [rbp + 3552]
                        test             rax, rax
                                                                                        jne   .Lx510_5
                        mov              qword ptr [rbp + 3552], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx510_2
.Lx510_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx510_2
.Lx510_4:
                        mov              rax, qword ptr [rbp + 3552]
                        test             rax, rax
                                                                                        jne   .Lx510_6
                        mov              qword ptr [rbp + 3552], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx510_2
.Lx510_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx510_2
.Lx510_1:
                        call             rt_faildescr@PLT
.Lx510_2:
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n345_call_proc_staged_β
                                                                                        jmp   n348_var_α
n347_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3560]
                                                                                        jmp   qword ptr [rsp]
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n350_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    n347_call_proc_staged_β
                                                                                        jmp   n351_lit_integer_α
n350_op11_β:
                                                                                        jmp   n347_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 3360], 6
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n352_var_ref_α
.Lx516_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4400]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n356_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_proc_staged_α:
                        mov              qword ptr [rbp + 3328], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_20
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx526_21
.Lx526_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        call             rt_arg_stage@PLT
.Lx526_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_22
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx526_23
.Lx526_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        call             rt_arg_stage@PLT
.Lx526_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_24
                        mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx526_25
.Lx526_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        call             rt_arg_stage@PLT
.Lx526_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_26
                        mov              rax, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx526_27
.Lx526_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 3408]
                        mov              rdx, qword ptr [rbp + 3416]
                        call             rt_arg_stage@PLT
.Lx526_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_28
                        mov              rax, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx526_29
.Lx526_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        call             rt_arg_stage@PLT
.Lx526_29:
                        mov              edi, 0
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx526_1
                        lea              rcx, [rip + .Lx526_3]
                        lea              rdx, [rip + .Lx526_4]
                                                                                        jmp   rax
.Lx526_3:
                        mov              qword ptr [rbp + 3336], rsp
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax
                                                                                        jne   .Lx526_5
                        mov              qword ptr [rbp + 3328], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_4:
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax
                                                                                        jne   .Lx526_6
                        mov              qword ptr [rbp + 3328], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_1:
                        call             rt_faildescr@PLT
.Lx526_2:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n347_call_proc_staged_β
                                                                                        jmp   n357_var_ref_α
n356_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3336]
                                                                                        jmp   qword ptr [rsp]
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                                                                                        jmp   n358_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        mov              qword ptr [rbp + 3184], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx530_20
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx530_21
.Lx530_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        call             rt_arg_stage@PLT
.Lx530_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx530_1
                        lea              rcx, [rip + .Lx530_3]
                        lea              rdx, [rip + .Lx530_4]
                                                                                        jmp   rax
.Lx530_3:
                        mov              qword ptr [rbp + 3192], rsp
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax
                                                                                        jne   .Lx530_5
                        mov              qword ptr [rbp + 3184], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx530_2
.Lx530_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx530_2
.Lx530_4:
                        mov              rax, qword ptr [rbp + 3184]
                        test             rax, rax
                                                                                        jne   .Lx530_6
                        mov              qword ptr [rbp + 3184], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx530_2
.Lx530_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx530_2
.Lx530_1:
                        call             rt_faildescr@PLT
.Lx530_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n356_call_proc_staged_β
                                                                                        jmp   n359_var_α
n358_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3192]
                                                                                        jmp   qword ptr [rsp]
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n358_call_proc_staged_β
                                                                                        jmp   n362_var_α
n361_op11_β:
                                                                                        jmp   n358_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n363_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n364_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n358_call_proc_staged_β
                                                                                        jmp   n365_var_α
n364_op11_β:
                                                                                        jmp   n358_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n367_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n358_call_proc_staged_β
                                                                                        jmp   n368_var_ref_α
n367_op11_β:
                                                                                        jmp   n358_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n369_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        mov              qword ptr [rbp + 2864], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx549_20
                        mov              rax, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx549_21
.Lx549_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2896]
                        mov              rdx, qword ptr [rbp + 2904]
                        call             rt_arg_stage@PLT
.Lx549_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx549_1
                        lea              rcx, [rip + .Lx549_3]
                        lea              rdx, [rip + .Lx549_4]
                                                                                        jmp   rax
.Lx549_3:
                        mov              qword ptr [rbp + 2872], rsp
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx549_5
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx549_2
.Lx549_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx549_2
.Lx549_4:
                        mov              rax, qword ptr [rbp + 2864]
                        test             rax, rax
                                                                                        jne   .Lx549_6
                        mov              qword ptr [rbp + 2864], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx549_2
.Lx549_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx549_2
.Lx549_1:
                        call             rt_faildescr@PLT
.Lx549_2:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n358_call_proc_staged_β
                                                                                        jmp   n370_var_α
n369_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2872]
                                                                                        jmp   qword ptr [rsp]
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        lea              rdi, [rbp + 2768]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n373_var_α
n372_op11_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n375_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2688]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n376_var_α
n375_op11_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n378_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n378_op11_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n379_var_α
n378_op11_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n380_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n382_var_ref_α
n381_op11_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n384_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n387_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n387_call_proc_staged_α:
                        mov              qword ptr [rbp + 2400], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_20
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx581_21
.Lx581_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        call             rt_arg_stage@PLT
.Lx581_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_22
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx581_23
.Lx581_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        call             rt_arg_stage@PLT
.Lx581_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_24
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx581_25
.Lx581_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        call             rt_arg_stage@PLT
.Lx581_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_26
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx581_27
.Lx581_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        call             rt_arg_stage@PLT
.Lx581_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_28
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx581_29
.Lx581_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        call             rt_arg_stage@PLT
.Lx581_29:
                        mov              edi, 0
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx581_1
                        lea              rcx, [rip + .Lx581_3]
                        lea              rdx, [rip + .Lx581_4]
                                                                                        jmp   rax
.Lx581_3:
                        mov              qword ptr [rbp + 2408], rsp
                        mov              rax, qword ptr [rbp + 2400]
                        test             rax, rax
                                                                                        jne   .Lx581_5
                        mov              qword ptr [rbp + 2400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx581_2
.Lx581_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx581_2
.Lx581_4:
                        mov              rax, qword ptr [rbp + 2400]
                        test             rax, rax
                                                                                        jne   .Lx581_6
                        mov              qword ptr [rbp + 2400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx581_2
.Lx581_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx581_2
.Lx581_1:
                        call             rt_faildescr@PLT
.Lx581_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n388_var_ref_α
n387_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2408]
                                                                                        jmp   qword ptr [rsp]
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n389_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n389_call_proc_staged_α:
                        mov              qword ptr [rbp + 2256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx585_20
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx585_21
.Lx585_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx585_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx585_1
                        lea              rcx, [rip + .Lx585_3]
                        lea              rdx, [rip + .Lx585_4]
                                                                                        jmp   rax
.Lx585_3:
                        mov              qword ptr [rbp + 2264], rsp
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx585_5
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx585_2
.Lx585_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx585_2
.Lx585_4:
                        mov              rax, qword ptr [rbp + 2256]
                        test             rax, rax
                                                                                        jne   .Lx585_6
                        mov              qword ptr [rbp + 2256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx585_2
.Lx585_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx585_2
.Lx585_1:
                        call             rt_faildescr@PLT
.Lx585_2:
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n387_call_proc_staged_β
                                                                                        jmp   n390_var_α
n389_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2264]
                                                                                        jmp   qword ptr [rsp]
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "digit/1"
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n392_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n392_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n393_var_α
n392_op11_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n395_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n395_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n396_var_α
n395_op11_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n397_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n398_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n399_var_α
n398_op11_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n399_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n401_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n401_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n402_var_α
n401_op11_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n404_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n404_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1840]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n405_var_ref_α
n404_op11_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4416]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n407_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n408_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n409_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n410_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n410_call_proc_staged_α:
                        mov              qword ptr [rbp + 1712], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_20
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx622_21
.Lx622_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx622_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_22
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx622_23
.Lx622_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        call             rt_arg_stage@PLT
.Lx622_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_24
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx622_25
.Lx622_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        call             rt_arg_stage@PLT
.Lx622_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_26
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx622_27
.Lx622_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        call             rt_arg_stage@PLT
.Lx622_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_28
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx622_29
.Lx622_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        call             rt_arg_stage@PLT
.Lx622_29:
                        mov              edi, 0
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx622_1
                        lea              rcx, [rip + .Lx622_3]
                        lea              rdx, [rip + .Lx622_4]
                                                                                        jmp   rax
.Lx622_3:
                        mov              qword ptr [rbp + 1720], rsp
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax
                                                                                        jne   .Lx622_5
                        mov              qword ptr [rbp + 1712], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx622_2
.Lx622_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx622_2
.Lx622_4:
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax
                                                                                        jne   .Lx622_6
                        mov              qword ptr [rbp + 1712], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx622_2
.Lx622_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx622_2
.Lx622_1:
                        call             rt_faildescr@PLT
.Lx622_2:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n389_call_proc_staged_β
                                                                                        jmp   n411_var_ref_α
n410_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1720]
                                                                                        jmp   qword ptr [rsp]
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n412_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n412_call_proc_staged_α:
                        mov              qword ptr [rbp + 1568], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_20
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx626_21
.Lx626_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        call             rt_arg_stage@PLT
.Lx626_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx626_1
                        lea              rcx, [rip + .Lx626_3]
                        lea              rdx, [rip + .Lx626_4]
                                                                                        jmp   rax
.Lx626_3:
                        mov              qword ptr [rbp + 1576], rsp
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx626_5
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_4:
                        mov              rax, qword ptr [rbp + 1568]
                        test             rax, rax
                                                                                        jne   .Lx626_6
                        mov              qword ptr [rbp + 1568], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_1:
                        call             rt_faildescr@PLT
.Lx626_2:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n410_call_proc_staged_β
                                                                                        jmp   n413_var_α
n412_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1576]
                                                                                        jmp   qword ptr [rsp]
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "leftdigit/1"
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n414_var_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n415_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n416_var_α
n415_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n419_var_α
n418_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n420_var_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n421_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n422_var_α
n421_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n425_var_α
n424_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n427_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n428_var_α
n427_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n430_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n431_var_ref_α
n430_op11_β:
                                                                                        jmp   n412_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n432_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_proc_staged_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx660_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx660_21
.Lx660_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx660_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx660_1
                        lea              rcx, [rip + .Lx660_3]
                        lea              rdx, [rip + .Lx660_4]
                                                                                        jmp   rax
.Lx660_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx660_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx660_2
.Lx660_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx660_2
.Lx660_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx660_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx660_2
.Lx660_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx660_2
.Lx660_1:
                        call             rt_faildescr@PLT
.Lx660_2:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n412_call_proc_staged_β
                                                                                        jmp   n433_var_α
n432_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "leftdigit/1"
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n435_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n436_var_α
n435_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n437_var_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n438_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n439_var_α
n438_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n440_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n442_var_α
n441_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n444_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n444_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n445_var_α
n444_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n448_var_α
n447_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n450_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n451_var_α
n450_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n452_var_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n454_var_ref_α
n453_op11_β:
                                                                                        jmp   n432_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4336]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n455_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4352]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4384]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4368]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n459_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_proc_staged_α:
                        mov              qword ptr [rbp + 304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx707_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx707_21
.Lx707_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx707_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx707_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx707_23
.Lx707_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx707_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx707_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx707_25
.Lx707_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx707_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx707_26
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx707_27
.Lx707_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx707_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx707_28
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx707_29
.Lx707_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx707_29:
                        mov              edi, 0
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx707_1
                        lea              rcx, [rip + .Lx707_3]
                        lea              rdx, [rip + .Lx707_4]
                                                                                        jmp   rax
.Lx707_3:
                        mov              qword ptr [rbp + 312], rsp
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx707_5
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx707_2
.Lx707_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx707_2
.Lx707_4:
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx707_6
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx707_2
.Lx707_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx707_2
.Lx707_1:
                        call             rt_faildescr@PLT
.Lx707_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n432_call_proc_staged_β
                                                                                        jmp   n460_suspend_α
n459_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 312]
                                                                                        jmp   qword ptr [rsp]
.Lx707_0:
                        .quad            .Lx707_0_s
.Lx707_0_s:
                        .string          "sumdigit/5"
#-----------------------------------------------------------------------------------------------------------------------
n460_suspend_α:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_solve$2F8_γ
n460_suspend_β:
                                                                                        jmp   n459_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_solve$2F8_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_solve$2F8_β:
                                                                                        jmp   qword ptr [rbp + 4320]
#-----------------------------------------------------------------------------------------------------------------------
proc_solve$2F8_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_solve$2F8_res]
                        push             rax
                        mov              rax, [rbp + 4520]
                        mov              rbp, [rbp + 4536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_solve$2F8_ω:
                        mov              rax, [rbp + 4528]
                        lea              rsp, [rbp + 4544]
                        mov              rbp, [rbp + 4536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_leftdigit$2F1_α
proc_leftdigit$2F1_α:
                        .global          proc_leftdigit$2F1_α
                        .global          proc_leftdigit$2F1_β
                        .global          proc_leftdigit$2F1_γ
                        .global          proc_leftdigit$2F1_ω
                        sub              rsp, 2272
                        mov              [rsp + 2248], rcx
                        mov              [rsp + 2256], rdx
                        mov              [rsp + 2264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2224
                        mov              edx, 2240
                        call             rt_jmp_frame_lexprep2@PLT
proc_leftdigit$2F1_α_body:
                        lea              rax, [rip + n721_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
#-----------------------------------------------------------------------------------------------------------------------
n710_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx792_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx792_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx792_101
.Lx792_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx792_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n711_var_ref_α
n710_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n712_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_integer_α:
                        mov              qword ptr [rbp + 2192], 6
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n713_lit_integer_α
.Lx795_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n714_op11_α
.Lx796_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n714_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        lea              r8, [rbp + 2128]
.Lx797_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx797_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx797_111
                        cmp              esi, 1
                                                                                        jne   .Lx797_112
                        mov              r8, rax
                                                                                        jmp   .Lx797_110
.Lx797_112:
                        cmp              esi, 2
                                                                                        jne   .Lx797_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx797_111
                        mov              r8, rax
                                                                                        jmp   .Lx797_110
.Lx797_113:
                        cmp              eax, 13
                                                                                        jne   .Lx797_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx797_111
                        cmp              rax, r8
                                                                                        je    .Lx797_111
                        mov              r8, rax
                                                                                        jmp   .Lx797_110
.Lx797_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx797_114
                        cmp              eax, 99
                                                                                        je    .Lx797_114
                        cmp              eax, 13
                                                                                        jne   .Lx797_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx797_114
                                                                                        jmp   .Lx797_118
.Lx797_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx797_115
                        cmp              eax, 6
                                                                                        jne   .Lx797_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx797_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx797_115
                                                                                        jmp   .Lx797_114
.Lx797_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx797_117
.Lx797_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx797_117
.Lx797_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx797_117:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n716_var_ref_α
                                                                                        jmp   n715_var_ref_α
n714_op11_β:
                                                                                        jmp   n716_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n717_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n718_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n719_op11_α
.Lx802_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n720_lit_integer_α
.Lx803_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n719_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n722_op11_α
                                                                                        jmp   n721_suspend_α
n719_op11_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n723_op11_α
.Lx805_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n721_suspend_α:
                        lea              rax, [rip + n721_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n721_suspend_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n722_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n716_var_ref_α
n722_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lx809_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx809_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_111
                        cmp              esi, 1
                                                                                        jne   .Lx809_112
                        mov              r8, rax
                                                                                        jmp   .Lx809_110
.Lx809_112:
                        cmp              esi, 2
                                                                                        jne   .Lx809_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx809_111
                        mov              r8, rax
                                                                                        jmp   .Lx809_110
.Lx809_113:
                        cmp              eax, 13
                                                                                        jne   .Lx809_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_111
                        cmp              rax, r8
                                                                                        je    .Lx809_111
                        mov              r8, rax
                                                                                        jmp   .Lx809_110
.Lx809_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx809_114
                        cmp              eax, 99
                                                                                        je    .Lx809_114
                        cmp              eax, 13
                                                                                        jne   .Lx809_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx809_114
                                                                                        jmp   .Lx809_118
.Lx809_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx809_115
                        cmp              eax, 6
                                                                                        jne   .Lx809_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx809_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx809_115
                                                                                        jmp   .Lx809_114
.Lx809_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx809_117
.Lx809_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx809_117
.Lx809_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx809_117:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n725_var_ref_α
                                                                                        jmp   n724_var_ref_α
n723_op11_β:
                                                                                        jmp   n725_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n726_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n725_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n727_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n728_op11_α
.Lx814_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n729_lit_integer_α
.Lx815_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n728_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n731_op11_α
                                                                                        jmp   n730_suspend_α
n728_op11_β:
                                                                                        jmp   n731_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n732_op11_α
.Lx817_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n730_suspend_α:
                        lea              rax, [rip + n730_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n730_suspend_β:
                                                                                        jmp   n731_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n731_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n725_var_ref_α
n731_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n732_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lx821_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx821_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx821_111
                        cmp              esi, 1
                                                                                        jne   .Lx821_112
                        mov              r8, rax
                                                                                        jmp   .Lx821_110
.Lx821_112:
                        cmp              esi, 2
                                                                                        jne   .Lx821_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx821_111
                        mov              r8, rax
                                                                                        jmp   .Lx821_110
.Lx821_113:
                        cmp              eax, 13
                                                                                        jne   .Lx821_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx821_111
                        cmp              rax, r8
                                                                                        je    .Lx821_111
                        mov              r8, rax
                                                                                        jmp   .Lx821_110
.Lx821_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx821_114
                        cmp              eax, 99
                                                                                        je    .Lx821_114
                        cmp              eax, 13
                                                                                        jne   .Lx821_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx821_114
                                                                                        jmp   .Lx821_118
.Lx821_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx821_115
                        cmp              eax, 6
                                                                                        jne   .Lx821_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx821_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx821_115
                                                                                        jmp   .Lx821_114
.Lx821_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx821_117
.Lx821_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx821_117
.Lx821_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx821_117:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n734_var_ref_α
                                                                                        jmp   n733_var_ref_α
n732_op11_β:
                                                                                        jmp   n734_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n735_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n736_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n737_op11_α
.Lx826_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n738_lit_integer_α
.Lx827_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n737_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n740_op11_α
                                                                                        jmp   n739_suspend_α
n737_op11_β:
                                                                                        jmp   n740_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n741_op11_α
.Lx829_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n739_suspend_α:
                        lea              rax, [rip + n739_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n739_suspend_β:
                                                                                        jmp   n740_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n740_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n734_var_ref_α
n740_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n741_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1408]
                        lea              r8, [rbp + 1408]
.Lx833_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx833_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_111
                        cmp              esi, 1
                                                                                        jne   .Lx833_112
                        mov              r8, rax
                                                                                        jmp   .Lx833_110
.Lx833_112:
                        cmp              esi, 2
                                                                                        jne   .Lx833_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx833_111
                        mov              r8, rax
                                                                                        jmp   .Lx833_110
.Lx833_113:
                        cmp              eax, 13
                                                                                        jne   .Lx833_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx833_111
                        cmp              rax, r8
                                                                                        je    .Lx833_111
                        mov              r8, rax
                                                                                        jmp   .Lx833_110
.Lx833_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx833_114
                        cmp              eax, 99
                                                                                        je    .Lx833_114
                        cmp              eax, 13
                                                                                        jne   .Lx833_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx833_114
                                                                                        jmp   .Lx833_118
.Lx833_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx833_115
                        cmp              eax, 6
                                                                                        jne   .Lx833_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx833_114
                        movabs           rdx, 4
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx833_115
                                                                                        jmp   .Lx833_114
.Lx833_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx833_117
.Lx833_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx833_117
.Lx833_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx833_117:
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n743_var_ref_α
                                                                                        jmp   n742_var_ref_α
n741_op11_β:
                                                                                        jmp   n743_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n744_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n743_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n745_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n746_op11_α
.Lx838_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n747_lit_integer_α
.Lx839_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n746_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        movabs           rsi, 4
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n749_op11_α
                                                                                        jmp   n748_suspend_α
n746_op11_β:
                                                                                        jmp   n749_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n750_op11_α
.Lx841_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n748_suspend_α:
                        lea              rax, [rip + n748_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n748_suspend_β:
                                                                                        jmp   n749_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n749_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n743_var_ref_α
n749_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n750_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx845_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx845_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_111
                        cmp              esi, 1
                                                                                        jne   .Lx845_112
                        mov              r8, rax
                                                                                        jmp   .Lx845_110
.Lx845_112:
                        cmp              esi, 2
                                                                                        jne   .Lx845_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx845_111
                        mov              r8, rax
                                                                                        jmp   .Lx845_110
.Lx845_113:
                        cmp              eax, 13
                                                                                        jne   .Lx845_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_111
                        cmp              rax, r8
                                                                                        je    .Lx845_111
                        mov              r8, rax
                                                                                        jmp   .Lx845_110
.Lx845_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx845_114
                        cmp              eax, 99
                                                                                        je    .Lx845_114
                        cmp              eax, 13
                                                                                        jne   .Lx845_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx845_114
                                                                                        jmp   .Lx845_118
.Lx845_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx845_115
                        cmp              eax, 6
                                                                                        jne   .Lx845_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx845_114
                        movabs           rdx, 5
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx845_115
                                                                                        jmp   .Lx845_114
.Lx845_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx845_117
.Lx845_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx845_117
.Lx845_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx845_117:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n752_var_ref_α
                                                                                        jmp   n751_var_ref_α
n750_op11_β:
                                                                                        jmp   n752_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n751_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n753_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n752_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n754_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n755_op11_α
.Lx850_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n756_lit_integer_α
.Lx851_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n755_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        movabs           rsi, 5
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n758_op11_α
                                                                                        jmp   n757_suspend_α
n755_op11_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n759_op11_α
.Lx853_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n757_suspend_α:
                        lea              rax, [rip + n757_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n757_suspend_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n758_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n752_var_ref_α
n758_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n759_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx857_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx857_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx857_111
                        cmp              esi, 1
                                                                                        jne   .Lx857_112
                        mov              r8, rax
                                                                                        jmp   .Lx857_110
.Lx857_112:
                        cmp              esi, 2
                                                                                        jne   .Lx857_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx857_111
                        mov              r8, rax
                                                                                        jmp   .Lx857_110
.Lx857_113:
                        cmp              eax, 13
                                                                                        jne   .Lx857_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx857_111
                        cmp              rax, r8
                                                                                        je    .Lx857_111
                        mov              r8, rax
                                                                                        jmp   .Lx857_110
.Lx857_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx857_114
                        cmp              eax, 99
                                                                                        je    .Lx857_114
                        cmp              eax, 13
                                                                                        jne   .Lx857_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx857_114
                                                                                        jmp   .Lx857_118
.Lx857_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx857_115
                        cmp              eax, 6
                                                                                        jne   .Lx857_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx857_114
                        movabs           rdx, 6
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx857_115
                                                                                        jmp   .Lx857_114
.Lx857_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx857_117
.Lx857_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx857_117
.Lx857_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx857_117:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n761_var_ref_α
                                                                                        jmp   n760_var_ref_α
n759_op11_β:
                                                                                        jmp   n761_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n760_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n762_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n763_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n764_op11_α
.Lx862_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n765_lit_integer_α
.Lx863_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n764_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 6
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n767_op11_α
                                                                                        jmp   n766_suspend_α
n764_op11_β:
                                                                                        jmp   n767_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n768_op11_α
.Lx865_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n766_suspend_α:
                        lea              rax, [rip + n766_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n766_suspend_β:
                                                                                        jmp   n767_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n767_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n761_var_ref_α
n767_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n768_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx869_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx869_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx869_111
                        cmp              esi, 1
                                                                                        jne   .Lx869_112
                        mov              r8, rax
                                                                                        jmp   .Lx869_110
.Lx869_112:
                        cmp              esi, 2
                                                                                        jne   .Lx869_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx869_111
                        mov              r8, rax
                                                                                        jmp   .Lx869_110
.Lx869_113:
                        cmp              eax, 13
                                                                                        jne   .Lx869_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx869_111
                        cmp              rax, r8
                                                                                        je    .Lx869_111
                        mov              r8, rax
                                                                                        jmp   .Lx869_110
.Lx869_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx869_114
                        cmp              eax, 99
                                                                                        je    .Lx869_114
                        cmp              eax, 13
                                                                                        jne   .Lx869_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx869_114
                                                                                        jmp   .Lx869_118
.Lx869_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx869_115
                        cmp              eax, 6
                                                                                        jne   .Lx869_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx869_114
                        movabs           rdx, 7
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx869_115
                                                                                        jmp   .Lx869_114
.Lx869_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx869_117
.Lx869_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx869_117
.Lx869_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx869_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n770_var_ref_α
                                                                                        jmp   n769_var_ref_α
n768_op11_β:
                                                                                        jmp   n770_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n771_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n770_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n772_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n773_op11_α
.Lx874_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n774_lit_integer_α
.Lx875_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n773_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 7
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n776_op11_α
                                                                                        jmp   n775_suspend_α
n773_op11_β:
                                                                                        jmp   n776_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n777_op11_α
.Lx877_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n775_suspend_α:
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n775_suspend_β:
                                                                                        jmp   n776_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n776_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n770_var_ref_α
n776_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n777_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx881_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx881_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx881_111
                        cmp              esi, 1
                                                                                        jne   .Lx881_112
                        mov              r8, rax
                                                                                        jmp   .Lx881_110
.Lx881_112:
                        cmp              esi, 2
                                                                                        jne   .Lx881_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx881_111
                        mov              r8, rax
                                                                                        jmp   .Lx881_110
.Lx881_113:
                        cmp              eax, 13
                                                                                        jne   .Lx881_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx881_111
                        cmp              rax, r8
                                                                                        je    .Lx881_111
                        mov              r8, rax
                                                                                        jmp   .Lx881_110
.Lx881_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx881_114
                        cmp              eax, 99
                                                                                        je    .Lx881_114
                        cmp              eax, 13
                                                                                        jne   .Lx881_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx881_114
                                                                                        jmp   .Lx881_118
.Lx881_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx881_115
                        cmp              eax, 6
                                                                                        jne   .Lx881_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx881_114
                        movabs           rdx, 8
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx881_115
                                                                                        jmp   .Lx881_114
.Lx881_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx881_117
.Lx881_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx881_117
.Lx881_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx881_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n779_var_ref_α
                                                                                        jmp   n778_var_ref_α
n777_op11_β:
                                                                                        jmp   n779_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n780_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n781_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n782_op11_α
.Lx886_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n783_lit_integer_α
.Lx887_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n782_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n785_op11_α
                                                                                        jmp   n784_suspend_α
n782_op11_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n786_op11_α
.Lx889_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n784_suspend_α:
                        lea              rax, [rip + n784_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n784_suspend_β:
                                                                                        jmp   n785_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n785_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   n779_var_ref_α
n785_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx893_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx893_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_111
                        cmp              esi, 1
                                                                                        jne   .Lx893_112
                        mov              r8, rax
                                                                                        jmp   .Lx893_110
.Lx893_112:
                        cmp              esi, 2
                                                                                        jne   .Lx893_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx893_111
                        mov              r8, rax
                                                                                        jmp   .Lx893_110
.Lx893_113:
                        cmp              eax, 13
                                                                                        jne   .Lx893_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_111
                        cmp              rax, r8
                                                                                        je    .Lx893_111
                        mov              r8, rax
                                                                                        jmp   .Lx893_110
.Lx893_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx893_114
                        cmp              eax, 99
                                                                                        je    .Lx893_114
                        cmp              eax, 13
                                                                                        jne   .Lx893_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx893_114
                                                                                        jmp   .Lx893_118
.Lx893_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx893_115
                        cmp              eax, 6
                                                                                        jne   .Lx893_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx893_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx893_115
                                                                                        jmp   .Lx893_114
.Lx893_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx893_117
.Lx893_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx893_117
.Lx893_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx893_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n788_op11_α
                                                                                        jmp   n787_var_ref_α
n786_op11_β:
                                                                                        jmp   n788_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n789_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n788_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_leftdigit$2F1_ω
                                                                                        jmp   proc_leftdigit$2F1_ω
n788_op11_β:
                                                                                        jmp   proc_leftdigit$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n790_op11_α
.Lx897_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n790_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 9
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n788_op11_α
                                                                                        jmp   n791_suspend_α
n790_op11_β:
                                                                                        jmp   n788_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n791_suspend_α:
                        lea              rax, [rip + n791_suspend_β]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_leftdigit$2F1_γ
n791_suspend_β:
                                                                                        jmp   n788_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_leftdigit$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_leftdigit$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2224]
#-----------------------------------------------------------------------------------------------------------------------
proc_leftdigit$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_leftdigit$2F1_res]
                        push             rax
                        mov              rax, [rbp + 2248]
                        mov              rbp, [rbp + 2264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_leftdigit$2F1_ω:
                        mov              rax, [rbp + 2256]
                        lea              rsp, [rbp + 2272]
                        mov              rbp, [rbp + 2264]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sumdigit/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sumdigit$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "digit/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_digit$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "solve/8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_solve$2F8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 8
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "leftdigit/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_leftdigit$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1576
                        mov              rdi, rsp
                        mov              ecx, 1576
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1568], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n901_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx944_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx944_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx944_101
.Lx944_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx944_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n902_var_ref_α
n901_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n902_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n903_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n904_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n904_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n905_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n905_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n906_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n907_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n908_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n908_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n909_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n910_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n910_call_proc_staged_α:
                        mov              qword ptr [rbp + 1280], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_20
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx962_21
.Lx962_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        call             rt_arg_stage@PLT
.Lx962_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_22
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx962_23
.Lx962_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        call             rt_arg_stage@PLT
.Lx962_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_24
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx962_25
.Lx962_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx962_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_26
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx962_27
.Lx962_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        call             rt_arg_stage@PLT
.Lx962_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_28
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx962_29
.Lx962_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx962_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_30
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx962_31
.Lx962_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx962_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_32
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx962_33
.Lx962_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        call             rt_arg_stage@PLT
.Lx962_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx962_34
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx962_35
.Lx962_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        call             rt_arg_stage@PLT
.Lx962_35:
                        mov              edi, 2
                        mov              esi, 8
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx962_1
                        lea              rcx, [rip + .Lx962_3]
                        lea              rdx, [rip + .Lx962_4]
                                                                                        jmp   rax
.Lx962_3:
                        mov              qword ptr [rbp + 1288], rsp
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx962_5
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx962_2
.Lx962_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx962_2
.Lx962_4:
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx962_6
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx962_2
.Lx962_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx962_2
.Lx962_1:
                        call             rt_faildescr@PLT
.Lx962_2:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n912_lit_string_α
                                                                                        jmp   n911_lit_string_α
n910_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1288]
                                                                                        jmp   qword ptr [rsp]
.Lx962_0:
                        .quad            .Lx962_0_s
.Lx962_0_s:
                        .string          "solve/8"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n913_var_ref_α
.Lx963_0:
                        .quad            .Lx963_0_s
.Lx963_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n914_op11_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n913_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n915_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n914_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn968:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn968]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n917_op11_α
                                                                                        jmp   n916_lit_string_α
n914_op11_β:
                                                                                        jmp   n917_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n915_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n918_var_ref_α
.Lx969_0:
                        .quad            .Lx969_0_s
.Lx969_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n916_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n919_op11_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n917_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n917_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n918_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn975:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn975]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n917_op11_α
                                                                                        jmp   n921_move_label_α
n919_op11_β:
                                                                                        jmp   n917_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n922_var_ref_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n921_move_label_α:
                        lea              rax, [rip + n917_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n924_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n923_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n925_var_ref_α
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n925_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n926_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n927_var_ref_α
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n927_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n928_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n929_var_ref_α
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n929_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n930_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n930_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n931_var_ref_α
.Lx992_0:
                        .quad            .Lx992_0_s
.Lx992_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n931_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n932_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n932_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n933_var_ref_α
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n933_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n934_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n934_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n935_op11_α
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n935_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n936_op11_α
n935_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n936_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n937_op11_α
n936_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n937_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n938_op11_α
n937_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n938_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n939_op11_α
n938_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n939_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n940_op11_α
n939_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n940_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n941_op11_α
n940_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n941_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n942_op11_α
n941_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n942_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n917_op11_α
                                                                                        jmp   n943_op11_α
n942_op11_β:
                                                                                        jmp   n917_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n943_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1008:             .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1008]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n917_op11_α
                                                                                        jmp   n916_lit_string_α
n943_op11_β:
                                                                                        jmp   n917_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n923_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1568]
                        add              rsp, 1576
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1568]
                        add              rsp, 1576
                        ret
                        .section         .note.GNU-stack,"",@progbits
