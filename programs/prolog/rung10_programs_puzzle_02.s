                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_differ$2F3_α
proc_differ$2F3_α:
                        .global          proc_differ$2F3_α
                        .global          proc_differ$2F3_β
                        .global          proc_differ$2F3_γ
                        .global          proc_differ$2F3_ω
                        sub              rsp, 1376
                        mov              [rsp + 1352], rcx
                        mov              [rsp + 1360], rdx
                        mov              [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
proc_differ$2F3_α_body:
                        lea              rax, [rip + n44_suspend_β]
                        mov              qword ptr [rbp + 1248], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx45_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx45_101
.Lx45_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx45_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
.Lx50_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        cmp              esi, 1
                                                                                        jne   .Lx50_55
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_55:
                        cmp              esi, 2
                                                                                        jne   .Lx50_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_56:
                        cmp              eax, 13
                                                                                        jne   .Lx50_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_41
                        cmp              rax, r8
                                                                                        je    .Lx50_41
                        mov              r8, rax
                                                                                        jmp   .Lx50_40
.Lx50_41:
                        lea              r9, [rbp + 1200]
.Lx50_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        cmp              esi, 1
                                                                                        jne   .Lx50_57
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_57:
                        cmp              esi, 2
                                                                                        jne   .Lx50_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_58:
                        cmp              eax, 13
                                                                                        jne   .Lx50_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_43
                        cmp              rax, r9
                                                                                        je    .Lx50_43
                        mov              r9, rax
                                                                                        jmp   .Lx50_42
.Lx50_43:
                        cmp              r8, r9
                                                                                        je    .Lx50_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_44
                        cmp              eax, 99
                                                                                        je    .Lx50_44
                        cmp              eax, 13
                                                                                        jne   .Lx50_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx50_44
                                                                                        jmp   .Lx50_45
.Lx50_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_53
                        cmp              eax, 99
                                                                                        je    .Lx50_53
                        cmp              eax, 13
                                                                                        jne   .Lx50_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_53
                                                                                        jmp   .Lx50_46
.Lx50_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx50_53
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
                                                                                        jmp   .Lx50_51
.Lx50_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_47
                        cmp              eax, 99
                                                                                        je    .Lx50_47
                        cmp              eax, 13
                                                                                        jne   .Lx50_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_47
                                                                                        jmp   .Lx50_48
.Lx50_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx50_53
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
                                                                                        jmp   .Lx50_51
.Lx50_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx50_49
                        cmp              edx, 14
                                                                                        je    .Lx50_53
                                                                                        jmp   .Lx50_52
.Lx50_49:
                        cmp              edx, 14
                                                                                        je    .Lx50_52
                        cmp              ecx, 7
                                                                                        je    .Lx50_53
                        cmp              edx, 7
                                                                                        je    .Lx50_53
                        cmp              ecx, 6
                                                                                        jne   .Lx50_50
                        cmp              edx, 6
                                                                                        jne   .Lx50_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx50_51
                                                                                        jmp   .Lx50_52
.Lx50_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx50_53
.Lx50_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx50_54
.Lx50_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx50_54
.Lx50_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx50_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F3_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        lea              r8, [rbp + 1104]
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
                        lea              r9, [rbp + 1120]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_var_ref_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
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
                        lea              r9, [rbp + 912]
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
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F3_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx69_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        cmp              esi, 1
                                                                                        jne   .Lx69_55
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_55:
                        cmp              esi, 2
                                                                                        jne   .Lx69_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_56:
                        cmp              eax, 13
                                                                                        jne   .Lx69_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        cmp              rax, r8
                                                                                        je    .Lx69_41
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_41:
                        lea              r9, [rbp + 1040]
.Lx69_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx69_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        cmp              esi, 1
                                                                                        jne   .Lx69_57
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_57:
                        cmp              esi, 2
                                                                                        jne   .Lx69_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_58:
                        cmp              eax, 13
                                                                                        jne   .Lx69_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        cmp              rax, r9
                                                                                        je    .Lx69_43
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_43:
                        cmp              r8, r9
                                                                                        je    .Lx69_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_44
                        cmp              eax, 99
                                                                                        je    .Lx69_44
                        cmp              eax, 13
                                                                                        jne   .Lx69_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx69_44
                                                                                        jmp   .Lx69_45
.Lx69_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_53
                        cmp              eax, 99
                                                                                        je    .Lx69_53
                        cmp              eax, 13
                                                                                        jne   .Lx69_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_53
                                                                                        jmp   .Lx69_46
.Lx69_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx69_53
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
                                                                                        jmp   .Lx69_51
.Lx69_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_47
                        cmp              eax, 99
                                                                                        je    .Lx69_47
                        cmp              eax, 13
                                                                                        jne   .Lx69_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_47
                                                                                        jmp   .Lx69_48
.Lx69_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx69_53
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
                                                                                        jmp   .Lx69_51
.Lx69_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx69_49
                        cmp              edx, 14
                                                                                        je    .Lx69_53
                                                                                        jmp   .Lx69_52
.Lx69_49:
                        cmp              edx, 14
                                                                                        je    .Lx69_52
                        cmp              ecx, 7
                                                                                        je    .Lx69_53
                        cmp              edx, 7
                                                                                        je    .Lx69_53
                        cmp              ecx, 6
                                                                                        jne   .Lx69_50
                        cmp              edx, 6
                                                                                        jne   .Lx69_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx69_51
                                                                                        jmp   .Lx69_52
.Lx69_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx69_53
.Lx69_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx69_54
.Lx69_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx69_54
.Lx69_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx69_54:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n18_op19_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op19_α:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx75_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_41
                        cmp              esi, 1
                                                                                        jne   .Lx75_55
                        mov              r8, rax
                                                                                        jmp   .Lx75_40
.Lx75_55:
                        cmp              esi, 2
                                                                                        jne   .Lx75_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_41
                        mov              r8, rax
                                                                                        jmp   .Lx75_40
.Lx75_56:
                        cmp              eax, 13
                                                                                        jne   .Lx75_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_41
                        cmp              rax, r8
                                                                                        je    .Lx75_41
                        mov              r8, rax
                                                                                        jmp   .Lx75_40
.Lx75_41:
                        lea              r9, [rbp + 832]
.Lx75_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_43
                        cmp              esi, 1
                                                                                        jne   .Lx75_57
                        mov              r9, rax
                                                                                        jmp   .Lx75_42
.Lx75_57:
                        cmp              esi, 2
                                                                                        jne   .Lx75_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_43
                        mov              r9, rax
                                                                                        jmp   .Lx75_42
.Lx75_58:
                        cmp              eax, 13
                                                                                        jne   .Lx75_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_43
                        cmp              rax, r9
                                                                                        je    .Lx75_43
                        mov              r9, rax
                                                                                        jmp   .Lx75_42
.Lx75_43:
                        cmp              r8, r9
                                                                                        je    .Lx75_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_44
                        cmp              eax, 99
                                                                                        je    .Lx75_44
                        cmp              eax, 13
                                                                                        jne   .Lx75_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx75_44
                                                                                        jmp   .Lx75_45
.Lx75_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_53
                        cmp              eax, 99
                                                                                        je    .Lx75_53
                        cmp              eax, 13
                                                                                        jne   .Lx75_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx75_53
                                                                                        jmp   .Lx75_46
.Lx75_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx75_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx75_53
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
                                                                                        jmp   .Lx75_51
.Lx75_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_47
                        cmp              eax, 99
                                                                                        je    .Lx75_47
                        cmp              eax, 13
                                                                                        jne   .Lx75_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx75_47
                                                                                        jmp   .Lx75_48
.Lx75_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx75_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx75_53
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
                                                                                        jmp   .Lx75_51
.Lx75_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx75_49
                        cmp              edx, 14
                                                                                        je    .Lx75_53
                                                                                        jmp   .Lx75_52
.Lx75_49:
                        cmp              edx, 14
                                                                                        je    .Lx75_52
                        cmp              ecx, 7
                                                                                        je    .Lx75_53
                        cmp              edx, 7
                                                                                        je    .Lx75_53
                        cmp              ecx, 6
                                                                                        jne   .Lx75_50
                        cmp              edx, 6
                                                                                        jne   .Lx75_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx75_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx75_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx75_51
                                                                                        jmp   .Lx75_52
.Lx75_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx75_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx75_53
.Lx75_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx75_54
.Lx75_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx75_54
.Lx75_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx75_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n22_var_ref_α
n19_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F3_ω
                                                                                        jmp   proc_differ$2F3_ω
n21_op11_β:
                                                                                        jmp   proc_differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx81_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx81_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        cmp              esi, 1
                                                                                        jne   .Lx81_55
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_55:
                        cmp              esi, 2
                                                                                        jne   .Lx81_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_56:
                        cmp              eax, 13
                                                                                        jne   .Lx81_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_41
                        cmp              rax, r8
                                                                                        je    .Lx81_41
                        mov              r8, rax
                                                                                        jmp   .Lx81_40
.Lx81_41:
                        lea              r9, [rbp + 624]
.Lx81_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx81_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        cmp              esi, 1
                                                                                        jne   .Lx81_57
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_57:
                        cmp              esi, 2
                                                                                        jne   .Lx81_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_58:
                        cmp              eax, 13
                                                                                        jne   .Lx81_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx81_43
                        cmp              rax, r9
                                                                                        je    .Lx81_43
                        mov              r9, rax
                                                                                        jmp   .Lx81_42
.Lx81_43:
                        cmp              r8, r9
                                                                                        je    .Lx81_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_44
                        cmp              eax, 99
                                                                                        je    .Lx81_44
                        cmp              eax, 13
                                                                                        jne   .Lx81_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx81_44
                                                                                        jmp   .Lx81_45
.Lx81_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_53
                        cmp              eax, 99
                                                                                        je    .Lx81_53
                        cmp              eax, 13
                                                                                        jne   .Lx81_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx81_53
                                                                                        jmp   .Lx81_46
.Lx81_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx81_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx81_53
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
                                                                                        jmp   .Lx81_51
.Lx81_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx81_47
                        cmp              eax, 99
                                                                                        je    .Lx81_47
                        cmp              eax, 13
                                                                                        jne   .Lx81_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx81_47
                                                                                        jmp   .Lx81_48
.Lx81_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx81_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx81_53
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
                                                                                        jmp   .Lx81_51
.Lx81_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx81_49
                        cmp              edx, 14
                                                                                        je    .Lx81_53
                                                                                        jmp   .Lx81_52
.Lx81_49:
                        cmp              edx, 14
                                                                                        je    .Lx81_52
                        cmp              ecx, 7
                                                                                        je    .Lx81_53
                        cmp              edx, 7
                                                                                        je    .Lx81_53
                        cmp              ecx, 6
                                                                                        jne   .Lx81_50
                        cmp              edx, 6
                                                                                        jne   .Lx81_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx81_51
                                                                                        jmp   .Lx81_52
.Lx81_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx81_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx81_53
.Lx81_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx81_54
.Lx81_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx81_54
.Lx81_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx81_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n25_var_ref_α
n23_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_differ$2F3_ω
                                                                                        jmp   n29_var_ref_α
n26_op11_β:
                                                                                        jmp   proc_differ$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx87_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              esi, 1
                                                                                        jne   .Lx87_55
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_55:
                        cmp              esi, 2
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_56:
                        cmp              eax, 13
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              rax, r8
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_41:
                        lea              r9, [rbp + 752]
.Lx87_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              esi, 1
                                                                                        jne   .Lx87_57
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_57:
                        cmp              esi, 2
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_58:
                        cmp              eax, 13
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              rax, r9
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_43:
                        cmp              r8, r9
                                                                                        je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_44
                        cmp              eax, 99
                                                                                        je    .Lx87_44
                        cmp              eax, 13
                                                                                        jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_44
                                                                                        jmp   .Lx87_45
.Lx87_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_53
                        cmp              eax, 99
                                                                                        je    .Lx87_53
                        cmp              eax, 13
                                                                                        jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_46
.Lx87_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_47
                        cmp              eax, 99
                                                                                        je    .Lx87_47
                        cmp              eax, 13
                                                                                        jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_47
                                                                                        jmp   .Lx87_48
.Lx87_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx87_49
                        cmp              edx, 14
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_52
.Lx87_49:
                        cmp              edx, 14
                                                                                        je    .Lx87_52
                        cmp              ecx, 7
                                                                                        je    .Lx87_53
                        cmp              edx, 7
                                                                                        je    .Lx87_53
                        cmp              ecx, 6
                                                                                        jne   .Lx87_50
                        cmp              edx, 6
                                                                                        jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx87_51
                                                                                        jmp   .Lx87_52
.Lx87_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
.Lx87_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx87_54
.Lx87_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_54
.Lx87_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx87_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n30_op19_α
n27_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op19_α:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx93_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx93_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        cmp              esi, 1
                                                                                        jne   .Lx93_55
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_55:
                        cmp              esi, 2
                                                                                        jne   .Lx93_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_56:
                        cmp              eax, 13
                                                                                        jne   .Lx93_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        cmp              rax, r8
                                                                                        je    .Lx93_41
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_41:
                        lea              r9, [rbp + 544]
.Lx93_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx93_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        cmp              esi, 1
                                                                                        jne   .Lx93_57
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_57:
                        cmp              esi, 2
                                                                                        jne   .Lx93_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_58:
                        cmp              eax, 13
                                                                                        jne   .Lx93_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        cmp              rax, r9
                                                                                        je    .Lx93_43
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_43:
                        cmp              r8, r9
                                                                                        je    .Lx93_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_44
                        cmp              eax, 99
                                                                                        je    .Lx93_44
                        cmp              eax, 13
                                                                                        jne   .Lx93_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx93_44
                                                                                        jmp   .Lx93_45
.Lx93_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_53
                        cmp              eax, 99
                                                                                        je    .Lx93_53
                        cmp              eax, 13
                                                                                        jne   .Lx93_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx93_53
                                                                                        jmp   .Lx93_46
.Lx93_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx93_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx93_53
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
                                                                                        jmp   .Lx93_51
.Lx93_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_47
                        cmp              eax, 99
                                                                                        je    .Lx93_47
                        cmp              eax, 13
                                                                                        jne   .Lx93_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx93_47
                                                                                        jmp   .Lx93_48
.Lx93_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx93_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx93_53
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
                                                                                        jmp   .Lx93_51
.Lx93_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx93_49
                        cmp              edx, 14
                                                                                        je    .Lx93_53
                                                                                        jmp   .Lx93_52
.Lx93_49:
                        cmp              edx, 14
                                                                                        je    .Lx93_52
                        cmp              ecx, 7
                                                                                        je    .Lx93_53
                        cmp              edx, 7
                                                                                        je    .Lx93_53
                        cmp              ecx, 6
                                                                                        jne   .Lx93_50
                        cmp              edx, 6
                                                                                        jne   .Lx93_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx93_51
                                                                                        jmp   .Lx93_52
.Lx93_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx93_53
.Lx93_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx93_54
.Lx93_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx93_54
.Lx93_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx93_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n33_var_ref_α
n31_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx98_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              esi, 1
                                                                                        jne   .Lx98_55
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_55:
                        cmp              esi, 2
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_56:
                        cmp              eax, 13
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              rax, r8
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_41:
                        lea              r9, [rbp + 336]
.Lx98_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              esi, 1
                                                                                        jne   .Lx98_57
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_57:
                        cmp              esi, 2
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_58:
                        cmp              eax, 13
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              rax, r9
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_43:
                        cmp              r8, r9
                                                                                        je    .Lx98_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_44
                        cmp              eax, 99
                                                                                        je    .Lx98_44
                        cmp              eax, 13
                                                                                        jne   .Lx98_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx98_44
                                                                                        jmp   .Lx98_45
.Lx98_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_53
                        cmp              eax, 99
                                                                                        je    .Lx98_53
                        cmp              eax, 13
                                                                                        jne   .Lx98_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_46
.Lx98_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_47
                        cmp              eax, 99
                                                                                        je    .Lx98_47
                        cmp              eax, 13
                                                                                        jne   .Lx98_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_47
                                                                                        jmp   .Lx98_48
.Lx98_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx98_49
                        cmp              edx, 14
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_52
.Lx98_49:
                        cmp              edx, 14
                                                                                        je    .Lx98_52
                        cmp              ecx, 7
                                                                                        je    .Lx98_53
                        cmp              edx, 7
                                                                                        je    .Lx98_53
                        cmp              ecx, 6
                                                                                        jne   .Lx98_50
                        cmp              edx, 6
                                                                                        jne   .Lx98_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx98_51
                                                                                        jmp   .Lx98_52
.Lx98_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
.Lx98_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx98_54
.Lx98_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx98_54
.Lx98_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx98_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n36_var_ref_α
n34_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx103_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx103_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        cmp              esi, 1
                                                                                        jne   .Lx103_55
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_55:
                        cmp              esi, 2
                                                                                        jne   .Lx103_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_56:
                        cmp              eax, 13
                                                                                        jne   .Lx103_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_41
                        cmp              rax, r8
                                                                                        je    .Lx103_41
                        mov              r8, rax
                                                                                        jmp   .Lx103_40
.Lx103_41:
                        lea              r9, [rbp + 464]
.Lx103_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx103_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        cmp              esi, 1
                                                                                        jne   .Lx103_57
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_57:
                        cmp              esi, 2
                                                                                        jne   .Lx103_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_58:
                        cmp              eax, 13
                                                                                        jne   .Lx103_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx103_43
                        cmp              rax, r9
                                                                                        je    .Lx103_43
                        mov              r9, rax
                                                                                        jmp   .Lx103_42
.Lx103_43:
                        cmp              r8, r9
                                                                                        je    .Lx103_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_44
                        cmp              eax, 99
                                                                                        je    .Lx103_44
                        cmp              eax, 13
                                                                                        jne   .Lx103_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx103_44
                                                                                        jmp   .Lx103_45
.Lx103_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_53
                        cmp              eax, 99
                                                                                        je    .Lx103_53
                        cmp              eax, 13
                                                                                        jne   .Lx103_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx103_53
                                                                                        jmp   .Lx103_46
.Lx103_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx103_53
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
                                                                                        jmp   .Lx103_51
.Lx103_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx103_47
                        cmp              eax, 99
                                                                                        je    .Lx103_47
                        cmp              eax, 13
                                                                                        jne   .Lx103_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx103_47
                                                                                        jmp   .Lx103_48
.Lx103_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx103_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx103_53
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
                                                                                        jmp   .Lx103_51
.Lx103_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx103_49
                        cmp              edx, 14
                                                                                        je    .Lx103_53
                                                                                        jmp   .Lx103_52
.Lx103_49:
                        cmp              edx, 14
                                                                                        je    .Lx103_52
                        cmp              ecx, 7
                                                                                        je    .Lx103_53
                        cmp              edx, 7
                                                                                        je    .Lx103_53
                        cmp              ecx, 6
                                                                                        jne   .Lx103_50
                        cmp              edx, 6
                                                                                        jne   .Lx103_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx103_51
                                                                                        jmp   .Lx103_52
.Lx103_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx103_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx103_53
.Lx103_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx103_54
.Lx103_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx103_54
.Lx103_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx103_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n39_op19_α
n37_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op19_α:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx107_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_41
                        cmp              esi, 1
                                                                                        jne   .Lx107_55
                        mov              r8, rax
                                                                                        jmp   .Lx107_40
.Lx107_55:
                        cmp              esi, 2
                                                                                        jne   .Lx107_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_41
                        mov              r8, rax
                                                                                        jmp   .Lx107_40
.Lx107_56:
                        cmp              eax, 13
                                                                                        jne   .Lx107_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_41
                        cmp              rax, r8
                                                                                        je    .Lx107_41
                        mov              r8, rax
                                                                                        jmp   .Lx107_40
.Lx107_41:
                        lea              r9, [rbp + 256]
.Lx107_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx107_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_43
                        cmp              esi, 1
                                                                                        jne   .Lx107_57
                        mov              r9, rax
                                                                                        jmp   .Lx107_42
.Lx107_57:
                        cmp              esi, 2
                                                                                        jne   .Lx107_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx107_43
                        mov              r9, rax
                                                                                        jmp   .Lx107_42
.Lx107_58:
                        cmp              eax, 13
                                                                                        jne   .Lx107_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx107_43
                        cmp              rax, r9
                                                                                        je    .Lx107_43
                        mov              r9, rax
                                                                                        jmp   .Lx107_42
.Lx107_43:
                        cmp              r8, r9
                                                                                        je    .Lx107_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_44
                        cmp              eax, 99
                                                                                        je    .Lx107_44
                        cmp              eax, 13
                                                                                        jne   .Lx107_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx107_44
                                                                                        jmp   .Lx107_45
.Lx107_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_53
                        cmp              eax, 99
                                                                                        je    .Lx107_53
                        cmp              eax, 13
                                                                                        jne   .Lx107_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx107_53
                                                                                        jmp   .Lx107_46
.Lx107_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx107_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx107_53
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
                                                                                        jmp   .Lx107_51
.Lx107_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx107_47
                        cmp              eax, 99
                                                                                        je    .Lx107_47
                        cmp              eax, 13
                                                                                        jne   .Lx107_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx107_47
                                                                                        jmp   .Lx107_48
.Lx107_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx107_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx107_53
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
                                                                                        jmp   .Lx107_51
.Lx107_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx107_49
                        cmp              edx, 14
                                                                                        je    .Lx107_53
                                                                                        jmp   .Lx107_52
.Lx107_49:
                        cmp              edx, 14
                                                                                        je    .Lx107_52
                        cmp              ecx, 7
                                                                                        je    .Lx107_53
                        cmp              edx, 7
                                                                                        je    .Lx107_53
                        cmp              ecx, 6
                                                                                        jne   .Lx107_50
                        cmp              edx, 6
                                                                                        jne   .Lx107_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx107_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx107_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx107_51
                                                                                        jmp   .Lx107_52
.Lx107_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx107_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx107_53
.Lx107_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx107_54
.Lx107_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx107_54
.Lx107_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx107_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n41_var_ref_α
n40_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx112_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              esi, 1
                                                                                        jne   .Lx112_55
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_55:
                        cmp              esi, 2
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_56:
                        cmp              eax, 13
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              rax, r8
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_41:
                        lea              r9, [rbp + 176]
.Lx112_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              esi, 1
                                                                                        jne   .Lx112_57
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_57:
                        cmp              esi, 2
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_58:
                        cmp              eax, 13
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              rax, r9
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_43:
                        cmp              r8, r9
                                                                                        je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_44
                        cmp              eax, 99
                                                                                        je    .Lx112_44
                        cmp              eax, 13
                                                                                        jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx112_44
                                                                                        jmp   .Lx112_45
.Lx112_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_53
                        cmp              eax, 99
                                                                                        je    .Lx112_53
                        cmp              eax, 13
                                                                                        jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_46
.Lx112_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_47
                        cmp              eax, 99
                                                                                        je    .Lx112_47
                        cmp              eax, 13
                                                                                        jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_47
                                                                                        jmp   .Lx112_48
.Lx112_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx112_49
                        cmp              edx, 14
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_52
.Lx112_49:
                        cmp              edx, 14
                                                                                        je    .Lx112_52
                        cmp              ecx, 7
                                                                                        je    .Lx112_53
                        cmp              edx, 7
                                                                                        je    .Lx112_53
                        cmp              ecx, 6
                                                                                        jne   .Lx112_50
                        cmp              edx, 6
                                                                                        jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx112_51
                                                                                        jmp   .Lx112_52
.Lx112_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
.Lx112_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx112_54
.Lx112_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx112_54
.Lx112_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx112_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n21_op11_α
                                                                                        jmp   n44_suspend_α
n43_op11_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_suspend_α:
                        lea              rax, [rip + n44_suspend_β]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_differ$2F3_γ
n44_suspend_β:
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1248]
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_differ$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1352]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_differ$2F3_ω:
                        mov              rax, [rbp + 1360]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_write_occ$2F5_α
proc_write_occ$2F5_α:
                        .global          proc_write_occ$2F5_α
                        .global          proc_write_occ$2F5_β
                        .global          proc_write_occ$2F5_γ
                        .global          proc_write_occ$2F5_ω
                        sub              rsp, 2048
                        mov              [rsp + 2024], rcx
                        mov              [rsp + 2032], rdx
                        mov              [rsp + 2040], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1904
                        mov              edx, 2016
                        call             rt_jmp_frame_lexprep2@PLT
proc_write_occ$2F5_α_body:
                        lea              rax, [rip + n170_suspend_β]
                        mov              qword ptr [rbp + 1904], rax
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx185_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx185_101
.Lx185_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx185_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_write_occ$2F5_ω
                                                                                        jmp   n116_var_ref_α
n115_op11_β:
                                                                                        jmp   proc_write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2000]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n118_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1840]
                        lea              r8, [rbp + 1840]
.Lx190_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              esi, 1
                                                                                        jne   .Lx190_55
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_55:
                        cmp              esi, 2
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_56:
                        cmp              eax, 13
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              rax, r8
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_41:
                        lea              r9, [rbp + 1856]
.Lx190_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              esi, 1
                                                                                        jne   .Lx190_57
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_57:
                        cmp              esi, 2
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_58:
                        cmp              eax, 13
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              rax, r9
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_43:
                        cmp              r8, r9
                                                                                        je    .Lx190_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_44
                        cmp              eax, 99
                                                                                        je    .Lx190_44
                        cmp              eax, 13
                                                                                        jne   .Lx190_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx190_44
                                                                                        jmp   .Lx190_45
.Lx190_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_53
                        cmp              eax, 99
                                                                                        je    .Lx190_53
                        cmp              eax, 13
                                                                                        jne   .Lx190_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_46
.Lx190_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
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
                                                                                        jmp   .Lx190_51
.Lx190_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_47
                        cmp              eax, 99
                                                                                        je    .Lx190_47
                        cmp              eax, 13
                                                                                        jne   .Lx190_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_47
                                                                                        jmp   .Lx190_48
.Lx190_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
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
                                                                                        jmp   .Lx190_51
.Lx190_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx190_49
                        cmp              edx, 14
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_52
.Lx190_49:
                        cmp              edx, 14
                                                                                        je    .Lx190_52
                        cmp              ecx, 7
                                                                                        je    .Lx190_53
                        cmp              edx, 7
                                                                                        je    .Lx190_53
                        cmp              ecx, 6
                                                                                        jne   .Lx190_50
                        cmp              edx, 6
                                                                                        jne   .Lx190_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx190_51
                                                                                        jmp   .Lx190_52
.Lx190_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
.Lx190_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx190_54
.Lx190_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx190_54
.Lx190_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx190_54:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n119_var_ref_α
n118_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    proc_write_occ$2F5_ω
                                                                                        jmp   n122_var_ref_α
n120_op11_β:
                                                                                        jmp   proc_write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n123_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1760]
                        lea              r8, [rbp + 1760]
.Lx198_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx198_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        cmp              esi, 1
                                                                                        jne   .Lx198_55
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_55:
                        cmp              esi, 2
                                                                                        jne   .Lx198_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_56:
                        cmp              eax, 13
                                                                                        jne   .Lx198_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        cmp              rax, r8
                                                                                        je    .Lx198_41
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_41:
                        lea              r9, [rbp + 1776]
.Lx198_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx198_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        cmp              esi, 1
                                                                                        jne   .Lx198_57
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_57:
                        cmp              esi, 2
                                                                                        jne   .Lx198_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_58:
                        cmp              eax, 13
                                                                                        jne   .Lx198_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_43
                        cmp              rax, r9
                                                                                        je    .Lx198_43
                        mov              r9, rax
                                                                                        jmp   .Lx198_42
.Lx198_43:
                        cmp              r8, r9
                                                                                        je    .Lx198_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_44
                        cmp              eax, 99
                                                                                        je    .Lx198_44
                        cmp              eax, 13
                                                                                        jne   .Lx198_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx198_44
                                                                                        jmp   .Lx198_45
.Lx198_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_53
                        cmp              eax, 99
                                                                                        je    .Lx198_53
                        cmp              eax, 13
                                                                                        jne   .Lx198_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx198_53
                                                                                        jmp   .Lx198_46
.Lx198_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx198_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx198_53
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
                                                                                        jmp   .Lx198_51
.Lx198_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_47
                        cmp              eax, 99
                                                                                        je    .Lx198_47
                        cmp              eax, 13
                                                                                        jne   .Lx198_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx198_47
                                                                                        jmp   .Lx198_48
.Lx198_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx198_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx198_53
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
                                                                                        jmp   .Lx198_51
.Lx198_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx198_49
                        cmp              edx, 14
                                                                                        je    .Lx198_53
                                                                                        jmp   .Lx198_52
.Lx198_49:
                        cmp              edx, 14
                                                                                        je    .Lx198_52
                        cmp              ecx, 7
                                                                                        je    .Lx198_53
                        cmp              edx, 7
                                                                                        je    .Lx198_53
                        cmp              ecx, 6
                                                                                        jne   .Lx198_50
                        cmp              edx, 6
                                                                                        jne   .Lx198_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx198_51
                                                                                        jmp   .Lx198_52
.Lx198_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx198_53
.Lx198_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx198_54
.Lx198_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx198_54
.Lx198_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx198_54:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n125_var_ref_α
n123_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n126_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n127_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lx203_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx203_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              esi, 1
                                                                                        jne   .Lx203_55
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_55:
                        cmp              esi, 2
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_56:
                        cmp              eax, 13
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              rax, r8
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_41:
                        lea              r9, [rbp + 1264]
.Lx203_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx203_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              esi, 1
                                                                                        jne   .Lx203_57
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_57:
                        cmp              esi, 2
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_58:
                        cmp              eax, 13
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              rax, r9
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_43:
                        cmp              r8, r9
                                                                                        je    .Lx203_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_44
                        cmp              eax, 99
                                                                                        je    .Lx203_44
                        cmp              eax, 13
                                                                                        jne   .Lx203_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx203_44
                                                                                        jmp   .Lx203_45
.Lx203_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_53
                        cmp              eax, 99
                                                                                        je    .Lx203_53
                        cmp              eax, 13
                                                                                        jne   .Lx203_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_46
.Lx203_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_47
                        cmp              eax, 99
                                                                                        je    .Lx203_47
                        cmp              eax, 13
                                                                                        jne   .Lx203_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_47
                                                                                        jmp   .Lx203_48
.Lx203_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx203_49
                        cmp              edx, 14
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_52
.Lx203_49:
                        cmp              edx, 14
                                                                                        je    .Lx203_52
                        cmp              ecx, 7
                                                                                        je    .Lx203_53
                        cmp              edx, 7
                                                                                        je    .Lx203_53
                        cmp              ecx, 6
                                                                                        jne   .Lx203_50
                        cmp              edx, 6
                                                                                        jne   .Lx203_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx203_51
                                                                                        jmp   .Lx203_52
.Lx203_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
.Lx203_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx203_54
.Lx203_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx203_54
.Lx203_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx203_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n128_var_ref_α
n126_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1952]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n130_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    proc_write_occ$2F5_ω
                                                                                        jmp   n132_var_ref_α
n129_op11_β:
                                                                                        jmp   proc_write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1680]
                        lea              r8, [rbp + 1680]
.Lx209_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              esi, 1
                                                                                        jne   .Lx209_55
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_55:
                        cmp              esi, 2
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_56:
                        cmp              eax, 13
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              rax, r8
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_41:
                        lea              r9, [rbp + 1696]
.Lx209_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              esi, 1
                                                                                        jne   .Lx209_57
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_57:
                        cmp              esi, 2
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_58:
                        cmp              eax, 13
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              rax, r9
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_43:
                        cmp              r8, r9
                                                                                        je    .Lx209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_44
                        cmp              eax, 99
                                                                                        je    .Lx209_44
                        cmp              eax, 13
                                                                                        jne   .Lx209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx209_44
                                                                                        jmp   .Lx209_45
.Lx209_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_53
                        cmp              eax, 99
                                                                                        je    .Lx209_53
                        cmp              eax, 13
                                                                                        jne   .Lx209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_46
.Lx209_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_47
                        cmp              eax, 99
                                                                                        je    .Lx209_47
                        cmp              eax, 13
                                                                                        jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_47
                                                                                        jmp   .Lx209_48
.Lx209_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx209_49
                        cmp              edx, 14
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_52
.Lx209_49:
                        cmp              edx, 14
                                                                                        je    .Lx209_52
                        cmp              ecx, 7
                                                                                        je    .Lx209_53
                        cmp              edx, 7
                                                                                        je    .Lx209_53
                        cmp              ecx, 6
                                                                                        jne   .Lx209_50
                        cmp              edx, 6
                                                                                        jne   .Lx209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx209_51
                                                                                        jmp   .Lx209_52
.Lx209_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
.Lx209_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx209_54
.Lx209_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx209_54
.Lx209_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx209_54:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n133_var_ref_α
n130_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1984]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n134_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx216_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              esi, 1
                                                                                        jne   .Lx216_55
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_55:
                        cmp              esi, 2
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_56:
                        cmp              eax, 13
                                                                                        jne   .Lx216_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_41
                        cmp              rax, r8
                                                                                        je    .Lx216_41
                        mov              r8, rax
                                                                                        jmp   .Lx216_40
.Lx216_41:
                        lea              r9, [rbp + 1184]
.Lx216_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx216_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              esi, 1
                                                                                        jne   .Lx216_57
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_57:
                        cmp              esi, 2
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_58:
                        cmp              eax, 13
                                                                                        jne   .Lx216_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx216_43
                        cmp              rax, r9
                                                                                        je    .Lx216_43
                        mov              r9, rax
                                                                                        jmp   .Lx216_42
.Lx216_43:
                        cmp              r8, r9
                                                                                        je    .Lx216_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_44
                        cmp              eax, 99
                                                                                        je    .Lx216_44
                        cmp              eax, 13
                                                                                        jne   .Lx216_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx216_44
                                                                                        jmp   .Lx216_45
.Lx216_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_53
                        cmp              eax, 99
                                                                                        je    .Lx216_53
                        cmp              eax, 13
                                                                                        jne   .Lx216_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_46
.Lx216_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx216_47
                        cmp              eax, 99
                                                                                        je    .Lx216_47
                        cmp              eax, 13
                                                                                        jne   .Lx216_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx216_47
                                                                                        jmp   .Lx216_48
.Lx216_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx216_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx216_53
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
                                                                                        jmp   .Lx216_51
.Lx216_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx216_49
                        cmp              edx, 14
                                                                                        je    .Lx216_53
                                                                                        jmp   .Lx216_52
.Lx216_49:
                        cmp              edx, 14
                                                                                        je    .Lx216_52
                        cmp              ecx, 7
                                                                                        je    .Lx216_53
                        cmp              edx, 7
                                                                                        je    .Lx216_53
                        cmp              ecx, 6
                                                                                        jne   .Lx216_50
                        cmp              edx, 6
                                                                                        jne   .Lx216_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx216_51
                                                                                        jmp   .Lx216_52
.Lx216_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx216_53
.Lx216_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx216_54
.Lx216_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx216_54
.Lx216_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx216_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n137_var_ref_α
n134_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n138_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n139_op11_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx222_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              esi, 1
                                                                                        jne   .Lx222_55
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_55:
                        cmp              esi, 2
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_56:
                        cmp              eax, 13
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              rax, r8
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_41:
                        lea              r9, [rbp + 672]
.Lx222_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              esi, 1
                                                                                        jne   .Lx222_57
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_57:
                        cmp              esi, 2
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_58:
                        cmp              eax, 13
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              rax, r9
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_43:
                        cmp              r8, r9
                                                                                        je    .Lx222_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_44
                        cmp              eax, 99
                                                                                        je    .Lx222_44
                        cmp              eax, 13
                                                                                        jne   .Lx222_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx222_44
                                                                                        jmp   .Lx222_45
.Lx222_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_53
                        cmp              eax, 99
                                                                                        je    .Lx222_53
                        cmp              eax, 13
                                                                                        jne   .Lx222_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_46
.Lx222_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_47
                        cmp              eax, 99
                                                                                        je    .Lx222_47
                        cmp              eax, 13
                                                                                        jne   .Lx222_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_47
                                                                                        jmp   .Lx222_48
.Lx222_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx222_49
                        cmp              edx, 14
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_52
.Lx222_49:
                        cmp              edx, 14
                                                                                        je    .Lx222_52
                        cmp              ecx, 7
                                                                                        je    .Lx222_53
                        cmp              edx, 7
                                                                                        je    .Lx222_53
                        cmp              ecx, 6
                                                                                        jne   .Lx222_50
                        cmp              edx, 6
                                                                                        jne   .Lx222_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx222_51
                                                                                        jmp   .Lx222_52
.Lx222_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
.Lx222_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx222_54
.Lx222_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx222_54
.Lx222_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx222_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n141_var_ref_α
n138_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx223_2]
                                                                                        jmp   .Lx223_3
.Lx223_2:
                        .quad            .Lx223_2_s
.Lx223_2_s:
                        .string          "carpenter"
.Lx223_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n143_var_ref_α
n139_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1952]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
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
                                                                                        je    proc_write_occ$2F5_ω
                                                                                        jmp   proc_write_occ$2F5_ω
n142_op11_β:
                                                                                        jmp   proc_write_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx231_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx231_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        cmp              esi, 1
                                                                                        jne   .Lx231_55
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_55:
                        cmp              esi, 2
                                                                                        jne   .Lx231_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_56:
                        cmp              eax, 13
                                                                                        jne   .Lx231_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        cmp              rax, r8
                                                                                        je    .Lx231_41
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_41:
                        lea              r9, [rbp + 1104]
.Lx231_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx231_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        cmp              esi, 1
                                                                                        jne   .Lx231_57
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_57:
                        cmp              esi, 2
                                                                                        jne   .Lx231_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_58:
                        cmp              eax, 13
                                                                                        jne   .Lx231_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        cmp              rax, r9
                                                                                        je    .Lx231_43
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_43:
                        cmp              r8, r9
                                                                                        je    .Lx231_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_44
                        cmp              eax, 99
                                                                                        je    .Lx231_44
                        cmp              eax, 13
                                                                                        jne   .Lx231_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx231_44
                                                                                        jmp   .Lx231_45
.Lx231_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_53
                        cmp              eax, 99
                                                                                        je    .Lx231_53
                        cmp              eax, 13
                                                                                        jne   .Lx231_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx231_53
                                                                                        jmp   .Lx231_46
.Lx231_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx231_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx231_53
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
                                                                                        jmp   .Lx231_51
.Lx231_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_47
                        cmp              eax, 99
                                                                                        je    .Lx231_47
                        cmp              eax, 13
                                                                                        jne   .Lx231_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx231_47
                                                                                        jmp   .Lx231_48
.Lx231_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx231_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx231_53
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
                                                                                        jmp   .Lx231_51
.Lx231_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx231_49
                        cmp              edx, 14
                                                                                        je    .Lx231_53
                                                                                        jmp   .Lx231_52
.Lx231_49:
                        cmp              edx, 14
                                                                                        je    .Lx231_52
                        cmp              ecx, 7
                                                                                        je    .Lx231_53
                        cmp              edx, 7
                                                                                        je    .Lx231_53
                        cmp              ecx, 6
                                                                                        jne   .Lx231_50
                        cmp              edx, 6
                                                                                        jne   .Lx231_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx231_51
                                                                                        jmp   .Lx231_52
.Lx231_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx231_53
.Lx231_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx231_54
.Lx231_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx231_54
.Lx231_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx231_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n147_var_ref_α
n144_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1952]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1936]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n149_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx238_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx238_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              esi, 1
                                                                                        jne   .Lx238_55
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_55:
                        cmp              esi, 2
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_56:
                        cmp              eax, 13
                                                                                        jne   .Lx238_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_41
                        cmp              rax, r8
                                                                                        je    .Lx238_41
                        mov              r8, rax
                                                                                        jmp   .Lx238_40
.Lx238_41:
                        lea              r9, [rbp + 592]
.Lx238_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx238_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              esi, 1
                                                                                        jne   .Lx238_57
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_57:
                        cmp              esi, 2
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_58:
                        cmp              eax, 13
                                                                                        jne   .Lx238_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx238_43
                        cmp              rax, r9
                                                                                        je    .Lx238_43
                        mov              r9, rax
                                                                                        jmp   .Lx238_42
.Lx238_43:
                        cmp              r8, r9
                                                                                        je    .Lx238_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_44
                        cmp              eax, 99
                                                                                        je    .Lx238_44
                        cmp              eax, 13
                                                                                        jne   .Lx238_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx238_44
                                                                                        jmp   .Lx238_45
.Lx238_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_53
                        cmp              eax, 99
                                                                                        je    .Lx238_53
                        cmp              eax, 13
                                                                                        jne   .Lx238_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_46
.Lx238_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx238_47
                        cmp              eax, 99
                                                                                        je    .Lx238_47
                        cmp              eax, 13
                                                                                        jne   .Lx238_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx238_47
                                                                                        jmp   .Lx238_48
.Lx238_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx238_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx238_53
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
                                                                                        jmp   .Lx238_51
.Lx238_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx238_49
                        cmp              edx, 14
                                                                                        je    .Lx238_53
                                                                                        jmp   .Lx238_52
.Lx238_49:
                        cmp              edx, 14
                                                                                        je    .Lx238_52
                        cmp              ecx, 7
                                                                                        je    .Lx238_53
                        cmp              edx, 7
                                                                                        je    .Lx238_53
                        cmp              ecx, 6
                                                                                        jne   .Lx238_50
                        cmp              edx, 6
                                                                                        jne   .Lx238_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx238_51
                                                                                        jmp   .Lx238_52
.Lx238_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx238_53
.Lx238_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx238_54
.Lx238_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx238_54
.Lx238_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx238_54:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n151_var_ref_α
n148_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1520]
                        lea              r8, [rbp + 1520]
.Lx239_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx239_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        cmp              esi, 1
                                                                                        jne   .Lx239_55
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_55:
                        cmp              esi, 2
                                                                                        jne   .Lx239_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_56:
                        cmp              eax, 13
                                                                                        jne   .Lx239_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_41
                        cmp              rax, r8
                                                                                        je    .Lx239_41
                        mov              r8, rax
                                                                                        jmp   .Lx239_40
.Lx239_41:
                        lea              r9, [rbp + 1536]
.Lx239_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx239_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        cmp              esi, 1
                                                                                        jne   .Lx239_57
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_57:
                        cmp              esi, 2
                                                                                        jne   .Lx239_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_58:
                        cmp              eax, 13
                                                                                        jne   .Lx239_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx239_43
                        cmp              rax, r9
                                                                                        je    .Lx239_43
                        mov              r9, rax
                                                                                        jmp   .Lx239_42
.Lx239_43:
                        cmp              r8, r9
                                                                                        je    .Lx239_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_44
                        cmp              eax, 99
                                                                                        je    .Lx239_44
                        cmp              eax, 13
                                                                                        jne   .Lx239_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx239_44
                                                                                        jmp   .Lx239_45
.Lx239_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_53
                        cmp              eax, 99
                                                                                        je    .Lx239_53
                        cmp              eax, 13
                                                                                        jne   .Lx239_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx239_53
                                                                                        jmp   .Lx239_46
.Lx239_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx239_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx239_53
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
                                                                                        jmp   .Lx239_51
.Lx239_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx239_47
                        cmp              eax, 99
                                                                                        je    .Lx239_47
                        cmp              eax, 13
                                                                                        jne   .Lx239_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx239_47
                                                                                        jmp   .Lx239_48
.Lx239_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx239_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx239_53
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
                                                                                        jmp   .Lx239_51
.Lx239_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx239_49
                        cmp              edx, 14
                                                                                        je    .Lx239_53
                                                                                        jmp   .Lx239_52
.Lx239_49:
                        cmp              edx, 14
                                                                                        je    .Lx239_52
                        cmp              ecx, 7
                                                                                        je    .Lx239_53
                        cmp              edx, 7
                                                                                        je    .Lx239_53
                        cmp              ecx, 6
                                                                                        jne   .Lx239_50
                        cmp              edx, 6
                                                                                        jne   .Lx239_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx239_51
                                                                                        jmp   .Lx239_52
.Lx239_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx239_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx239_53
.Lx239_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx239_54
.Lx239_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx239_54
.Lx239_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx239_54:
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n152_lit_string_α
n149_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n153_op11_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n155_op11_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "Clark="
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "painter"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n156_var_ref_α
n153_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn248:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n158_var_α
n155_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx251_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              esi, 1
                                                                                        jne   .Lx251_55
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_55:
                        cmp              esi, 2
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_56:
                        cmp              eax, 13
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              rax, r8
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_41:
                        lea              r9, [rbp + 512]
.Lx251_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              esi, 1
                                                                                        jne   .Lx251_57
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_57:
                        cmp              esi, 2
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_58:
                        cmp              eax, 13
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              rax, r9
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_43:
                        cmp              r8, r9
                                                                                        je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_44
                        cmp              eax, 99
                                                                                        je    .Lx251_44
                        cmp              eax, 13
                                                                                        jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx251_44
                                                                                        jmp   .Lx251_45
.Lx251_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_53
                        cmp              eax, 99
                                                                                        je    .Lx251_53
                        cmp              eax, 13
                                                                                        jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_46
.Lx251_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_47
                        cmp              eax, 99
                                                                                        je    .Lx251_47
                        cmp              eax, 13
                                                                                        jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_47
                                                                                        jmp   .Lx251_48
.Lx251_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx251_49
                        cmp              edx, 14
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_52
.Lx251_49:
                        cmp              edx, 14
                                                                                        je    .Lx251_52
                        cmp              ecx, 7
                                                                                        je    .Lx251_53
                        cmp              edx, 7
                                                                                        je    .Lx251_53
                        cmp              ecx, 6
                                                                                        jne   .Lx251_50
                        cmp              edx, 6
                                                                                        jne   .Lx251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx251_51
                                                                                        jmp   .Lx251_52
.Lx251_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
.Lx251_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx251_54
.Lx251_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx251_54
.Lx251_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx251_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n160_var_ref_α
n157_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n161_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1936]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n162_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn259:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n164_lit_string_α
n161_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx260_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx260_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx260_41
                        cmp              esi, 1
                                                                                        jne   .Lx260_55
                        mov              r8, rax
                                                                                        jmp   .Lx260_40
.Lx260_55:
                        cmp              esi, 2
                                                                                        jne   .Lx260_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx260_41
                        mov              r8, rax
                                                                                        jmp   .Lx260_40
.Lx260_56:
                        cmp              eax, 13
                                                                                        jne   .Lx260_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx260_41
                        cmp              rax, r8
                                                                                        je    .Lx260_41
                        mov              r8, rax
                                                                                        jmp   .Lx260_40
.Lx260_41:
                        lea              r9, [rbp + 944]
.Lx260_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx260_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx260_43
                        cmp              esi, 1
                                                                                        jne   .Lx260_57
                        mov              r9, rax
                                                                                        jmp   .Lx260_42
.Lx260_57:
                        cmp              esi, 2
                                                                                        jne   .Lx260_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx260_43
                        mov              r9, rax
                                                                                        jmp   .Lx260_42
.Lx260_58:
                        cmp              eax, 13
                                                                                        jne   .Lx260_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx260_43
                        cmp              rax, r9
                                                                                        je    .Lx260_43
                        mov              r9, rax
                                                                                        jmp   .Lx260_42
.Lx260_43:
                        cmp              r8, r9
                                                                                        je    .Lx260_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx260_44
                        cmp              eax, 99
                                                                                        je    .Lx260_44
                        cmp              eax, 13
                                                                                        jne   .Lx260_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx260_44
                                                                                        jmp   .Lx260_45
.Lx260_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx260_53
                        cmp              eax, 99
                                                                                        je    .Lx260_53
                        cmp              eax, 13
                                                                                        jne   .Lx260_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx260_53
                                                                                        jmp   .Lx260_46
.Lx260_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx260_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx260_53
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
                                                                                        jmp   .Lx260_51
.Lx260_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx260_47
                        cmp              eax, 99
                                                                                        je    .Lx260_47
                        cmp              eax, 13
                                                                                        jne   .Lx260_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx260_47
                                                                                        jmp   .Lx260_48
.Lx260_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx260_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx260_53
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
                                                                                        jmp   .Lx260_51
.Lx260_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx260_49
                        cmp              edx, 14
                                                                                        je    .Lx260_53
                                                                                        jmp   .Lx260_52
.Lx260_49:
                        cmp              edx, 14
                                                                                        je    .Lx260_52
                        cmp              ecx, 7
                                                                                        je    .Lx260_53
                        cmp              edx, 7
                                                                                        je    .Lx260_53
                        cmp              ecx, 6
                                                                                        jne   .Lx260_50
                        cmp              edx, 6
                                                                                        jne   .Lx260_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx260_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx260_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx260_51
                                                                                        jmp   .Lx260_52
.Lx260_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx260_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx260_53
.Lx260_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx260_54
.Lx260_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx260_54
.Lx260_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx260_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n165_lit_string_α
n162_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n166_op11_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n167_op11_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n168_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "Daw="
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lx264_2]
                                                                                        jmp   .Lx264_3
.Lx264_2:
                        .quad            .Lx264_2_s
.Lx264_2_s:
                        .string          "plumber"
.Lx264_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n169_var_ref_α
n166_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn266:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n170_suspend_α
n167_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn268:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n171_var_α
n168_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_suspend_α:
                        lea              rax, [rip + n170_suspend_β]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_write_occ$2F5_γ
n170_suspend_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1936]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n174_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn278:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n175_lit_string_α
n173_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx279_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx279_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_41
                        cmp              esi, 1
                                                                                        jne   .Lx279_55
                        mov              r8, rax
                                                                                        jmp   .Lx279_40
.Lx279_55:
                        cmp              esi, 2
                                                                                        jne   .Lx279_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx279_41
                        mov              r8, rax
                                                                                        jmp   .Lx279_40
.Lx279_56:
                        cmp              eax, 13
                                                                                        jne   .Lx279_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_41
                        cmp              rax, r8
                                                                                        je    .Lx279_41
                        mov              r8, rax
                                                                                        jmp   .Lx279_40
.Lx279_41:
                        lea              r9, [rbp + 352]
.Lx279_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx279_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_43
                        cmp              esi, 1
                                                                                        jne   .Lx279_57
                        mov              r9, rax
                                                                                        jmp   .Lx279_42
.Lx279_57:
                        cmp              esi, 2
                                                                                        jne   .Lx279_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx279_43
                        mov              r9, rax
                                                                                        jmp   .Lx279_42
.Lx279_58:
                        cmp              eax, 13
                                                                                        jne   .Lx279_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_43
                        cmp              rax, r9
                                                                                        je    .Lx279_43
                        mov              r9, rax
                                                                                        jmp   .Lx279_42
.Lx279_43:
                        cmp              r8, r9
                                                                                        je    .Lx279_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx279_44
                        cmp              eax, 99
                                                                                        je    .Lx279_44
                        cmp              eax, 13
                                                                                        jne   .Lx279_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx279_44
                                                                                        jmp   .Lx279_45
.Lx279_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx279_53
                        cmp              eax, 99
                                                                                        je    .Lx279_53
                        cmp              eax, 13
                                                                                        jne   .Lx279_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx279_53
                                                                                        jmp   .Lx279_46
.Lx279_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx279_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx279_53
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
                                                                                        jmp   .Lx279_51
.Lx279_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx279_47
                        cmp              eax, 99
                                                                                        je    .Lx279_47
                        cmp              eax, 13
                                                                                        jne   .Lx279_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx279_47
                                                                                        jmp   .Lx279_48
.Lx279_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx279_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx279_53
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
                                                                                        jmp   .Lx279_51
.Lx279_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx279_49
                        cmp              edx, 14
                                                                                        je    .Lx279_53
                                                                                        jmp   .Lx279_52
.Lx279_49:
                        cmp              edx, 14
                                                                                        je    .Lx279_52
                        cmp              ecx, 7
                                                                                        je    .Lx279_53
                        cmp              edx, 7
                                                                                        je    .Lx279_53
                        cmp              ecx, 6
                                                                                        jne   .Lx279_50
                        cmp              edx, 6
                                                                                        jne   .Lx279_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx279_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx279_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx279_51
                                                                                        jmp   .Lx279_52
.Lx279_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx279_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx279_53
.Lx279_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx279_54
.Lx279_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx279_54
.Lx279_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx279_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n176_lit_string_α
n174_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n177_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n178_op11_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "Fuller="
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn283:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n179_suspend_α
n177_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn285:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n180_var_α
n178_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_suspend_α:
                        lea              rax, [rip + n179_suspend_β]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_write_occ$2F5_γ
n179_suspend_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn291:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n182_lit_string_α
n181_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n183_op11_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn294:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n184_suspend_α
n183_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_suspend_α:
                        lea              rax, [rip + n184_suspend_β]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_write_occ$2F5_γ
n184_suspend_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_write_occ$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_write_occ$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1904]
#-----------------------------------------------------------------------------------------------------------------------
proc_write_occ$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_write_occ$2F5_res]
                        push             rax
                        mov              rax, [rbp + 2024]
                        mov              rbp, [rbp + 2040]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_write_occ$2F5_ω:
                        mov              rax, [rbp + 2032]
                        lea              rsp, [rbp + 2048]
                        mov              rbp, [rbp + 2040]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx319_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx319_101
.Lx319_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx319_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n298_var_ref_α
n297_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n299_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_proc_staged_α:
                        mov              qword ptr [rbp + 720], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx323_20
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx323_21
.Lx323_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx323_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx323_1
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4]
                                                                                        jmp   rax
.Lx323_3:
                        mov              qword ptr [rbp + 728], rsp
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx323_5
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx323_2
.Lx323_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx323_2
.Lx323_4:
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx323_6
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx323_2
.Lx323_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx323_2
.Lx323_1:
                        call             rt_faildescr@PLT
.Lx323_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n301_op11_α
                                                                                        jmp   n300_var_ref_α
n299_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 728]
                                                                                        jmp   qword ptr [rsp]
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n302_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n301_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx328_21
.Lx328_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx328_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx328_1
                        lea              rcx, [rip + .Lx328_3]
                        lea              rdx, [rip + .Lx328_4]
                                                                                        jmp   rax
.Lx328_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx328_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx328_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_1:
                        call             rt_faildescr@PLT
.Lx328_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n299_call_proc_staged_β
                                                                                        jmp   n303_var_ref_α
n302_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              qword ptr [rbp + 560], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx332_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx332_21
.Lx332_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx332_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx332_1
                        lea              rcx, [rip + .Lx332_3]
                        lea              rdx, [rip + .Lx332_4]
                                                                                        jmp   rax
.Lx332_3:
                        mov              qword ptr [rbp + 568], rsp
                        mov              rax, qword ptr [rbp + 560]
                        test             rax, rax
                                                                                        jne   .Lx332_5
                        mov              qword ptr [rbp + 560], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx332_2
.Lx332_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx332_2
.Lx332_4:
                        mov              rax, qword ptr [rbp + 560]
                        test             rax, rax
                                                                                        jne   .Lx332_6
                        mov              qword ptr [rbp + 560], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx332_2
.Lx332_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx332_2
.Lx332_1:
                        call             rt_faildescr@PLT
.Lx332_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n302_call_proc_staged_β
                                                                                        jmp   n305_var_ref_α
n304_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 568]
                                                                                        jmp   qword ptr [rsp]
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "occupation/1"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n308_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_proc_staged_α:
                        mov              qword ptr [rbp + 448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx340_23
.Lx340_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx340_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_24
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx340_25
.Lx340_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx340_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 456], rsp
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n304_call_proc_staged_β
                                                                                        jmp   n309_var_ref_α
n308_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "differ/3"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n311_op11_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lx344_2]
                                                                                        jmp   .Lx344_3
.Lx344_2:
                        .quad            .Lx344_2_s
.Lx344_2_s:
                        .string          "plumber"
.Lx344_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n308_call_proc_staged_β
                                                                                        jmp   n312_var_ref_α
n311_op11_β:
                                                                                        jmp   n308_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n314_op11_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n314_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              rsi, qword ptr [rip + .Lx348_2]
                                                                                        jmp   .Lx348_3
.Lx348_2:
                        .quad            .Lx348_2_s
.Lx348_2_s:
                        .string          "carpenter"
.Lx348_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n315_var_ref_α
                                                                                        jmp   n308_call_proc_staged_β
n314_op11_β:
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n318_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx356_21
.Lx356_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx356_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx356_23
.Lx356_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx356_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_24
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx356_25
.Lx356_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx356_25:
                        mov              edi, 7
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx356_1
                        lea              rcx, [rip + .Lx356_3]
                        lea              rdx, [rip + .Lx356_4]
                                                                                        jmp   rax
.Lx356_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx356_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx356_2
.Lx356_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx356_2
.Lx356_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx356_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx356_2
.Lx356_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx356_2
.Lx356_1:
                        call             rt_faildescr@PLT
.Lx356_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n308_call_proc_staged_β
                                                                                        jmp   n318_call_proc_staged_β
n318_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "display/3"
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_puzzle$2F0_res]
                        push             rax
                        mov              rax, [rbp + 840]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_occupation$2F1_α
proc_occupation$2F1_α:
                        .global          proc_occupation$2F1_α
                        .global          proc_occupation$2F1_β
                        .global          proc_occupation$2F1_γ
                        .global          proc_occupation$2F1_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_occupation$2F1_α_body:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx375_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx375_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx375_101
.Lx375_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx375_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n358_var_ref_α
n357_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx380_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        cmp              esi, 1
                                                                                        jne   .Lx380_55
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_55:
                        cmp              esi, 2
                                                                                        jne   .Lx380_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_56:
                        cmp              eax, 13
                                                                                        jne   .Lx380_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_41
                        cmp              rax, r8
                                                                                        je    .Lx380_41
                        mov              r8, rax
                                                                                        jmp   .Lx380_40
.Lx380_41:
                        lea              r9, [rbp + 576]
.Lx380_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx380_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        cmp              esi, 1
                                                                                        jne   .Lx380_57
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_57:
                        cmp              esi, 2
                                                                                        jne   .Lx380_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_58:
                        cmp              eax, 13
                                                                                        jne   .Lx380_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx380_43
                        cmp              rax, r9
                                                                                        je    .Lx380_43
                        mov              r9, rax
                                                                                        jmp   .Lx380_42
.Lx380_43:
                        cmp              r8, r9
                                                                                        je    .Lx380_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_44
                        cmp              eax, 99
                                                                                        je    .Lx380_44
                        cmp              eax, 13
                                                                                        jne   .Lx380_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx380_44
                                                                                        jmp   .Lx380_45
.Lx380_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_53
                        cmp              eax, 99
                                                                                        je    .Lx380_53
                        cmp              eax, 13
                                                                                        jne   .Lx380_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_53
                                                                                        jmp   .Lx380_46
.Lx380_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx380_53
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
                                                                                        jmp   .Lx380_51
.Lx380_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx380_47
                        cmp              eax, 99
                                                                                        je    .Lx380_47
                        cmp              eax, 13
                                                                                        jne   .Lx380_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx380_47
                                                                                        jmp   .Lx380_48
.Lx380_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx380_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx380_53
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
                                                                                        jmp   .Lx380_51
.Lx380_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx380_49
                        cmp              edx, 14
                                                                                        je    .Lx380_53
                                                                                        jmp   .Lx380_52
.Lx380_49:
                        cmp              edx, 14
                                                                                        je    .Lx380_52
                        cmp              ecx, 7
                                                                                        je    .Lx380_53
                        cmp              edx, 7
                                                                                        je    .Lx380_53
                        cmp              ecx, 6
                                                                                        jne   .Lx380_50
                        cmp              edx, 6
                                                                                        jne   .Lx380_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx380_51
                                                                                        jmp   .Lx380_52
.Lx380_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx380_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx380_53
.Lx380_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx380_54
.Lx380_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx380_54
.Lx380_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx380_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n361_var_ref_α
n360_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
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
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   proc_occupation$2F1_ω
n362_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n364_lit_string_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n365_lit_string_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n366_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n367_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n368_lit_string_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n369_lit_string_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n370_op11_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n371_op11_α
n370_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_occupation$2F1_ω
                                                                                        jmp   n372_op11_α
n371_op11_β:
                                                                                        jmp   proc_occupation$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n373_call_proc_staged_α
n372_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx395_21
.Lx395_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx395_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx395_23
.Lx395_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx395_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx395_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx395_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n374_suspend_α
n373_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n374_suspend_α:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_occupation$2F1_γ
n374_suspend_β:
                                                                                        jmp   n373_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_occupation$2F1_res]
                        push             rax
                        mov              rax, [rbp + 664]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_occupation$2F1_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
                        .global          proc_$disj0$2F0_α
                        .global          proc_$disj0$2F0_β
                        .global          proc_$disj0$2F0_γ
                        .global          proc_$disj0$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx404_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx404_101
.Lx404_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx404_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n399_call_proc_staged_α
n398_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx406_1
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4]
                                                                                        jmp   rax
.Lx406_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx406_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx406_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_1:
                        call             rt_faildescr@PLT
.Lx406_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n401_op11_α
                                                                                        jmp   n400_suspend_α
n399_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n400_suspend_α:
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n400_suspend_β:
                                                                                        jmp   n399_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n401_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n402_suspend_α
n401_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_suspend_α:
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n402_suspend_β:
                                                                                        jmp   n403_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   proc_$disj0$2F0_ω
n403_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_member$2F2_α
proc_member$2F2_α:
                        .global          proc_member$2F2_α
                        .global          proc_member$2F2_β
                        .global          proc_member$2F2_γ
                        .global          proc_member$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_member$2F2_α_body:
                        lea              rax, [rip + n425_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx435_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx435_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx435_101
.Lx435_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx435_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n414_var_ref_α
n413_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n416_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n416_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx440_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx440_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx440_41
                        cmp              esi, 1
                                                                                        jne   .Lx440_55
                        mov              r8, rax
                                                                                        jmp   .Lx440_40
.Lx440_55:
                        cmp              esi, 2
                                                                                        jne   .Lx440_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx440_41
                        mov              r8, rax
                                                                                        jmp   .Lx440_40
.Lx440_56:
                        cmp              eax, 13
                                                                                        jne   .Lx440_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx440_41
                        cmp              rax, r8
                                                                                        je    .Lx440_41
                        mov              r8, rax
                                                                                        jmp   .Lx440_40
.Lx440_41:
                        lea              r9, [rbp + 608]
.Lx440_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx440_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx440_43
                        cmp              esi, 1
                                                                                        jne   .Lx440_57
                        mov              r9, rax
                                                                                        jmp   .Lx440_42
.Lx440_57:
                        cmp              esi, 2
                                                                                        jne   .Lx440_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx440_43
                        mov              r9, rax
                                                                                        jmp   .Lx440_42
.Lx440_58:
                        cmp              eax, 13
                                                                                        jne   .Lx440_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx440_43
                        cmp              rax, r9
                                                                                        je    .Lx440_43
                        mov              r9, rax
                                                                                        jmp   .Lx440_42
.Lx440_43:
                        cmp              r8, r9
                                                                                        je    .Lx440_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx440_44
                        cmp              eax, 99
                                                                                        je    .Lx440_44
                        cmp              eax, 13
                                                                                        jne   .Lx440_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx440_44
                                                                                        jmp   .Lx440_45
.Lx440_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx440_53
                        cmp              eax, 99
                                                                                        je    .Lx440_53
                        cmp              eax, 13
                                                                                        jne   .Lx440_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx440_53
                                                                                        jmp   .Lx440_46
.Lx440_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx440_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx440_53
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
                                                                                        jmp   .Lx440_51
.Lx440_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx440_47
                        cmp              eax, 99
                                                                                        je    .Lx440_47
                        cmp              eax, 13
                                                                                        jne   .Lx440_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx440_47
                                                                                        jmp   .Lx440_48
.Lx440_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx440_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx440_53
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
                                                                                        jmp   .Lx440_51
.Lx440_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx440_49
                        cmp              edx, 14
                                                                                        je    .Lx440_53
                                                                                        jmp   .Lx440_52
.Lx440_49:
                        cmp              edx, 14
                                                                                        je    .Lx440_52
                        cmp              ecx, 7
                                                                                        je    .Lx440_53
                        cmp              edx, 7
                                                                                        je    .Lx440_53
                        cmp              ecx, 6
                                                                                        jne   .Lx440_50
                        cmp              edx, 6
                                                                                        jne   .Lx440_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx440_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx440_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx440_51
                                                                                        jmp   .Lx440_52
.Lx440_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx440_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx440_53
.Lx440_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx440_54
.Lx440_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx440_54
.Lx440_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx440_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n418_op11_α
                                                                                        jmp   n417_var_ref_α
n416_op11_β:
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n419_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n420_var_ref_α
n418_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx452_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_61
                        cmp              esi, 1
                                                                                        jne   .Lx452_62
                        mov              r8, rax
                                                                                        jmp   .Lx452_60
.Lx452_62:
                        cmp              esi, 2
                                                                                        jne   .Lx452_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_61
                        mov              r8, rax
                                                                                        jmp   .Lx452_60
.Lx452_63:
                        cmp              eax, 13
                                                                                        jne   .Lx452_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_61
                        cmp              rax, r8
                                                                                        je    .Lx452_61
                        mov              r8, rax
                                                                                        jmp   .Lx452_60
.Lx452_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_80
                        cmp              eax, 99
                                                                                        je    .Lx452_80
                        cmp              eax, 13
                                                                                        jne   .Lx452_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx452_80
                                                                                        jmp   .Lx452_74
.Lx452_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx452_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx452_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx452_73
                        lea              r9, [rbp + 512]
.Lx452_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_65
                        cmp              esi, 1
                                                                                        jne   .Lx452_66
                        mov              r9, rax
                                                                                        jmp   .Lx452_64
.Lx452_66:
                        cmp              esi, 2
                                                                                        jne   .Lx452_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_65
                        mov              r9, rax
                                                                                        jmp   .Lx452_64
.Lx452_67:
                        cmp              eax, 13
                                                                                        jne   .Lx452_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_65
                        cmp              rax, r9
                                                                                        je    .Lx452_65
                        mov              r9, rax
                                                                                        jmp   .Lx452_64
.Lx452_65:
                        lea              rcx, [rbp + 528]
.Lx452_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx452_69
                        cmp              esi, 1
                                                                                        jne   .Lx452_70
                        mov              rcx, rax
                                                                                        jmp   .Lx452_68
.Lx452_70:
                        cmp              esi, 2
                                                                                        jne   .Lx452_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_69
                        mov              rcx, rax
                                                                                        jmp   .Lx452_68
.Lx452_71:
                        cmp              eax, 13
                                                                                        jne   .Lx452_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx452_69
                        cmp              rax, rcx
                                                                                        je    .Lx452_69
                        mov              rcx, rax
                                                                                        jmp   .Lx452_68
.Lx452_69:
                        cmp              r9, rcx
                                                                                        je    .Lx452_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_75
                        cmp              eax, 99
                                                                                        je    .Lx452_75
                        cmp              eax, 13
                                                                                        jne   .Lx452_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx452_75
                                                                                        jmp   .Lx452_72
.Lx452_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_76
                        cmp              eax, 99
                                                                                        je    .Lx452_76
                        cmp              eax, 13
                                                                                        jne   .Lx452_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx452_76
                                                                                        jmp   .Lx452_72
.Lx452_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx452_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx452_72
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
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx452_77
.Lx452_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx452_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx452_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx452_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx452_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx452_72
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
                        lea              r9, [rbp + 512]
.Lx452_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_82
                        cmp              esi, 1
                                                                                        jne   .Lx452_83
                        mov              r9, rax
                                                                                        jmp   .Lx452_81
.Lx452_83:
                        cmp              esi, 2
                                                                                        jne   .Lx452_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_82
                        mov              r9, rax
                                                                                        jmp   .Lx452_81
.Lx452_84:
                        cmp              eax, 13
                                                                                        jne   .Lx452_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_82
                        cmp              rax, r9
                                                                                        je    .Lx452_82
                        mov              r9, rax
                                                                                        jmp   .Lx452_81
.Lx452_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_85
                        cmp              eax, 99
                                                                                        je    .Lx452_85
                        cmp              eax, 13
                                                                                        jne   .Lx452_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx452_85
                                                                                        jmp   .Lx452_86
.Lx452_85:
                        mov              qword ptr [rdx + 0], 13
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
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx452_87
.Lx452_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx452_87:
                        lea              rcx, [rbp + 528]
.Lx452_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx452_89
                        cmp              esi, 1
                                                                                        jne   .Lx452_90
                        mov              rcx, rax
                                                                                        jmp   .Lx452_88
.Lx452_90:
                        cmp              esi, 2
                                                                                        jne   .Lx452_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_89
                        mov              rcx, rax
                                                                                        jmp   .Lx452_88
.Lx452_91:
                        cmp              eax, 13
                                                                                        jne   .Lx452_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx452_89
                        cmp              rax, rcx
                                                                                        je    .Lx452_89
                        mov              rcx, rax
                                                                                        jmp   .Lx452_88
.Lx452_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_92
                        cmp              eax, 99
                                                                                        je    .Lx452_92
                        cmp              eax, 13
                                                                                        jne   .Lx452_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx452_92
                                                                                        jmp   .Lx452_93
.Lx452_92:
                        mov              qword ptr [rdx + 16], 13
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
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx452_94
.Lx452_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx452_94:
                        lea              r10, [rip + g_pl_trail]
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
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx452_77
.Lx452_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx452_77
.Lx452_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx452_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n418_op11_α
                                                                                        jmp   n425_suspend_α
n423_op11_β:
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx453_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx453_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        cmp              esi, 1
                                                                                        jne   .Lx453_55
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_55:
                        cmp              esi, 2
                                                                                        jne   .Lx453_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_56:
                        cmp              eax, 13
                                                                                        jne   .Lx453_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        cmp              rax, r8
                                                                                        je    .Lx453_41
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_41:
                        lea              r9, [rbp + 368]
.Lx453_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx453_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        cmp              esi, 1
                                                                                        jne   .Lx453_57
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_57:
                        cmp              esi, 2
                                                                                        jne   .Lx453_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_58:
                        cmp              eax, 13
                                                                                        jne   .Lx453_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        cmp              rax, r9
                                                                                        je    .Lx453_43
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_43:
                        cmp              r8, r9
                                                                                        je    .Lx453_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_44
                        cmp              eax, 99
                                                                                        je    .Lx453_44
                        cmp              eax, 13
                                                                                        jne   .Lx453_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx453_44
                                                                                        jmp   .Lx453_45
.Lx453_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_53
                        cmp              eax, 99
                                                                                        je    .Lx453_53
                        cmp              eax, 13
                                                                                        jne   .Lx453_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx453_53
                                                                                        jmp   .Lx453_46
.Lx453_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx453_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx453_53
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
                                                                                        jmp   .Lx453_51
.Lx453_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_47
                        cmp              eax, 99
                                                                                        je    .Lx453_47
                        cmp              eax, 13
                                                                                        jne   .Lx453_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx453_47
                                                                                        jmp   .Lx453_48
.Lx453_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx453_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx453_53
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
                                                                                        jmp   .Lx453_51
.Lx453_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx453_49
                        cmp              edx, 14
                                                                                        je    .Lx453_53
                                                                                        jmp   .Lx453_52
.Lx453_49:
                        cmp              edx, 14
                                                                                        je    .Lx453_52
                        cmp              ecx, 7
                                                                                        je    .Lx453_53
                        cmp              edx, 7
                                                                                        je    .Lx453_53
                        cmp              ecx, 6
                                                                                        jne   .Lx453_50
                        cmp              edx, 6
                                                                                        jne   .Lx453_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx453_51
                                                                                        jmp   .Lx453_52
.Lx453_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx453_53
.Lx453_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx453_54
.Lx453_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx453_54
.Lx453_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx453_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n427_op11_α
                                                                                        jmp   n426_var_ref_α
n424_op11_β:
                                                                                        jmp   n427_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n425_suspend_α:
                        lea              rax, [rip + n425_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n425_suspend_β:
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   proc_member$2F2_ω
n427_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n429_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n430_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx463_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_61
                        cmp              esi, 1
                                                                                        jne   .Lx463_62
                        mov              r8, rax
                                                                                        jmp   .Lx463_60
.Lx463_62:
                        cmp              esi, 2
                                                                                        jne   .Lx463_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_61
                        mov              r8, rax
                                                                                        jmp   .Lx463_60
.Lx463_63:
                        cmp              eax, 13
                                                                                        jne   .Lx463_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_61
                        cmp              rax, r8
                                                                                        je    .Lx463_61
                        mov              r8, rax
                                                                                        jmp   .Lx463_60
.Lx463_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_80
                        cmp              eax, 99
                                                                                        je    .Lx463_80
                        cmp              eax, 13
                                                                                        jne   .Lx463_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_80
                                                                                        jmp   .Lx463_74
.Lx463_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx463_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx463_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx463_73
                        lea              r9, [rbp + 272]
.Lx463_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_65
                        cmp              esi, 1
                                                                                        jne   .Lx463_66
                        mov              r9, rax
                                                                                        jmp   .Lx463_64
.Lx463_66:
                        cmp              esi, 2
                                                                                        jne   .Lx463_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_65
                        mov              r9, rax
                                                                                        jmp   .Lx463_64
.Lx463_67:
                        cmp              eax, 13
                                                                                        jne   .Lx463_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_65
                        cmp              rax, r9
                                                                                        je    .Lx463_65
                        mov              r9, rax
                                                                                        jmp   .Lx463_64
.Lx463_65:
                        lea              rcx, [rbp + 288]
.Lx463_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx463_69
                        cmp              esi, 1
                                                                                        jne   .Lx463_70
                        mov              rcx, rax
                                                                                        jmp   .Lx463_68
.Lx463_70:
                        cmp              esi, 2
                                                                                        jne   .Lx463_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_69
                        mov              rcx, rax
                                                                                        jmp   .Lx463_68
.Lx463_71:
                        cmp              eax, 13
                                                                                        jne   .Lx463_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx463_69
                        cmp              rax, rcx
                                                                                        je    .Lx463_69
                        mov              rcx, rax
                                                                                        jmp   .Lx463_68
.Lx463_69:
                        cmp              r9, rcx
                                                                                        je    .Lx463_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_75
                        cmp              eax, 99
                                                                                        je    .Lx463_75
                        cmp              eax, 13
                                                                                        jne   .Lx463_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_75
                                                                                        jmp   .Lx463_72
.Lx463_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_76
                        cmp              eax, 99
                                                                                        je    .Lx463_76
                        cmp              eax, 13
                                                                                        jne   .Lx463_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx463_76
                                                                                        jmp   .Lx463_72
.Lx463_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx463_72
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
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx463_77
.Lx463_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx463_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx463_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx463_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx463_72
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
                        lea              r9, [rbp + 272]
.Lx463_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_82
                        cmp              esi, 1
                                                                                        jne   .Lx463_83
                        mov              r9, rax
                                                                                        jmp   .Lx463_81
.Lx463_83:
                        cmp              esi, 2
                                                                                        jne   .Lx463_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_82
                        mov              r9, rax
                                                                                        jmp   .Lx463_81
.Lx463_84:
                        cmp              eax, 13
                                                                                        jne   .Lx463_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_82
                        cmp              rax, r9
                                                                                        je    .Lx463_82
                        mov              r9, rax
                                                                                        jmp   .Lx463_81
.Lx463_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_85
                        cmp              eax, 99
                                                                                        je    .Lx463_85
                        cmp              eax, 13
                                                                                        jne   .Lx463_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_85
                                                                                        jmp   .Lx463_86
.Lx463_85:
                        mov              qword ptr [rdx + 0], 13
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
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx463_87
.Lx463_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx463_87:
                        lea              rcx, [rbp + 288]
.Lx463_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx463_89
                        cmp              esi, 1
                                                                                        jne   .Lx463_90
                        mov              rcx, rax
                                                                                        jmp   .Lx463_88
.Lx463_90:
                        cmp              esi, 2
                                                                                        jne   .Lx463_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_89
                        mov              rcx, rax
                                                                                        jmp   .Lx463_88
.Lx463_91:
                        cmp              eax, 13
                                                                                        jne   .Lx463_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx463_89
                        cmp              rax, rcx
                                                                                        je    .Lx463_89
                        mov              rcx, rax
                                                                                        jmp   .Lx463_88
.Lx463_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_92
                        cmp              eax, 99
                                                                                        je    .Lx463_92
                        cmp              eax, 13
                                                                                        jne   .Lx463_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx463_92
                                                                                        jmp   .Lx463_93
.Lx463_92:
                        mov              qword ptr [rdx + 16], 13
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
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx463_94
.Lx463_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx463_94:
                        lea              r10, [rip + g_pl_trail]
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
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx463_77
.Lx463_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx463_77
.Lx463_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx463_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n427_op11_α
                                                                                        jmp   n431_var_ref_α
n430_op11_β:
                                                                                        jmp   n427_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n433_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n433_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx469_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx469_21
.Lx469_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx469_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx469_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx469_23
.Lx469_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx469_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx469_1
                        lea              rcx, [rip + .Lx469_3]
                        lea              rdx, [rip + .Lx469_4]
                                                                                        jmp   rax
.Lx469_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx469_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx469_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx469_2
.Lx469_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx469_2
.Lx469_1:
                        call             rt_faildescr@PLT
.Lx469_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n427_op11_α
                                                                                        jmp   n434_suspend_α
n433_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n434_suspend_α:
                        lea              rax, [rip + n434_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n434_suspend_β:
                                                                                        jmp   n433_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_member$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_occ$2F5_α
proc_occ$2F5_α:
                        .global          proc_occ$2F5_α
                        .global          proc_occ$2F5_β
                        .global          proc_occ$2F5_γ
                        .global          proc_occ$2F5_ω
                        sub              rsp, 1568
                        mov              [rsp + 1544], rcx
                        mov              [rsp + 1552], rdx
                        mov              [rsp + 1560], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1472
                        mov              edx, 1536
                        call             rt_jmp_frame_lexprep2@PLT
proc_occ$2F5_α_body:
                        lea              rax, [rip + n509_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx524_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx524_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx524_101
.Lx524_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx524_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_occ$2F5_ω
                                                                                        jmp   n473_var_ref_α
n472_op11_β:
                                                                                        jmp   proc_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n475_op11_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n475_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              rsi, qword ptr [rip + .Lx528_2]
                                                                                        jmp   .Lx528_3
.Lx528_2:
                        .quad            .Lx528_2_s
.Lx528_2_s:
                        .string          "clark"
.Lx528_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n476_var_ref_α
n475_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_occ$2F5_ω
                                                                                        jmp   n479_var_ref_α
n477_op11_β:
                                                                                        jmp   proc_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n480_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n480_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1328]
                        lea              r8, [rbp + 1328]
.Lx536_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              esi, 1
                                                                                        jne   .Lx536_55
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_55:
                        cmp              esi, 2
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_56:
                        cmp              eax, 13
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              rax, r8
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_41:
                        lea              r9, [rbp + 1344]
.Lx536_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              esi, 1
                                                                                        jne   .Lx536_57
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_57:
                        cmp              esi, 2
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_58:
                        cmp              eax, 13
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              rax, r9
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_43:
                        cmp              r8, r9
                                                                                        je    .Lx536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_44
                        cmp              eax, 99
                                                                                        je    .Lx536_44
                        cmp              eax, 13
                                                                                        jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx536_44
                                                                                        jmp   .Lx536_45
.Lx536_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_53
                        cmp              eax, 99
                                                                                        je    .Lx536_53
                        cmp              eax, 13
                                                                                        jne   .Lx536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_46
.Lx536_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
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
                                                                                        jmp   .Lx536_51
.Lx536_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_47
                        cmp              eax, 99
                                                                                        je    .Lx536_47
                        cmp              eax, 13
                                                                                        jne   .Lx536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_47
                                                                                        jmp   .Lx536_48
.Lx536_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
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
                                                                                        jmp   .Lx536_51
.Lx536_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx536_49
                        cmp              edx, 14
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_52
.Lx536_49:
                        cmp              edx, 14
                                                                                        je    .Lx536_52
                        cmp              ecx, 7
                                                                                        je    .Lx536_53
                        cmp              edx, 7
                                                                                        je    .Lx536_53
                        cmp              ecx, 6
                                                                                        jne   .Lx536_50
                        cmp              edx, 6
                                                                                        jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx536_51
                                                                                        jmp   .Lx536_52
.Lx536_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
.Lx536_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx536_54
.Lx536_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx536_54
.Lx536_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx536_54:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n482_var_ref_α
n480_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n483_op11_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "daw"
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              rsi, qword ptr [rip + .Lx540_2]
                                                                                        jmp   .Lx540_3
.Lx540_2:
                        .quad            .Lx540_2_s
.Lx540_2_s:
                        .string          "daw"
.Lx540_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n485_var_ref_α
n483_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n487_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n488_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_occ$2F5_ω
                                                                                        jmp   n489_var_ref_α
n486_op11_β:
                                                                                        jmp   proc_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lx546_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              esi, 1
                                                                                        jne   .Lx546_55
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_55:
                        cmp              esi, 2
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_56:
                        cmp              eax, 13
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              rax, r8
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_41:
                        lea              r9, [rbp + 1264]
.Lx546_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              esi, 1
                                                                                        jne   .Lx546_57
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_57:
                        cmp              esi, 2
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_58:
                        cmp              eax, 13
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              rax, r9
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_43:
                        cmp              r8, r9
                                                                                        je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_44
                        cmp              eax, 99
                                                                                        je    .Lx546_44
                        cmp              eax, 13
                                                                                        jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx546_44
                                                                                        jmp   .Lx546_45
.Lx546_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_53
                        cmp              eax, 99
                                                                                        je    .Lx546_53
                        cmp              eax, 13
                                                                                        jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_46
.Lx546_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_47
                        cmp              eax, 99
                                                                                        je    .Lx546_47
                        cmp              eax, 13
                                                                                        jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_47
                                                                                        jmp   .Lx546_48
.Lx546_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
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
                                                                                        jmp   .Lx546_51
.Lx546_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx546_49
                        cmp              edx, 14
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_52
.Lx546_49:
                        cmp              edx, 14
                                                                                        je    .Lx546_52
                        cmp              ecx, 7
                                                                                        je    .Lx546_53
                        cmp              edx, 7
                                                                                        je    .Lx546_53
                        cmp              ecx, 6
                                                                                        jne   .Lx546_50
                        cmp              edx, 6
                                                                                        jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx546_51
                                                                                        jmp   .Lx546_52
.Lx546_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
.Lx546_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx546_54
.Lx546_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx546_54
.Lx546_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx546_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n490_var_ref_α
n487_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n491_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
.Lx553_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              esi, 1
                                                                                        jne   .Lx553_55
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_55:
                        cmp              esi, 2
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_56:
                        cmp              eax, 13
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              rax, r8
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_41:
                        lea              r9, [rbp + 896]
.Lx553_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              esi, 1
                                                                                        jne   .Lx553_57
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_57:
                        cmp              esi, 2
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_58:
                        cmp              eax, 13
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              rax, r9
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_43:
                        cmp              r8, r9
                                                                                        je    .Lx553_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_44
                        cmp              eax, 99
                                                                                        je    .Lx553_44
                        cmp              eax, 13
                                                                                        jne   .Lx553_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx553_44
                                                                                        jmp   .Lx553_45
.Lx553_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_53
                        cmp              eax, 99
                                                                                        je    .Lx553_53
                        cmp              eax, 13
                                                                                        jne   .Lx553_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_46
.Lx553_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_47
                        cmp              eax, 99
                                                                                        je    .Lx553_47
                        cmp              eax, 13
                                                                                        jne   .Lx553_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_47
                                                                                        jmp   .Lx553_48
.Lx553_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx553_49
                        cmp              edx, 14
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_52
.Lx553_49:
                        cmp              edx, 14
                                                                                        je    .Lx553_52
                        cmp              ecx, 7
                                                                                        je    .Lx553_53
                        cmp              edx, 7
                                                                                        je    .Lx553_53
                        cmp              ecx, 6
                                                                                        jne   .Lx553_50
                        cmp              edx, 6
                                                                                        jne   .Lx553_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx553_51
                                                                                        jmp   .Lx553_52
.Lx553_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
.Lx553_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx553_54
.Lx553_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx553_54
.Lx553_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx553_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n494_var_ref_α
n491_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n495_op11_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "fuller"
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n496_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx559_2]
                                                                                        jmp   .Lx559_3
.Lx559_2:
                        .quad            .Lx559_2_s
.Lx559_2_s:
                        .string          "fuller"
.Lx559_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n498_var_ref_α
n495_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx560_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx560_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        cmp              esi, 1
                                                                                        jne   .Lx560_55
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_55:
                        cmp              esi, 2
                                                                                        jne   .Lx560_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_56:
                        cmp              eax, 13
                                                                                        jne   .Lx560_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_41
                        cmp              rax, r8
                                                                                        je    .Lx560_41
                        mov              r8, rax
                                                                                        jmp   .Lx560_40
.Lx560_41:
                        lea              r9, [rbp + 1184]
.Lx560_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx560_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        cmp              esi, 1
                                                                                        jne   .Lx560_57
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_57:
                        cmp              esi, 2
                                                                                        jne   .Lx560_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_58:
                        cmp              eax, 13
                                                                                        jne   .Lx560_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx560_43
                        cmp              rax, r9
                                                                                        je    .Lx560_43
                        mov              r9, rax
                                                                                        jmp   .Lx560_42
.Lx560_43:
                        cmp              r8, r9
                                                                                        je    .Lx560_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_44
                        cmp              eax, 99
                                                                                        je    .Lx560_44
                        cmp              eax, 13
                                                                                        jne   .Lx560_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx560_44
                                                                                        jmp   .Lx560_45
.Lx560_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_53
                        cmp              eax, 99
                                                                                        je    .Lx560_53
                        cmp              eax, 13
                                                                                        jne   .Lx560_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx560_53
                                                                                        jmp   .Lx560_46
.Lx560_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx560_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx560_53
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
                                                                                        jmp   .Lx560_51
.Lx560_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx560_47
                        cmp              eax, 99
                                                                                        je    .Lx560_47
                        cmp              eax, 13
                                                                                        jne   .Lx560_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx560_47
                                                                                        jmp   .Lx560_48
.Lx560_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx560_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx560_53
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
                                                                                        jmp   .Lx560_51
.Lx560_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx560_49
                        cmp              edx, 14
                                                                                        je    .Lx560_53
                                                                                        jmp   .Lx560_52
.Lx560_49:
                        cmp              edx, 14
                                                                                        je    .Lx560_52
                        cmp              ecx, 7
                                                                                        je    .Lx560_53
                        cmp              edx, 7
                                                                                        je    .Lx560_53
                        cmp              ecx, 6
                                                                                        jne   .Lx560_50
                        cmp              edx, 6
                                                                                        jne   .Lx560_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx560_51
                                                                                        jmp   .Lx560_52
.Lx560_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx560_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx560_53
.Lx560_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx560_54
.Lx560_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx560_54
.Lx560_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx560_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n500_var_ref_α
n496_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n502_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
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
                                                                                        je    proc_occ$2F5_ω
                                                                                        jmp   proc_occ$2F5_ω
n499_op11_β:
                                                                                        jmp   proc_occ$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lx568_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              esi, 1
                                                                                        jne   .Lx568_55
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_55:
                        cmp              esi, 2
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_56:
                        cmp              eax, 13
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              rax, r8
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_41:
                        lea              r9, [rbp + 816]
.Lx568_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              esi, 1
                                                                                        jne   .Lx568_57
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_57:
                        cmp              esi, 2
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_58:
                        cmp              eax, 13
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              rax, r9
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_43:
                        cmp              r8, r9
                                                                                        je    .Lx568_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_44
                        cmp              eax, 99
                                                                                        je    .Lx568_44
                        cmp              eax, 13
                                                                                        jne   .Lx568_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx568_44
                                                                                        jmp   .Lx568_45
.Lx568_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_53
                        cmp              eax, 99
                                                                                        je    .Lx568_53
                        cmp              eax, 13
                                                                                        jne   .Lx568_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_46
.Lx568_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_47
                        cmp              eax, 99
                                                                                        je    .Lx568_47
                        cmp              eax, 13
                                                                                        jne   .Lx568_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_47
                                                                                        jmp   .Lx568_48
.Lx568_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx568_49
                        cmp              edx, 14
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_52
.Lx568_49:
                        cmp              edx, 14
                                                                                        je    .Lx568_52
                        cmp              ecx, 7
                                                                                        je    .Lx568_53
                        cmp              edx, 7
                                                                                        je    .Lx568_53
                        cmp              ecx, 6
                                                                                        jne   .Lx568_50
                        cmp              edx, 6
                                                                                        jne   .Lx568_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx568_51
                                                                                        jmp   .Lx568_52
.Lx568_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
.Lx568_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx568_54
.Lx568_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx568_54
.Lx568_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx568_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n504_var_ref_α
n501_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n505_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n507_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n505_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lx575_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              esi, 1
                                                                                        jne   .Lx575_55
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_55:
                        cmp              esi, 2
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_56:
                        cmp              eax, 13
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              rax, r8
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_41:
                        lea              r9, [rbp + 448]
.Lx575_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              esi, 1
                                                                                        jne   .Lx575_57
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_57:
                        cmp              esi, 2
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_58:
                        cmp              eax, 13
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              rax, r9
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_43:
                        cmp              r8, r9
                                                                                        je    .Lx575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_44
                        cmp              eax, 99
                                                                                        je    .Lx575_44
                        cmp              eax, 13
                                                                                        jne   .Lx575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx575_44
                                                                                        jmp   .Lx575_45
.Lx575_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_53
                        cmp              eax, 99
                                                                                        je    .Lx575_53
                        cmp              eax, 13
                                                                                        jne   .Lx575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_46
.Lx575_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_47
                        cmp              eax, 99
                                                                                        je    .Lx575_47
                        cmp              eax, 13
                                                                                        jne   .Lx575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_47
                                                                                        jmp   .Lx575_48
.Lx575_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx575_49
                        cmp              edx, 14
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_52
.Lx575_49:
                        cmp              edx, 14
                                                                                        je    .Lx575_52
                        cmp              ecx, 7
                                                                                        je    .Lx575_53
                        cmp              edx, 7
                                                                                        je    .Lx575_53
                        cmp              ecx, 6
                                                                                        jne   .Lx575_50
                        cmp              edx, 6
                                                                                        jne   .Lx575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx575_51
                                                                                        jmp   .Lx575_52
.Lx575_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
.Lx575_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx575_54
.Lx575_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx575_54
.Lx575_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx575_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n508_var_ref_α
n505_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx576_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx576_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        cmp              esi, 1
                                                                                        jne   .Lx576_55
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_55:
                        cmp              esi, 2
                                                                                        jne   .Lx576_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_56:
                        cmp              eax, 13
                                                                                        jne   .Lx576_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_41
                        cmp              rax, r8
                                                                                        je    .Lx576_41
                        mov              r8, rax
                                                                                        jmp   .Lx576_40
.Lx576_41:
                        lea              r9, [rbp + 1104]
.Lx576_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx576_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        cmp              esi, 1
                                                                                        jne   .Lx576_57
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_57:
                        cmp              esi, 2
                                                                                        jne   .Lx576_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_58:
                        cmp              eax, 13
                                                                                        jne   .Lx576_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx576_43
                        cmp              rax, r9
                                                                                        je    .Lx576_43
                        mov              r9, rax
                                                                                        jmp   .Lx576_42
.Lx576_43:
                        cmp              r8, r9
                                                                                        je    .Lx576_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_44
                        cmp              eax, 99
                                                                                        je    .Lx576_44
                        cmp              eax, 13
                                                                                        jne   .Lx576_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx576_44
                                                                                        jmp   .Lx576_45
.Lx576_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_53
                        cmp              eax, 99
                                                                                        je    .Lx576_53
                        cmp              eax, 13
                                                                                        jne   .Lx576_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_53
                                                                                        jmp   .Lx576_46
.Lx576_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx576_53
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
                                                                                        jmp   .Lx576_51
.Lx576_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx576_47
                        cmp              eax, 99
                                                                                        je    .Lx576_47
                        cmp              eax, 13
                                                                                        jne   .Lx576_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx576_47
                                                                                        jmp   .Lx576_48
.Lx576_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx576_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx576_53
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
                                                                                        jmp   .Lx576_51
.Lx576_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx576_49
                        cmp              edx, 14
                                                                                        je    .Lx576_53
                                                                                        jmp   .Lx576_52
.Lx576_49:
                        cmp              edx, 14
                                                                                        je    .Lx576_52
                        cmp              ecx, 7
                                                                                        je    .Lx576_53
                        cmp              edx, 7
                                                                                        je    .Lx576_53
                        cmp              ecx, 6
                                                                                        jne   .Lx576_50
                        cmp              edx, 6
                                                                                        jne   .Lx576_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx576_51
                                                                                        jmp   .Lx576_52
.Lx576_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx576_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx576_53
.Lx576_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx576_54
.Lx576_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx576_54
.Lx576_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx576_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n509_suspend_α
n506_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n510_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n511_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_suspend_α:
                        lea              rax, [rip + n509_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_occ$2F5_γ
n509_suspend_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx583_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx583_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx583_41
                        cmp              esi, 1
                                                                                        jne   .Lx583_55
                        mov              r8, rax
                                                                                        jmp   .Lx583_40
.Lx583_55:
                        cmp              esi, 2
                                                                                        jne   .Lx583_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx583_41
                        mov              r8, rax
                                                                                        jmp   .Lx583_40
.Lx583_56:
                        cmp              eax, 13
                                                                                        jne   .Lx583_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx583_41
                        cmp              rax, r8
                                                                                        je    .Lx583_41
                        mov              r8, rax
                                                                                        jmp   .Lx583_40
.Lx583_41:
                        lea              r9, [rbp + 736]
.Lx583_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx583_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx583_43
                        cmp              esi, 1
                                                                                        jne   .Lx583_57
                        mov              r9, rax
                                                                                        jmp   .Lx583_42
.Lx583_57:
                        cmp              esi, 2
                                                                                        jne   .Lx583_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx583_43
                        mov              r9, rax
                                                                                        jmp   .Lx583_42
.Lx583_58:
                        cmp              eax, 13
                                                                                        jne   .Lx583_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx583_43
                        cmp              rax, r9
                                                                                        je    .Lx583_43
                        mov              r9, rax
                                                                                        jmp   .Lx583_42
.Lx583_43:
                        cmp              r8, r9
                                                                                        je    .Lx583_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx583_44
                        cmp              eax, 99
                                                                                        je    .Lx583_44
                        cmp              eax, 13
                                                                                        jne   .Lx583_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx583_44
                                                                                        jmp   .Lx583_45
.Lx583_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx583_53
                        cmp              eax, 99
                                                                                        je    .Lx583_53
                        cmp              eax, 13
                                                                                        jne   .Lx583_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx583_53
                                                                                        jmp   .Lx583_46
.Lx583_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx583_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx583_53
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
                                                                                        jmp   .Lx583_51
.Lx583_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx583_47
                        cmp              eax, 99
                                                                                        je    .Lx583_47
                        cmp              eax, 13
                                                                                        jne   .Lx583_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx583_47
                                                                                        jmp   .Lx583_48
.Lx583_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx583_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx583_53
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
                                                                                        jmp   .Lx583_51
.Lx583_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx583_49
                        cmp              edx, 14
                                                                                        je    .Lx583_53
                                                                                        jmp   .Lx583_52
.Lx583_49:
                        cmp              edx, 14
                                                                                        je    .Lx583_52
                        cmp              ecx, 7
                                                                                        je    .Lx583_53
                        cmp              edx, 7
                                                                                        je    .Lx583_53
                        cmp              ecx, 6
                                                                                        jne   .Lx583_50
                        cmp              edx, 6
                                                                                        jne   .Lx583_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx583_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx583_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx583_51
                                                                                        jmp   .Lx583_52
.Lx583_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx583_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx583_53
.Lx583_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx583_54
.Lx583_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx583_54
.Lx583_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx583_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n512_var_ref_α
n510_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n513_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n514_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n513_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx588_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              esi, 1
                                                                                        jne   .Lx588_55
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_55:
                        cmp              esi, 2
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_56:
                        cmp              eax, 13
                                                                                        jne   .Lx588_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_41
                        cmp              rax, r8
                                                                                        je    .Lx588_41
                        mov              r8, rax
                                                                                        jmp   .Lx588_40
.Lx588_41:
                        lea              r9, [rbp + 368]
.Lx588_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx588_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              esi, 1
                                                                                        jne   .Lx588_57
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_57:
                        cmp              esi, 2
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_58:
                        cmp              eax, 13
                                                                                        jne   .Lx588_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx588_43
                        cmp              rax, r9
                                                                                        je    .Lx588_43
                        mov              r9, rax
                                                                                        jmp   .Lx588_42
.Lx588_43:
                        cmp              r8, r9
                                                                                        je    .Lx588_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_44
                        cmp              eax, 99
                                                                                        je    .Lx588_44
                        cmp              eax, 13
                                                                                        jne   .Lx588_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx588_44
                                                                                        jmp   .Lx588_45
.Lx588_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_53
                        cmp              eax, 99
                                                                                        je    .Lx588_53
                        cmp              eax, 13
                                                                                        jne   .Lx588_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_46
.Lx588_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx588_47
                        cmp              eax, 99
                                                                                        je    .Lx588_47
                        cmp              eax, 13
                                                                                        jne   .Lx588_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx588_47
                                                                                        jmp   .Lx588_48
.Lx588_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx588_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx588_53
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
                                                                                        jmp   .Lx588_51
.Lx588_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx588_49
                        cmp              edx, 14
                                                                                        je    .Lx588_53
                                                                                        jmp   .Lx588_52
.Lx588_49:
                        cmp              edx, 14
                                                                                        je    .Lx588_52
                        cmp              ecx, 7
                                                                                        je    .Lx588_53
                        cmp              edx, 7
                                                                                        je    .Lx588_53
                        cmp              ecx, 6
                                                                                        jne   .Lx588_50
                        cmp              edx, 6
                                                                                        jne   .Lx588_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx588_51
                                                                                        jmp   .Lx588_52
.Lx588_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx588_53
.Lx588_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx588_54
.Lx588_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx588_54
.Lx588_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx588_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n515_var_ref_α
n513_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n516_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx593_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx593_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        cmp              esi, 1
                                                                                        jne   .Lx593_55
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_55:
                        cmp              esi, 2
                                                                                        jne   .Lx593_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_56:
                        cmp              eax, 13
                                                                                        jne   .Lx593_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_41
                        cmp              rax, r8
                                                                                        je    .Lx593_41
                        mov              r8, rax
                                                                                        jmp   .Lx593_40
.Lx593_41:
                        lea              r9, [rbp + 656]
.Lx593_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx593_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        cmp              esi, 1
                                                                                        jne   .Lx593_57
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_57:
                        cmp              esi, 2
                                                                                        jne   .Lx593_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_58:
                        cmp              eax, 13
                                                                                        jne   .Lx593_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx593_43
                        cmp              rax, r9
                                                                                        je    .Lx593_43
                        mov              r9, rax
                                                                                        jmp   .Lx593_42
.Lx593_43:
                        cmp              r8, r9
                                                                                        je    .Lx593_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_44
                        cmp              eax, 99
                                                                                        je    .Lx593_44
                        cmp              eax, 13
                                                                                        jne   .Lx593_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx593_44
                                                                                        jmp   .Lx593_45
.Lx593_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_53
                        cmp              eax, 99
                                                                                        je    .Lx593_53
                        cmp              eax, 13
                                                                                        jne   .Lx593_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx593_53
                                                                                        jmp   .Lx593_46
.Lx593_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx593_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx593_53
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
                                                                                        jmp   .Lx593_51
.Lx593_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx593_47
                        cmp              eax, 99
                                                                                        je    .Lx593_47
                        cmp              eax, 13
                                                                                        jne   .Lx593_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx593_47
                                                                                        jmp   .Lx593_48
.Lx593_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx593_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx593_53
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
                                                                                        jmp   .Lx593_51
.Lx593_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx593_49
                        cmp              edx, 14
                                                                                        je    .Lx593_53
                                                                                        jmp   .Lx593_52
.Lx593_49:
                        cmp              edx, 14
                                                                                        je    .Lx593_52
                        cmp              ecx, 7
                                                                                        je    .Lx593_53
                        cmp              edx, 7
                                                                                        je    .Lx593_53
                        cmp              ecx, 6
                                                                                        jne   .Lx593_50
                        cmp              edx, 6
                                                                                        jne   .Lx593_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx593_51
                                                                                        jmp   .Lx593_52
.Lx593_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx593_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx593_53
.Lx593_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx593_54
.Lx593_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx593_54
.Lx593_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx593_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n518_suspend_α
n516_op11_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n519_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n518_suspend_α:
                        lea              rax, [rip + n518_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_occ$2F5_γ
n518_suspend_β:
                                                                                        jmp   n486_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n519_op11_α:
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
.Lx598_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx598_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx598_41
                        cmp              esi, 1
                                                                                        jne   .Lx598_55
                        mov              r8, rax
                                                                                        jmp   .Lx598_40
.Lx598_55:
                        cmp              esi, 2
                                                                                        jne   .Lx598_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx598_41
                        mov              r8, rax
                                                                                        jmp   .Lx598_40
.Lx598_56:
                        cmp              eax, 13
                                                                                        jne   .Lx598_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx598_41
                        cmp              rax, r8
                                                                                        je    .Lx598_41
                        mov              r8, rax
                                                                                        jmp   .Lx598_40
.Lx598_41:
                        lea              r9, [rbp + 288]
.Lx598_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx598_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx598_43
                        cmp              esi, 1
                                                                                        jne   .Lx598_57
                        mov              r9, rax
                                                                                        jmp   .Lx598_42
.Lx598_57:
                        cmp              esi, 2
                                                                                        jne   .Lx598_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx598_43
                        mov              r9, rax
                                                                                        jmp   .Lx598_42
.Lx598_58:
                        cmp              eax, 13
                                                                                        jne   .Lx598_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx598_43
                        cmp              rax, r9
                                                                                        je    .Lx598_43
                        mov              r9, rax
                                                                                        jmp   .Lx598_42
.Lx598_43:
                        cmp              r8, r9
                                                                                        je    .Lx598_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx598_44
                        cmp              eax, 99
                                                                                        je    .Lx598_44
                        cmp              eax, 13
                                                                                        jne   .Lx598_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx598_44
                                                                                        jmp   .Lx598_45
.Lx598_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx598_53
                        cmp              eax, 99
                                                                                        je    .Lx598_53
                        cmp              eax, 13
                                                                                        jne   .Lx598_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx598_53
                                                                                        jmp   .Lx598_46
.Lx598_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx598_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx598_53
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
                                                                                        jmp   .Lx598_51
.Lx598_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx598_47
                        cmp              eax, 99
                                                                                        je    .Lx598_47
                        cmp              eax, 13
                                                                                        jne   .Lx598_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx598_47
                                                                                        jmp   .Lx598_48
.Lx598_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx598_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx598_53
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
                                                                                        jmp   .Lx598_51
.Lx598_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx598_49
                        cmp              edx, 14
                                                                                        je    .Lx598_53
                                                                                        jmp   .Lx598_52
.Lx598_49:
                        cmp              edx, 14
                                                                                        je    .Lx598_52
                        cmp              ecx, 7
                                                                                        je    .Lx598_53
                        cmp              edx, 7
                                                                                        je    .Lx598_53
                        cmp              ecx, 6
                                                                                        jne   .Lx598_50
                        cmp              edx, 6
                                                                                        jne   .Lx598_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx598_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx598_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx598_51
                                                                                        jmp   .Lx598_52
.Lx598_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx598_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx598_53
.Lx598_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx598_54
.Lx598_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx598_54
.Lx598_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx598_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n520_var_ref_α
n519_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n521_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx603_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        cmp              esi, 1
                                                                                        jne   .Lx603_55
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_55:
                        cmp              esi, 2
                                                                                        jne   .Lx603_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_56:
                        cmp              eax, 13
                                                                                        jne   .Lx603_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        cmp              rax, r8
                                                                                        je    .Lx603_41
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_41:
                        lea              r9, [rbp + 208]
.Lx603_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        cmp              esi, 1
                                                                                        jne   .Lx603_57
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_57:
                        cmp              esi, 2
                                                                                        jne   .Lx603_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_58:
                        cmp              eax, 13
                                                                                        jne   .Lx603_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        cmp              rax, r9
                                                                                        je    .Lx603_43
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_43:
                        cmp              r8, r9
                                                                                        je    .Lx603_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_44
                        cmp              eax, 99
                                                                                        je    .Lx603_44
                        cmp              eax, 13
                                                                                        jne   .Lx603_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx603_44
                                                                                        jmp   .Lx603_45
.Lx603_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_53
                        cmp              eax, 99
                                                                                        je    .Lx603_53
                        cmp              eax, 13
                                                                                        jne   .Lx603_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_53
                                                                                        jmp   .Lx603_46
.Lx603_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx603_53
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
                                                                                        jmp   .Lx603_51
.Lx603_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_47
                        cmp              eax, 99
                                                                                        je    .Lx603_47
                        cmp              eax, 13
                                                                                        jne   .Lx603_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_47
                                                                                        jmp   .Lx603_48
.Lx603_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx603_53
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
                                                                                        jmp   .Lx603_51
.Lx603_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx603_49
                        cmp              edx, 14
                                                                                        je    .Lx603_53
                                                                                        jmp   .Lx603_52
.Lx603_49:
                        cmp              edx, 14
                                                                                        je    .Lx603_52
                        cmp              ecx, 7
                                                                                        je    .Lx603_53
                        cmp              edx, 7
                                                                                        je    .Lx603_53
                        cmp              ecx, 6
                                                                                        jne   .Lx603_50
                        cmp              edx, 6
                                                                                        jne   .Lx603_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx603_51
                                                                                        jmp   .Lx603_52
.Lx603_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx603_53
.Lx603_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx603_54
.Lx603_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx603_54
.Lx603_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx603_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n523_suspend_α
n522_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n523_suspend_α:
                        lea              rax, [rip + n523_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_occ$2F5_γ
n523_suspend_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_occ$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_occ$2F5_β:
                                                                                        jmp   qword ptr [rbp + 1472]
#-----------------------------------------------------------------------------------------------------------------------
proc_occ$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_occ$2F5_res]
                        push             rax
                        mov              rax, [rbp + 1544]
                        mov              rbp, [rbp + 1560]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_occ$2F5_ω:
                        mov              rax, [rbp + 1552]
                        lea              rsp, [rbp + 1568]
                        mov              rbp, [rbp + 1560]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display$2F3_α
proc_display$2F3_α:
                        .global          proc_display$2F3_α
                        .global          proc_display$2F3_β
                        .global          proc_display$2F3_γ
                        .global          proc_display$2F3_ω
                        sub              rsp, 1136
                        mov              [rsp + 1112], rcx
                        mov              [rsp + 1120], rdx
                        mov              [rsp + 1128], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1104
                        call             rt_jmp_frame_lexprep2@PLT
proc_display$2F3_α_body:
                        lea              rax, [rip + n637_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx638_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx638_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx638_101
.Lx638_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx638_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F3_ω
                                                                                        jmp   n607_var_ref_α
n606_op11_β:
                                                                                        jmp   proc_display$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n608_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n609_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 976]
                        lea              r8, [rbp + 976]
.Lx643_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              esi, 1
                                                                                        jne   .Lx643_55
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_55:
                        cmp              esi, 2
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_56:
                        cmp              eax, 13
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              rax, r8
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_41:
                        lea              r9, [rbp + 992]
.Lx643_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              esi, 1
                                                                                        jne   .Lx643_57
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_57:
                        cmp              esi, 2
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_58:
                        cmp              eax, 13
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              rax, r9
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_43:
                        cmp              r8, r9
                                                                                        je    .Lx643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_44
                        cmp              eax, 99
                                                                                        je    .Lx643_44
                        cmp              eax, 13
                                                                                        jne   .Lx643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx643_44
                                                                                        jmp   .Lx643_45
.Lx643_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_53
                        cmp              eax, 99
                                                                                        je    .Lx643_53
                        cmp              eax, 13
                                                                                        jne   .Lx643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_46
.Lx643_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_47
                        cmp              eax, 99
                                                                                        je    .Lx643_47
                        cmp              eax, 13
                                                                                        jne   .Lx643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_47
                                                                                        jmp   .Lx643_48
.Lx643_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx643_49
                        cmp              edx, 14
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_52
.Lx643_49:
                        cmp              edx, 14
                                                                                        je    .Lx643_52
                        cmp              ecx, 7
                                                                                        je    .Lx643_53
                        cmp              edx, 7
                                                                                        je    .Lx643_53
                        cmp              ecx, 6
                                                                                        jne   .Lx643_50
                        cmp              edx, 6
                                                                                        jne   .Lx643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx643_51
                                                                                        jmp   .Lx643_52
.Lx643_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
.Lx643_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx643_54
.Lx643_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx643_54
.Lx643_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx643_54:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n610_var_ref_α
n609_op11_β:
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n612_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F3_ω
                                                                                        jmp   proc_display$2F3_ω
n611_op11_β:
                                                                                        jmp   proc_display$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx649_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx649_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        cmp              esi, 1
                                                                                        jne   .Lx649_55
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_55:
                        cmp              esi, 2
                                                                                        jne   .Lx649_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_56:
                        cmp              eax, 13
                                                                                        jne   .Lx649_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        cmp              rax, r8
                                                                                        je    .Lx649_41
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_41:
                        lea              r9, [rbp + 912]
.Lx649_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx649_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        cmp              esi, 1
                                                                                        jne   .Lx649_57
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_57:
                        cmp              esi, 2
                                                                                        jne   .Lx649_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_58:
                        cmp              eax, 13
                                                                                        jne   .Lx649_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        cmp              rax, r9
                                                                                        je    .Lx649_43
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_43:
                        cmp              r8, r9
                                                                                        je    .Lx649_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_44
                        cmp              eax, 99
                                                                                        je    .Lx649_44
                        cmp              eax, 13
                                                                                        jne   .Lx649_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx649_44
                                                                                        jmp   .Lx649_45
.Lx649_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_53
                        cmp              eax, 99
                                                                                        je    .Lx649_53
                        cmp              eax, 13
                                                                                        jne   .Lx649_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx649_53
                                                                                        jmp   .Lx649_46
.Lx649_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx649_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx649_53
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
                                                                                        jmp   .Lx649_51
.Lx649_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_47
                        cmp              eax, 99
                                                                                        je    .Lx649_47
                        cmp              eax, 13
                                                                                        jne   .Lx649_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx649_47
                                                                                        jmp   .Lx649_48
.Lx649_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx649_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx649_53
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
                                                                                        jmp   .Lx649_51
.Lx649_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx649_49
                        cmp              edx, 14
                                                                                        je    .Lx649_53
                                                                                        jmp   .Lx649_52
.Lx649_49:
                        cmp              edx, 14
                                                                                        je    .Lx649_52
                        cmp              ecx, 7
                                                                                        je    .Lx649_53
                        cmp              edx, 7
                                                                                        je    .Lx649_53
                        cmp              ecx, 6
                                                                                        jne   .Lx649_50
                        cmp              edx, 6
                                                                                        jne   .Lx649_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx649_51
                                                                                        jmp   .Lx649_52
.Lx649_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx649_53
.Lx649_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx649_54
.Lx649_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx649_54
.Lx649_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx649_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n614_var_ref_α
n613_op11_β:
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n615_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n616_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n616_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx654_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx654_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        cmp              esi, 1
                                                                                        jne   .Lx654_55
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_55:
                        cmp              esi, 2
                                                                                        jne   .Lx654_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_56:
                        cmp              eax, 13
                                                                                        jne   .Lx654_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_41
                        cmp              rax, r8
                                                                                        je    .Lx654_41
                        mov              r8, rax
                                                                                        jmp   .Lx654_40
.Lx654_41:
                        lea              r9, [rbp + 832]
.Lx654_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx654_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        cmp              esi, 1
                                                                                        jne   .Lx654_57
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_57:
                        cmp              esi, 2
                                                                                        jne   .Lx654_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_58:
                        cmp              eax, 13
                                                                                        jne   .Lx654_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx654_43
                        cmp              rax, r9
                                                                                        je    .Lx654_43
                        mov              r9, rax
                                                                                        jmp   .Lx654_42
.Lx654_43:
                        cmp              r8, r9
                                                                                        je    .Lx654_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_44
                        cmp              eax, 99
                                                                                        je    .Lx654_44
                        cmp              eax, 13
                                                                                        jne   .Lx654_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx654_44
                                                                                        jmp   .Lx654_45
.Lx654_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_53
                        cmp              eax, 99
                                                                                        je    .Lx654_53
                        cmp              eax, 13
                                                                                        jne   .Lx654_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_53
                                                                                        jmp   .Lx654_46
.Lx654_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx654_53
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
                                                                                        jmp   .Lx654_51
.Lx654_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx654_47
                        cmp              eax, 99
                                                                                        je    .Lx654_47
                        cmp              eax, 13
                                                                                        jne   .Lx654_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx654_47
                                                                                        jmp   .Lx654_48
.Lx654_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx654_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx654_53
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
                                                                                        jmp   .Lx654_51
.Lx654_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx654_49
                        cmp              edx, 14
                                                                                        je    .Lx654_53
                                                                                        jmp   .Lx654_52
.Lx654_49:
                        cmp              edx, 14
                                                                                        je    .Lx654_52
                        cmp              ecx, 7
                                                                                        je    .Lx654_53
                        cmp              edx, 7
                                                                                        je    .Lx654_53
                        cmp              ecx, 6
                                                                                        jne   .Lx654_50
                        cmp              edx, 6
                                                                                        jne   .Lx654_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx654_51
                                                                                        jmp   .Lx654_52
.Lx654_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx654_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx654_53
.Lx654_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx654_54
.Lx654_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx654_54
.Lx654_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx654_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n617_var_ref_α
n616_op11_β:
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n618_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n619_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n620_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n621_lit_string_α
.Lx661_0:
                        .quad            .Lx661_0_s
.Lx661_0_s:
                        .string          "carpenter"
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n622_call_proc_staged_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n622_call_proc_staged_α:
                        mov              qword ptr [rbp + 688], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_20
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx664_21
.Lx664_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx664_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_22
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx664_23
.Lx664_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx664_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_24
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx664_25
.Lx664_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx664_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_26
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx664_27
.Lx664_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx664_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_28
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx664_29
.Lx664_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx664_29:
                        mov              edi, 1
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx664_1
                        lea              rcx, [rip + .Lx664_3]
                        lea              rdx, [rip + .Lx664_4]
                                                                                        jmp   rax
.Lx664_3:
                        mov              qword ptr [rbp + 696], rsp
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax
                                                                                        jne   .Lx664_5
                        mov              qword ptr [rbp + 688], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx664_2
.Lx664_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx664_2
.Lx664_4:
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax
                                                                                        jne   .Lx664_6
                        mov              qword ptr [rbp + 688], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx664_2
.Lx664_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx664_2
.Lx664_1:
                        call             rt_faildescr@PLT
.Lx664_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n623_var_ref_α
n622_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 696]
                                                                                        jmp   qword ptr [rsp]
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n624_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n625_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n626_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n627_lit_string_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "painter"
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n628_call_proc_staged_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "daw"
#-----------------------------------------------------------------------------------------------------------------------
n628_call_proc_staged_α:
                        mov              qword ptr [rbp + 480], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx674_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx674_21
.Lx674_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx674_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx674_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx674_23
.Lx674_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx674_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx674_24
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx674_25
.Lx674_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx674_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx674_26
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx674_27
.Lx674_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx674_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx674_28
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx674_29
.Lx674_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx674_29:
                        mov              edi, 1
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx674_1
                        lea              rcx, [rip + .Lx674_3]
                        lea              rdx, [rip + .Lx674_4]
                                                                                        jmp   rax
.Lx674_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx674_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx674_2
.Lx674_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx674_2
.Lx674_4:
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx674_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx674_2
.Lx674_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx674_2
.Lx674_1:
                        call             rt_faildescr@PLT
.Lx674_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n622_call_proc_staged_β
                                                                                        jmp   n629_var_ref_α
n628_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n630_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n631_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n632_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n633_lit_string_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "plumber"
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n634_call_proc_staged_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          "fuller"
#-----------------------------------------------------------------------------------------------------------------------
n634_call_proc_staged_α:
                        mov              qword ptr [rbp + 272], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx684_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx684_21
.Lx684_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx684_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx684_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx684_23
.Lx684_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx684_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx684_24
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx684_25
.Lx684_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx684_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx684_26
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx684_27
.Lx684_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx684_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx684_28
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx684_29
.Lx684_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx684_29:
                        mov              edi, 1
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx684_1
                        lea              rcx, [rip + .Lx684_3]
                        lea              rdx, [rip + .Lx684_4]
                                                                                        jmp   rax
.Lx684_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx684_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx684_2
.Lx684_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx684_2
.Lx684_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx684_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx684_2
.Lx684_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx684_2
.Lx684_1:
                        call             rt_faildescr@PLT
.Lx684_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n628_call_proc_staged_β
                                                                                        jmp   n635_lit_string_α
n634_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "write_occ/5"
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n636_op11_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn687:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n634_call_proc_staged_β
                                                                                        jmp   n637_suspend_α
n636_op11_β:
                                                                                        jmp   n634_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n637_suspend_α:
                        lea              rax, [rip + n637_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_display$2F3_γ
n637_suspend_β:
                                                                                        jmp   n634_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1040]
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_display$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1112]
                        mov              rbp, [rbp + 1128]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F3_ω:
                        mov              rax, [rbp + 1120]
                        lea              rsp, [rbp + 1136]
                        mov              rbp, [rbp + 1128]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "differ/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_differ$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "write_occ/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_write_occ$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2016
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "occupation/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_occupation$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "occ/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_occ$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1536
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "display/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_display$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1104
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
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
                        sub              rsp, 152
                        mov              rdi, rsp
                        mov              ecx, 152
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 144], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n690_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx695_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx695_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx695_101
.Lx695_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx695_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n691_call_proc_staged_α
n690_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n691_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx697_1
                        lea              rcx, [rip + .Lx697_3]
                        lea              rdx, [rip + .Lx697_4]
                                                                                        jmp   rax
.Lx697_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx697_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx697_2
.Lx697_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx697_2
.Lx697_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx697_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx697_2
.Lx697_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx697_2
.Lx697_1:
                        call             rt_faildescr@PLT
.Lx697_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n693_op11_α
                                                                                        jmp   n692_move_label_α
n691_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n692_move_label_α:
                        lea              rax, [rip + n691_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n693_op11_α:
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
n693_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n694_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n694_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n694_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 144]
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
