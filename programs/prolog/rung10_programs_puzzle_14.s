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
                        .globl           proc_score$2F2_α
proc_score$2F2_α:
                        .global          proc_score$2F2_α
                        .global          proc_score$2F2_β
                        .global          proc_score$2F2_γ
                        .global          proc_score$2F2_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_score$2F2_α_body:
                        lea              rax, [rip + n125_suspend_β]
                        mov              qword ptr [rbp + 912], rax
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx148_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx148_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx148_101
.Lx148_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx148_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_score$2F2_ω
                                                                                        jmp   n116_var_ref_α
n115_op11_β:
                                                                                        jmp   proc_score$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n118_op11_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "mary"
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx152_2]
                                                                                        jmp   .Lx152_3
.Lx152_2:
                        .quad            .Lx152_2_s
.Lx152_2_s:
                        .string          "mary"
.Lx152_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n119_var_ref_α
n118_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_score$2F2_ω
                                                                                        jmp   n122_var_ref_α
n120_op11_β:
                                                                                        jmp   proc_score$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n123_op11_α
.Lx156_0:
                        .quad            106
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        movabs           rsi, 106
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n125_suspend_α
n123_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n126_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "helen"
#-----------------------------------------------------------------------------------------------------------------------
n125_suspend_α:
                        lea              rax, [rip + n125_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_score$2F2_γ
n125_suspend_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx163_2]
                                                                                        jmp   .Lx163_3
.Lx163_2:
                        .quad            .Lx163_2_s
.Lx163_2_s:
                        .string          "helen"
.Lx163_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n128_op11_α
                                                                                        jmp   n127_var_ref_α
n126_op11_β:
                                                                                        jmp   n128_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_score$2F2_ω
                                                                                        jmp   n130_var_ref_α
n128_op11_β:
                                                                                        jmp   proc_score$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n131_op11_α
.Lx167_0:
                        .quad            102
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 102
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n128_op11_α
                                                                                        jmp   n133_suspend_α
n131_op11_β:
                                                                                        jmp   n128_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n134_op11_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "grace"
#-----------------------------------------------------------------------------------------------------------------------
n133_suspend_α:
                        lea              rax, [rip + n133_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_score$2F2_γ
n133_suspend_β:
                                                                                        jmp   n128_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx174_2]
                                                                                        jmp   .Lx174_3
.Lx174_2:
                        .quad            .Lx174_2_s
.Lx174_2_s:
                        .string          "grace"
.Lx174_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n136_op11_α
                                                                                        jmp   n135_var_ref_α
n134_op11_β:
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_score$2F2_ω
                                                                                        jmp   n138_var_ref_α
n136_op11_β:
                                                                                        jmp   proc_score$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n139_op11_α
.Lx178_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 100
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n136_op11_α
                                                                                        jmp   n141_suspend_α
n139_op11_β:
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n142_op11_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "ed"
#-----------------------------------------------------------------------------------------------------------------------
n141_suspend_α:
                        lea              rax, [rip + n141_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_score$2F2_γ
n141_suspend_β:
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx185_2]
                                                                                        jmp   .Lx185_3
.Lx185_2:
                        .quad            .Lx185_2_s
.Lx185_2_s:
                        .string          "ed"
.Lx185_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n143_var_ref_α
n142_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
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
                                                                                        je    proc_score$2F2_ω
                                                                                        jmp   proc_score$2F2_ω
n144_op11_β:
                                                                                        jmp   proc_score$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n146_op11_α
.Lx189_0:
                        .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 94
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n147_suspend_α
n146_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_suspend_α:
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_score$2F2_γ
n147_suspend_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_score$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_score$2F2_β:
                                                                                        jmp   qword ptr [rbp + 912]
#-----------------------------------------------------------------------------------------------------------------------
proc_score$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_score$2F2_res]
                        push             rax
                        mov              rax, [rbp + 936]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_score$2F2_ω:
                        mov              rax, [rbp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 2416
                        mov              [rsp + 2392], rcx
                        mov              [rsp + 2400], rdx
                        mov              [rsp + 2408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2192
                        mov              edx, 2384
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx256_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx256_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx256_101
.Lx256_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx256_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n194_var_ref_α
n193_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n195_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_proc_staged_α:
                        mov              qword ptr [rbp + 2144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_20
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx260_21
.Lx260_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_arg_stage@PLT
.Lx260_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx260_1
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4]
                                                                                        jmp   rax
.Lx260_3:
                        mov              qword ptr [rbp + 2152], rsp
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax
                                                                                        jne   .Lx260_5
                        mov              qword ptr [rbp + 2144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx260_2
.Lx260_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx260_2
.Lx260_4:
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax
                                                                                        jne   .Lx260_6
                        mov              qword ptr [rbp + 2144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx260_2
.Lx260_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx260_2
.Lx260_1:
                        call             rt_faildescr@PLT
.Lx260_2:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n196_var_ref_α
n195_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2152]
                                                                                        jmp   qword ptr [rsp]
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "wife/1"
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
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
n197_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        mov              qword ptr [rbp + 2064], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx265_20
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx265_21
.Lx265_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        call             rt_arg_stage@PLT
.Lx265_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx265_1
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4]
                                                                                        jmp   rax
.Lx265_3:
                        mov              qword ptr [rbp + 2072], rsp
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx265_5
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_4:
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx265_6
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_1:
                        call             rt_faildescr@PLT
.Lx265_2:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n195_call_proc_staged_β
                                                                                        jmp   n199_var_ref_α
n198_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2072]
                                                                                        jmp   qword ptr [rsp]
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "wife/1"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n200_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx269_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx269_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx269_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n198_call_proc_staged_β
                                                                                        jmp   n201_var_ref_α
n200_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "wife/1"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n203_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n204_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        mov              qword ptr [rbp + 1872], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_20
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx277_21
.Lx277_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx277_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_22
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx277_23
.Lx277_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        call             rt_arg_stage@PLT
.Lx277_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_24
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx277_25
.Lx277_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx277_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 1880], rsp
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 1872], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n200_call_proc_staged_β
                                                                                        jmp   n205_var_ref_α
n204_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1880]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "differ/3"
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n207_lit_integer_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n208_lit_string_α
.Lx281_0:
                        .quad            96
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n209_lit_integer_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n210_lit_string_α
.Lx283_0:
                        .quad            98
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n211_op11_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n211_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n212_op11_α
n211_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n213_call_proc_staged_α
n212_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              qword ptr [rbp + 1520], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_20
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx288_21
.Lx288_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        call             rt_arg_stage@PLT
.Lx288_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_22
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx288_23
.Lx288_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_arg_stage@PLT
.Lx288_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx288_1
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4]
                                                                                        jmp   rax
.Lx288_3:
                        mov              qword ptr [rbp + 1528], rsp
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx288_5
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_4:
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx288_6
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_1:
                        call             rt_faildescr@PLT
.Lx288_2:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n204_call_proc_staged_β
                                                                                        jmp   n214_var_ref_α
n213_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1528]
                                                                                        jmp   qword ptr [rsp]
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n215_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n216_var_α
.Lx291_0:
                        .quad            194
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n217_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n217_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n218_op11_α
n217_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_proc_staged_β
                                                                                        jmp   n219_var_ref_α
n218_op11_β:
                                                                                        jmp   n213_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n220_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n221_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              qword ptr [rbp + 1248], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_20
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx301_21
.Lx301_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx301_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_22
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx301_23
.Lx301_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_arg_stage@PLT
.Lx301_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx301_1
                        lea              rcx, [rip + .Lx301_3]
                        lea              rdx, [rip + .Lx301_4]
                                                                                        jmp   rax
.Lx301_3:
                        mov              qword ptr [rbp + 1256], rsp
                        mov              rax, qword ptr [rbp + 1248]
                        test             rax, rax
                                                                                        jne   .Lx301_5
                        mov              qword ptr [rbp + 1248], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_4:
                        mov              rax, qword ptr [rbp + 1248]
                        test             rax, rax
                                                                                        jne   .Lx301_6
                        mov              qword ptr [rbp + 1248], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_1:
                        call             rt_faildescr@PLT
.Lx301_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_proc_staged_β
                                                                                        jmp   n222_var_ref_α
n221_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1256]
                                                                                        jmp   qword ptr [rsp]
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "score/2"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n223_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n224_var_α
.Lx304_0:
                        .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n225_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n225_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n226_op11_α
n225_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n226_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_proc_staged_β
                                                                                        jmp   n227_var_ref_α
n226_op11_β:
                                                                                        jmp   n221_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n229_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        mov              qword ptr [rbp + 976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_20
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx314_21
.Lx314_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx314_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_22
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx314_23
.Lx314_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx314_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx314_1
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4]
                                                                                        jmp   rax
.Lx314_3:
                        mov              qword ptr [rbp + 984], rsp
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx314_5
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_4:
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx314_6
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_1:
                        call             rt_faildescr@PLT
.Lx314_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_proc_staged_β
                                                                                        jmp   n230_var_ref_α
n229_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 984]
                                                                                        jmp   qword ptr [rsp]
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "score/2"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n234_op11_α
n233_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n234_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_proc_staged_β
                                                                                        jmp   n235_var_ref_α
n234_op11_β:
                                                                                        jmp   n229_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              qword ptr [rbp + 704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx328_21
.Lx328_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx328_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx328_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx328_23
.Lx328_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx328_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx328_1
                        lea              rcx, [rip + .Lx328_3]
                        lea              rdx, [rip + .Lx328_4]
                                                                                        jmp   rax
.Lx328_3:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx328_5
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_4:
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx328_6
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_1:
                        call             rt_faildescr@PLT
.Lx328_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_proc_staged_β
                                                                                        jmp   n238_var_ref_α
n237_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   qword ptr [rsp]
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "score/2"
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n239_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n241_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n242_op11_α
n241_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n242_op11_α:
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
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n243_var_ref_α
n242_op11_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n245_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n246_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx344_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx344_21
.Lx344_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx344_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx344_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx344_23
.Lx344_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx344_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx344_24
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx344_25
.Lx344_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx344_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx344_1
                        lea              rcx, [rip + .Lx344_3]
                        lea              rdx, [rip + .Lx344_4]
                                                                                        jmp   rax
.Lx344_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx344_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx344_2
.Lx344_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx344_2
.Lx344_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx344_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx344_2
.Lx344_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx344_2
.Lx344_1:
                        call             rt_faildescr@PLT
.Lx344_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n247_var_α
n246_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "same_total/3"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n246_call_proc_staged_β
                                                                                        jmp   n250_var_ref_α
n249_op11_β:
                                                                                        jmp   n246_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n255_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx361_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx361_21
.Lx361_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx361_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx361_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx361_23
.Lx361_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx361_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx361_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx361_25
.Lx361_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx361_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx361_26
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx361_27
.Lx361_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx361_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx361_28
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx361_29
.Lx361_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx361_29:
                        mov              edi, 7
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx361_1
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4]
                                                                                        jmp   rax
.Lx361_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx361_2
.Lx361_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx361_2
.Lx361_1:
                        call             rt_faildescr@PLT
.Lx361_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n246_call_proc_staged_β
                                                                                        jmp   n255_call_proc_staged_β
n255_call_proc_staged_β:
                                                                                        jmp   n246_call_proc_staged_β
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "display/5"
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
                        mov              rax, [rbp + 2392]
                        mov              rbp, [rbp + 2408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 2400]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, [rbp + 2408]
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
                        lea              rax, [rip + n364_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx368_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx368_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx368_101
.Lx368_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx368_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n363_call_proc_staged_α
n362_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx370_1
                        lea              rcx, [rip + .Lx370_3]
                        lea              rdx, [rip + .Lx370_4]
                                                                                        jmp   rax
.Lx370_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx370_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx370_2
.Lx370_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx370_2
.Lx370_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx370_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx370_2
.Lx370_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx370_2
.Lx370_1:
                        call             rt_faildescr@PLT
.Lx370_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n364_suspend_α
n363_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n364_suspend_α:
                        lea              rax, [rip + n364_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n364_suspend_β:
                                                                                        jmp   n363_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
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
                                                                                        jmp   n366_suspend_α
n365_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_suspend_α:
                        lea              rax, [rip + n366_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n366_suspend_β:
                                                                                        jmp   n367_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_op11_α:
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
n367_op11_β:
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
                        lea              rax, [rip + n389_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx399_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx399_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx399_101
.Lx399_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx399_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n378_var_ref_α
n377_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n379_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n380_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
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
.Lx404_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx404_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        cmp              esi, 1
                                                                                        jne   .Lx404_55
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_55:
                        cmp              esi, 2
                                                                                        jne   .Lx404_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_56:
                        cmp              eax, 13
                                                                                        jne   .Lx404_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_41
                        cmp              rax, r8
                                                                                        je    .Lx404_41
                        mov              r8, rax
                                                                                        jmp   .Lx404_40
.Lx404_41:
                        lea              r9, [rbp + 608]
.Lx404_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx404_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        cmp              esi, 1
                                                                                        jne   .Lx404_57
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_57:
                        cmp              esi, 2
                                                                                        jne   .Lx404_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_58:
                        cmp              eax, 13
                                                                                        jne   .Lx404_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx404_43
                        cmp              rax, r9
                                                                                        je    .Lx404_43
                        mov              r9, rax
                                                                                        jmp   .Lx404_42
.Lx404_43:
                        cmp              r8, r9
                                                                                        je    .Lx404_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_44
                        cmp              eax, 99
                                                                                        je    .Lx404_44
                        cmp              eax, 13
                                                                                        jne   .Lx404_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx404_44
                                                                                        jmp   .Lx404_45
.Lx404_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_53
                        cmp              eax, 99
                                                                                        je    .Lx404_53
                        cmp              eax, 13
                                                                                        jne   .Lx404_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx404_53
                                                                                        jmp   .Lx404_46
.Lx404_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx404_53
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
                                                                                        jmp   .Lx404_51
.Lx404_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx404_47
                        cmp              eax, 99
                                                                                        je    .Lx404_47
                        cmp              eax, 13
                                                                                        jne   .Lx404_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx404_47
                                                                                        jmp   .Lx404_48
.Lx404_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx404_53
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
                                                                                        jmp   .Lx404_51
.Lx404_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx404_49
                        cmp              edx, 14
                                                                                        je    .Lx404_53
                                                                                        jmp   .Lx404_52
.Lx404_49:
                        cmp              edx, 14
                                                                                        je    .Lx404_52
                        cmp              ecx, 7
                                                                                        je    .Lx404_53
                        cmp              edx, 7
                                                                                        je    .Lx404_53
                        cmp              ecx, 6
                                                                                        jne   .Lx404_50
                        cmp              edx, 6
                                                                                        jne   .Lx404_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx404_51
                                                                                        jmp   .Lx404_52
.Lx404_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx404_53
.Lx404_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx404_54
.Lx404_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx404_54
.Lx404_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx404_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n381_var_ref_α
n380_op11_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
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
                                                                                        jmp   n384_var_ref_α
n382_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n388_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
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
.Lx416_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx416_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_61
                        cmp              esi, 1
                                                                                        jne   .Lx416_62
                        mov              r8, rax
                                                                                        jmp   .Lx416_60
.Lx416_62:
                        cmp              esi, 2
                                                                                        jne   .Lx416_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_61
                        mov              r8, rax
                                                                                        jmp   .Lx416_60
.Lx416_63:
                        cmp              eax, 13
                                                                                        jne   .Lx416_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_61
                        cmp              rax, r8
                                                                                        je    .Lx416_61
                        mov              r8, rax
                                                                                        jmp   .Lx416_60
.Lx416_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_80
                        cmp              eax, 99
                                                                                        je    .Lx416_80
                        cmp              eax, 13
                                                                                        jne   .Lx416_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx416_80
                                                                                        jmp   .Lx416_74
.Lx416_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx416_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx416_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx416_73
                        lea              r9, [rbp + 512]
.Lx416_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx416_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_65
                        cmp              esi, 1
                                                                                        jne   .Lx416_66
                        mov              r9, rax
                                                                                        jmp   .Lx416_64
.Lx416_66:
                        cmp              esi, 2
                                                                                        jne   .Lx416_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_65
                        mov              r9, rax
                                                                                        jmp   .Lx416_64
.Lx416_67:
                        cmp              eax, 13
                                                                                        jne   .Lx416_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_65
                        cmp              rax, r9
                                                                                        je    .Lx416_65
                        mov              r9, rax
                                                                                        jmp   .Lx416_64
.Lx416_65:
                        lea              rcx, [rbp + 528]
.Lx416_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx416_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx416_69
                        cmp              esi, 1
                                                                                        jne   .Lx416_70
                        mov              rcx, rax
                                                                                        jmp   .Lx416_68
.Lx416_70:
                        cmp              esi, 2
                                                                                        jne   .Lx416_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_69
                        mov              rcx, rax
                                                                                        jmp   .Lx416_68
.Lx416_71:
                        cmp              eax, 13
                                                                                        jne   .Lx416_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx416_69
                        cmp              rax, rcx
                                                                                        je    .Lx416_69
                        mov              rcx, rax
                                                                                        jmp   .Lx416_68
.Lx416_69:
                        cmp              r9, rcx
                                                                                        je    .Lx416_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_75
                        cmp              eax, 99
                                                                                        je    .Lx416_75
                        cmp              eax, 13
                                                                                        jne   .Lx416_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_75
                                                                                        jmp   .Lx416_72
.Lx416_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_76
                        cmp              eax, 99
                                                                                        je    .Lx416_76
                        cmp              eax, 13
                                                                                        jne   .Lx416_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx416_76
                                                                                        jmp   .Lx416_72
.Lx416_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx416_72
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
                                                                                        jmp   .Lx416_77
.Lx416_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx416_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx416_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx416_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx416_72
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
.Lx416_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx416_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_82
                        cmp              esi, 1
                                                                                        jne   .Lx416_83
                        mov              r9, rax
                                                                                        jmp   .Lx416_81
.Lx416_83:
                        cmp              esi, 2
                                                                                        jne   .Lx416_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_82
                        mov              r9, rax
                                                                                        jmp   .Lx416_81
.Lx416_84:
                        cmp              eax, 13
                                                                                        jne   .Lx416_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_82
                        cmp              rax, r9
                                                                                        je    .Lx416_82
                        mov              r9, rax
                                                                                        jmp   .Lx416_81
.Lx416_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_85
                        cmp              eax, 99
                                                                                        je    .Lx416_85
                        cmp              eax, 13
                                                                                        jne   .Lx416_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_85
                                                                                        jmp   .Lx416_86
.Lx416_85:
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
                                                                                        jmp   .Lx416_87
.Lx416_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx416_87:
                        lea              rcx, [rbp + 528]
.Lx416_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx416_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx416_89
                        cmp              esi, 1
                                                                                        jne   .Lx416_90
                        mov              rcx, rax
                                                                                        jmp   .Lx416_88
.Lx416_90:
                        cmp              esi, 2
                                                                                        jne   .Lx416_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_89
                        mov              rcx, rax
                                                                                        jmp   .Lx416_88
.Lx416_91:
                        cmp              eax, 13
                                                                                        jne   .Lx416_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx416_89
                        cmp              rax, rcx
                                                                                        je    .Lx416_89
                        mov              rcx, rax
                                                                                        jmp   .Lx416_88
.Lx416_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_92
                        cmp              eax, 99
                                                                                        je    .Lx416_92
                        cmp              eax, 13
                                                                                        jne   .Lx416_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx416_92
                                                                                        jmp   .Lx416_93
.Lx416_92:
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
                                                                                        jmp   .Lx416_94
.Lx416_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx416_94:
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
                                                                                        jmp   .Lx416_77
.Lx416_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx416_77
.Lx416_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx416_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n389_suspend_α
n387_op11_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n388_op11_α:
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
.Lx417_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              esi, 1
                                                                                        jne   .Lx417_55
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_55:
                        cmp              esi, 2
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_56:
                        cmp              eax, 13
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              rax, r8
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_41:
                        lea              r9, [rbp + 368]
.Lx417_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              esi, 1
                                                                                        jne   .Lx417_57
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_57:
                        cmp              esi, 2
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_58:
                        cmp              eax, 13
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              rax, r9
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_43:
                        cmp              r8, r9
                                                                                        je    .Lx417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_44
                        cmp              eax, 99
                                                                                        je    .Lx417_44
                        cmp              eax, 13
                                                                                        jne   .Lx417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx417_44
                                                                                        jmp   .Lx417_45
.Lx417_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_53
                        cmp              eax, 99
                                                                                        je    .Lx417_53
                        cmp              eax, 13
                                                                                        jne   .Lx417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_46
.Lx417_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_47
                        cmp              eax, 99
                                                                                        je    .Lx417_47
                        cmp              eax, 13
                                                                                        jne   .Lx417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_47
                                                                                        jmp   .Lx417_48
.Lx417_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx417_49
                        cmp              edx, 14
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_52
.Lx417_49:
                        cmp              edx, 14
                                                                                        je    .Lx417_52
                        cmp              ecx, 7
                                                                                        je    .Lx417_53
                        cmp              edx, 7
                                                                                        je    .Lx417_53
                        cmp              ecx, 6
                                                                                        jne   .Lx417_50
                        cmp              edx, 6
                                                                                        jne   .Lx417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx417_51
                                                                                        jmp   .Lx417_52
.Lx417_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
.Lx417_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx417_54
.Lx417_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx417_54
.Lx417_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx417_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n390_var_ref_α
n388_op11_β:
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n389_suspend_α:
                        lea              rax, [rip + n389_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n389_suspend_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n392_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
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
n391_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n393_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n394_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n394_op11_α:
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
.Lx427_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        cmp              esi, 1
                                                                                        jne   .Lx427_62
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_62:
                        cmp              esi, 2
                                                                                        jne   .Lx427_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_63:
                        cmp              eax, 13
                                                                                        jne   .Lx427_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_61
                        cmp              rax, r8
                                                                                        je    .Lx427_61
                        mov              r8, rax
                                                                                        jmp   .Lx427_60
.Lx427_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_80
                        cmp              eax, 99
                                                                                        je    .Lx427_80
                        cmp              eax, 13
                                                                                        jne   .Lx427_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx427_80
                                                                                        jmp   .Lx427_74
.Lx427_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx427_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx427_73
                        lea              r9, [rbp + 272]
.Lx427_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        cmp              esi, 1
                                                                                        jne   .Lx427_66
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_66:
                        cmp              esi, 2
                                                                                        jne   .Lx427_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_67:
                        cmp              eax, 13
                                                                                        jne   .Lx427_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_65
                        cmp              rax, r9
                                                                                        je    .Lx427_65
                        mov              r9, rax
                                                                                        jmp   .Lx427_64
.Lx427_65:
                        lea              rcx, [rbp + 288]
.Lx427_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        cmp              esi, 1
                                                                                        jne   .Lx427_70
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_70:
                        cmp              esi, 2
                                                                                        jne   .Lx427_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_71:
                        cmp              eax, 13
                                                                                        jne   .Lx427_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_69
                        cmp              rax, rcx
                                                                                        je    .Lx427_69
                        mov              rcx, rax
                                                                                        jmp   .Lx427_68
.Lx427_69:
                        cmp              r9, rcx
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_75
                        cmp              eax, 99
                                                                                        je    .Lx427_75
                        cmp              eax, 13
                                                                                        jne   .Lx427_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_75
                                                                                        jmp   .Lx427_72
.Lx427_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_76
                        cmp              eax, 99
                                                                                        je    .Lx427_76
                        cmp              eax, 13
                                                                                        jne   .Lx427_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx427_76
                                                                                        jmp   .Lx427_72
.Lx427_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx427_72
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
                                                                                        jmp   .Lx427_77
.Lx427_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx427_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx427_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx427_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx427_72
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
.Lx427_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        cmp              esi, 1
                                                                                        jne   .Lx427_83
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_83:
                        cmp              esi, 2
                                                                                        jne   .Lx427_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_84:
                        cmp              eax, 13
                                                                                        jne   .Lx427_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx427_82
                        cmp              rax, r9
                                                                                        je    .Lx427_82
                        mov              r9, rax
                                                                                        jmp   .Lx427_81
.Lx427_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_85
                        cmp              eax, 99
                                                                                        je    .Lx427_85
                        cmp              eax, 13
                                                                                        jne   .Lx427_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx427_85
                                                                                        jmp   .Lx427_86
.Lx427_85:
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
                                                                                        jmp   .Lx427_87
.Lx427_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx427_87:
                        lea              rcx, [rbp + 288]
.Lx427_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx427_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        cmp              esi, 1
                                                                                        jne   .Lx427_90
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_90:
                        cmp              esi, 2
                                                                                        jne   .Lx427_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_91:
                        cmp              eax, 13
                                                                                        jne   .Lx427_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx427_89
                        cmp              rax, rcx
                                                                                        je    .Lx427_89
                        mov              rcx, rax
                                                                                        jmp   .Lx427_88
.Lx427_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx427_92
                        cmp              eax, 99
                                                                                        je    .Lx427_92
                        cmp              eax, 13
                                                                                        jne   .Lx427_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx427_92
                                                                                        jmp   .Lx427_93
.Lx427_92:
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
                                                                                        jmp   .Lx427_94
.Lx427_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx427_94:
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
                                                                                        jmp   .Lx427_77
.Lx427_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx427_77
.Lx427_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx427_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n395_var_ref_α
n394_op11_β:
                                                                                        jmp   n391_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n396_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n397_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n397_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx433_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx433_21
.Lx433_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx433_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx433_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx433_23
.Lx433_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx433_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx433_1
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4]
                                                                                        jmp   rax
.Lx433_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx433_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx433_2
.Lx433_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx433_2
.Lx433_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx433_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx433_2
.Lx433_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx433_2
.Lx433_1:
                        call             rt_faildescr@PLT
.Lx433_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n398_suspend_α
n397_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n398_suspend_α:
                        lea              rax, [rip + n398_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n398_suspend_β:
                                                                                        jmp   n397_call_proc_staged_β
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
                        .globl           proc_same_total$2F3_α
proc_same_total$2F3_α:
                        .global          proc_same_total$2F3_α
                        .global          proc_same_total$2F3_β
                        .global          proc_same_total$2F3_γ
                        .global          proc_same_total$2F3_ω
                        sub              rsp, 1056
                        mov              [rsp + 1032], rcx
                        mov              [rsp + 1040], rdx
                        mov              [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
proc_same_total$2F3_α_body:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rbp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n436_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx470_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx470_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx470_101
.Lx470_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx470_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_same_total$2F3_ω
                                                                                        jmp   n437_var_ref_α
n436_op11_β:
                                                                                        jmp   proc_same_total$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n439_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n439_op11_α:
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
.Lx475_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx475_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        cmp              esi, 1
                                                                                        jne   .Lx475_55
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_55:
                        cmp              esi, 2
                                                                                        jne   .Lx475_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_56:
                        cmp              eax, 13
                                                                                        jne   .Lx475_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_41
                        cmp              rax, r8
                                                                                        je    .Lx475_41
                        mov              r8, rax
                                                                                        jmp   .Lx475_40
.Lx475_41:
                        lea              r9, [rbp + 912]
.Lx475_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx475_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        cmp              esi, 1
                                                                                        jne   .Lx475_57
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_57:
                        cmp              esi, 2
                                                                                        jne   .Lx475_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_58:
                        cmp              eax, 13
                                                                                        jne   .Lx475_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx475_43
                        cmp              rax, r9
                                                                                        je    .Lx475_43
                        mov              r9, rax
                                                                                        jmp   .Lx475_42
.Lx475_43:
                        cmp              r8, r9
                                                                                        je    .Lx475_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_44
                        cmp              eax, 99
                                                                                        je    .Lx475_44
                        cmp              eax, 13
                                                                                        jne   .Lx475_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx475_44
                                                                                        jmp   .Lx475_45
.Lx475_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_53
                        cmp              eax, 99
                                                                                        je    .Lx475_53
                        cmp              eax, 13
                                                                                        jne   .Lx475_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx475_53
                                                                                        jmp   .Lx475_46
.Lx475_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx475_53
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
                                                                                        jmp   .Lx475_51
.Lx475_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx475_47
                        cmp              eax, 99
                                                                                        je    .Lx475_47
                        cmp              eax, 13
                                                                                        jne   .Lx475_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx475_47
                                                                                        jmp   .Lx475_48
.Lx475_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx475_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx475_53
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
                                                                                        jmp   .Lx475_51
.Lx475_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx475_49
                        cmp              edx, 14
                                                                                        je    .Lx475_53
                                                                                        jmp   .Lx475_52
.Lx475_49:
                        cmp              edx, 14
                                                                                        je    .Lx475_52
                        cmp              ecx, 7
                                                                                        je    .Lx475_53
                        cmp              edx, 7
                                                                                        je    .Lx475_53
                        cmp              ecx, 6
                                                                                        jne   .Lx475_50
                        cmp              edx, 6
                                                                                        jne   .Lx475_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx475_51
                                                                                        jmp   .Lx475_52
.Lx475_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx475_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx475_53
.Lx475_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx475_54
.Lx475_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx475_54
.Lx475_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx475_54:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n440_var_ref_α
n439_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n442_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
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
                                                                                        je    proc_same_total$2F3_ω
                                                                                        jmp   n443_var_ref_α
n441_op11_β:
                                                                                        jmp   proc_same_total$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n444_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n444_op11_α:
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
.Lx483_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx483_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        cmp              esi, 1
                                                                                        jne   .Lx483_55
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_55:
                        cmp              esi, 2
                                                                                        jne   .Lx483_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_56:
                        cmp              eax, 13
                                                                                        jne   .Lx483_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        cmp              rax, r8
                                                                                        je    .Lx483_41
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_41:
                        lea              r9, [rbp + 832]
.Lx483_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx483_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        cmp              esi, 1
                                                                                        jne   .Lx483_57
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_57:
                        cmp              esi, 2
                                                                                        jne   .Lx483_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_58:
                        cmp              eax, 13
                                                                                        jne   .Lx483_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        cmp              rax, r9
                                                                                        je    .Lx483_43
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_43:
                        cmp              r8, r9
                                                                                        je    .Lx483_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_44
                        cmp              eax, 99
                                                                                        je    .Lx483_44
                        cmp              eax, 13
                                                                                        jne   .Lx483_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx483_44
                                                                                        jmp   .Lx483_45
.Lx483_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_53
                        cmp              eax, 99
                                                                                        je    .Lx483_53
                        cmp              eax, 13
                                                                                        jne   .Lx483_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx483_53
                                                                                        jmp   .Lx483_46
.Lx483_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx483_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx483_53
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
                                                                                        jmp   .Lx483_51
.Lx483_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_47
                        cmp              eax, 99
                                                                                        je    .Lx483_47
                        cmp              eax, 13
                                                                                        jne   .Lx483_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx483_47
                                                                                        jmp   .Lx483_48
.Lx483_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx483_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx483_53
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
                                                                                        jmp   .Lx483_51
.Lx483_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx483_49
                        cmp              edx, 14
                                                                                        je    .Lx483_53
                                                                                        jmp   .Lx483_52
.Lx483_49:
                        cmp              edx, 14
                                                                                        je    .Lx483_52
                        cmp              ecx, 7
                                                                                        je    .Lx483_53
                        cmp              edx, 7
                                                                                        je    .Lx483_53
                        cmp              ecx, 6
                                                                                        jne   .Lx483_50
                        cmp              edx, 6
                                                                                        jne   .Lx483_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx483_51
                                                                                        jmp   .Lx483_52
.Lx483_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx483_53
.Lx483_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx483_54
.Lx483_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx483_54
.Lx483_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx483_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n446_var_ref_α
n444_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
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
.Lx488_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              esi, 1
                                                                                        jne   .Lx488_55
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_55:
                        cmp              esi, 2
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_56:
                        cmp              eax, 13
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              rax, r8
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_41:
                        lea              r9, [rbp + 624]
.Lx488_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              esi, 1
                                                                                        jne   .Lx488_57
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_57:
                        cmp              esi, 2
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_58:
                        cmp              eax, 13
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              rax, r9
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_43:
                        cmp              r8, r9
                                                                                        je    .Lx488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_44
                        cmp              eax, 99
                                                                                        je    .Lx488_44
                        cmp              eax, 13
                                                                                        jne   .Lx488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx488_44
                                                                                        jmp   .Lx488_45
.Lx488_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_53
                        cmp              eax, 99
                                                                                        je    .Lx488_53
                        cmp              eax, 13
                                                                                        jne   .Lx488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_46
.Lx488_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_47
                        cmp              eax, 99
                                                                                        je    .Lx488_47
                        cmp              eax, 13
                                                                                        jne   .Lx488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_47
                                                                                        jmp   .Lx488_48
.Lx488_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx488_49
                        cmp              edx, 14
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_52
.Lx488_49:
                        cmp              edx, 14
                                                                                        je    .Lx488_52
                        cmp              ecx, 7
                                                                                        je    .Lx488_53
                        cmp              edx, 7
                                                                                        je    .Lx488_53
                        cmp              ecx, 6
                                                                                        jne   .Lx488_50
                        cmp              edx, 6
                                                                                        jne   .Lx488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx488_51
                                                                                        jmp   .Lx488_52
.Lx488_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
.Lx488_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx488_54
.Lx488_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx488_54
.Lx488_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx488_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n450_op11_α
                                                                                        jmp   n449_var_ref_α
n447_op11_β:
                                                                                        jmp   n450_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n451_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n452_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
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
                                                                                        je    proc_same_total$2F3_ω
                                                                                        jmp   n453_var_ref_α
n450_op11_β:
                                                                                        jmp   proc_same_total$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
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
.Lx494_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx494_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx494_41
                        cmp              esi, 1
                                                                                        jne   .Lx494_55
                        mov              r8, rax
                                                                                        jmp   .Lx494_40
.Lx494_55:
                        cmp              esi, 2
                                                                                        jne   .Lx494_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx494_41
                        mov              r8, rax
                                                                                        jmp   .Lx494_40
.Lx494_56:
                        cmp              eax, 13
                                                                                        jne   .Lx494_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx494_41
                        cmp              rax, r8
                                                                                        je    .Lx494_41
                        mov              r8, rax
                                                                                        jmp   .Lx494_40
.Lx494_41:
                        lea              r9, [rbp + 752]
.Lx494_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx494_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx494_43
                        cmp              esi, 1
                                                                                        jne   .Lx494_57
                        mov              r9, rax
                                                                                        jmp   .Lx494_42
.Lx494_57:
                        cmp              esi, 2
                                                                                        jne   .Lx494_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx494_43
                        mov              r9, rax
                                                                                        jmp   .Lx494_42
.Lx494_58:
                        cmp              eax, 13
                                                                                        jne   .Lx494_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx494_43
                        cmp              rax, r9
                                                                                        je    .Lx494_43
                        mov              r9, rax
                                                                                        jmp   .Lx494_42
.Lx494_43:
                        cmp              r8, r9
                                                                                        je    .Lx494_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx494_44
                        cmp              eax, 99
                                                                                        je    .Lx494_44
                        cmp              eax, 13
                                                                                        jne   .Lx494_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx494_44
                                                                                        jmp   .Lx494_45
.Lx494_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx494_53
                        cmp              eax, 99
                                                                                        je    .Lx494_53
                        cmp              eax, 13
                                                                                        jne   .Lx494_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx494_53
                                                                                        jmp   .Lx494_46
.Lx494_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx494_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx494_53
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
                                                                                        jmp   .Lx494_51
.Lx494_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx494_47
                        cmp              eax, 99
                                                                                        je    .Lx494_47
                        cmp              eax, 13
                                                                                        jne   .Lx494_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx494_47
                                                                                        jmp   .Lx494_48
.Lx494_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx494_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx494_53
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
                                                                                        jmp   .Lx494_51
.Lx494_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx494_49
                        cmp              edx, 14
                                                                                        je    .Lx494_53
                                                                                        jmp   .Lx494_52
.Lx494_49:
                        cmp              edx, 14
                                                                                        je    .Lx494_52
                        cmp              ecx, 7
                                                                                        je    .Lx494_53
                        cmp              edx, 7
                                                                                        je    .Lx494_53
                        cmp              ecx, 6
                                                                                        jne   .Lx494_50
                        cmp              edx, 6
                                                                                        jne   .Lx494_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx494_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx494_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx494_51
                                                                                        jmp   .Lx494_52
.Lx494_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx494_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx494_53
.Lx494_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx494_54
.Lx494_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx494_54
.Lx494_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx494_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n441_op11_α
                                                                                        jmp   n454_suspend_α
n451_op11_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n455_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_suspend_α:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_same_total$2F3_γ
n454_suspend_β:
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n455_op11_α:
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
.Lx501_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx501_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx501_41
                        cmp              esi, 1
                                                                                        jne   .Lx501_55
                        mov              r8, rax
                                                                                        jmp   .Lx501_40
.Lx501_55:
                        cmp              esi, 2
                                                                                        jne   .Lx501_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx501_41
                        mov              r8, rax
                                                                                        jmp   .Lx501_40
.Lx501_56:
                        cmp              eax, 13
                                                                                        jne   .Lx501_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx501_41
                        cmp              rax, r8
                                                                                        je    .Lx501_41
                        mov              r8, rax
                                                                                        jmp   .Lx501_40
.Lx501_41:
                        lea              r9, [rbp + 544]
.Lx501_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx501_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx501_43
                        cmp              esi, 1
                                                                                        jne   .Lx501_57
                        mov              r9, rax
                                                                                        jmp   .Lx501_42
.Lx501_57:
                        cmp              esi, 2
                                                                                        jne   .Lx501_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx501_43
                        mov              r9, rax
                                                                                        jmp   .Lx501_42
.Lx501_58:
                        cmp              eax, 13
                                                                                        jne   .Lx501_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx501_43
                        cmp              rax, r9
                                                                                        je    .Lx501_43
                        mov              r9, rax
                                                                                        jmp   .Lx501_42
.Lx501_43:
                        cmp              r8, r9
                                                                                        je    .Lx501_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx501_44
                        cmp              eax, 99
                                                                                        je    .Lx501_44
                        cmp              eax, 13
                                                                                        jne   .Lx501_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx501_44
                                                                                        jmp   .Lx501_45
.Lx501_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx501_53
                        cmp              eax, 99
                                                                                        je    .Lx501_53
                        cmp              eax, 13
                                                                                        jne   .Lx501_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx501_53
                                                                                        jmp   .Lx501_46
.Lx501_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx501_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx501_53
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
                                                                                        jmp   .Lx501_51
.Lx501_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx501_47
                        cmp              eax, 99
                                                                                        je    .Lx501_47
                        cmp              eax, 13
                                                                                        jne   .Lx501_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx501_47
                                                                                        jmp   .Lx501_48
.Lx501_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx501_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx501_53
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
                                                                                        jmp   .Lx501_51
.Lx501_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx501_49
                        cmp              edx, 14
                                                                                        je    .Lx501_53
                                                                                        jmp   .Lx501_52
.Lx501_49:
                        cmp              edx, 14
                                                                                        je    .Lx501_52
                        cmp              ecx, 7
                                                                                        je    .Lx501_53
                        cmp              edx, 7
                                                                                        je    .Lx501_53
                        cmp              ecx, 6
                                                                                        jne   .Lx501_50
                        cmp              edx, 6
                                                                                        jne   .Lx501_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx501_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx501_51
                                                                                        jmp   .Lx501_52
.Lx501_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx501_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx501_53
.Lx501_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx501_54
.Lx501_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx501_54
.Lx501_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx501_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n450_op11_α
                                                                                        jmp   n457_var_ref_α
n455_op11_β:
                                                                                        jmp   n450_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n458_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n459_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
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
.Lx506_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx506_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx506_41
                        cmp              esi, 1
                                                                                        jne   .Lx506_55
                        mov              r8, rax
                                                                                        jmp   .Lx506_40
.Lx506_55:
                        cmp              esi, 2
                                                                                        jne   .Lx506_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx506_41
                        mov              r8, rax
                                                                                        jmp   .Lx506_40
.Lx506_56:
                        cmp              eax, 13
                                                                                        jne   .Lx506_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx506_41
                        cmp              rax, r8
                                                                                        je    .Lx506_41
                        mov              r8, rax
                                                                                        jmp   .Lx506_40
.Lx506_41:
                        lea              r9, [rbp + 336]
.Lx506_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx506_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx506_43
                        cmp              esi, 1
                                                                                        jne   .Lx506_57
                        mov              r9, rax
                                                                                        jmp   .Lx506_42
.Lx506_57:
                        cmp              esi, 2
                                                                                        jne   .Lx506_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx506_43
                        mov              r9, rax
                                                                                        jmp   .Lx506_42
.Lx506_58:
                        cmp              eax, 13
                                                                                        jne   .Lx506_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx506_43
                        cmp              rax, r9
                                                                                        je    .Lx506_43
                        mov              r9, rax
                                                                                        jmp   .Lx506_42
.Lx506_43:
                        cmp              r8, r9
                                                                                        je    .Lx506_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx506_44
                        cmp              eax, 99
                                                                                        je    .Lx506_44
                        cmp              eax, 13
                                                                                        jne   .Lx506_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx506_44
                                                                                        jmp   .Lx506_45
.Lx506_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx506_53
                        cmp              eax, 99
                                                                                        je    .Lx506_53
                        cmp              eax, 13
                                                                                        jne   .Lx506_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx506_53
                                                                                        jmp   .Lx506_46
.Lx506_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx506_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx506_53
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
                                                                                        jmp   .Lx506_51
.Lx506_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx506_47
                        cmp              eax, 99
                                                                                        je    .Lx506_47
                        cmp              eax, 13
                                                                                        jne   .Lx506_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx506_47
                                                                                        jmp   .Lx506_48
.Lx506_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx506_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx506_53
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
                                                                                        jmp   .Lx506_51
.Lx506_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx506_49
                        cmp              edx, 14
                                                                                        je    .Lx506_53
                                                                                        jmp   .Lx506_52
.Lx506_49:
                        cmp              edx, 14
                                                                                        je    .Lx506_52
                        cmp              ecx, 7
                                                                                        je    .Lx506_53
                        cmp              edx, 7
                                                                                        je    .Lx506_53
                        cmp              ecx, 6
                                                                                        jne   .Lx506_50
                        cmp              edx, 6
                                                                                        jne   .Lx506_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx506_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx506_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx506_51
                                                                                        jmp   .Lx506_52
.Lx506_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx506_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx506_53
.Lx506_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx506_54
.Lx506_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx506_54
.Lx506_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx506_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n460_var_ref_α
n458_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n462_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
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
                                                                                        je    proc_same_total$2F3_ω
                                                                                        jmp   proc_same_total$2F3_ω
n461_op11_β:
                                                                                        jmp   proc_same_total$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_op11_α:
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
.Lx512_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              esi, 1
                                                                                        jne   .Lx512_55
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_55:
                        cmp              esi, 2
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_56:
                        cmp              eax, 13
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              rax, r8
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_41:
                        lea              r9, [rbp + 464]
.Lx512_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              esi, 1
                                                                                        jne   .Lx512_57
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_57:
                        cmp              esi, 2
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_58:
                        cmp              eax, 13
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              rax, r9
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_43:
                        cmp              r8, r9
                                                                                        je    .Lx512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_44
                        cmp              eax, 99
                                                                                        je    .Lx512_44
                        cmp              eax, 13
                                                                                        jne   .Lx512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx512_44
                                                                                        jmp   .Lx512_45
.Lx512_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_53
                        cmp              eax, 99
                                                                                        je    .Lx512_53
                        cmp              eax, 13
                                                                                        jne   .Lx512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_46
.Lx512_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_47
                        cmp              eax, 99
                                                                                        je    .Lx512_47
                        cmp              eax, 13
                                                                                        jne   .Lx512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_47
                                                                                        jmp   .Lx512_48
.Lx512_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx512_49
                        cmp              edx, 14
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_52
.Lx512_49:
                        cmp              edx, 14
                                                                                        je    .Lx512_52
                        cmp              ecx, 7
                                                                                        je    .Lx512_53
                        cmp              edx, 7
                                                                                        je    .Lx512_53
                        cmp              ecx, 6
                                                                                        jne   .Lx512_50
                        cmp              edx, 6
                                                                                        jne   .Lx512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx512_51
                                                                                        jmp   .Lx512_52
.Lx512_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
.Lx512_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx512_54
.Lx512_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx512_54
.Lx512_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx512_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n450_op11_α
                                                                                        jmp   n464_suspend_α
n462_op11_β:
                                                                                        jmp   n450_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n465_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n464_suspend_α:
                        lea              rax, [rip + n464_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_same_total$2F3_γ
n464_suspend_β:
                                                                                        jmp   n450_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n465_op11_α:
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
.Lx517_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx517_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx517_41
                        cmp              esi, 1
                                                                                        jne   .Lx517_55
                        mov              r8, rax
                                                                                        jmp   .Lx517_40
.Lx517_55:
                        cmp              esi, 2
                                                                                        jne   .Lx517_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx517_41
                        mov              r8, rax
                                                                                        jmp   .Lx517_40
.Lx517_56:
                        cmp              eax, 13
                                                                                        jne   .Lx517_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx517_41
                        cmp              rax, r8
                                                                                        je    .Lx517_41
                        mov              r8, rax
                                                                                        jmp   .Lx517_40
.Lx517_41:
                        lea              r9, [rbp + 256]
.Lx517_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx517_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx517_43
                        cmp              esi, 1
                                                                                        jne   .Lx517_57
                        mov              r9, rax
                                                                                        jmp   .Lx517_42
.Lx517_57:
                        cmp              esi, 2
                                                                                        jne   .Lx517_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx517_43
                        mov              r9, rax
                                                                                        jmp   .Lx517_42
.Lx517_58:
                        cmp              eax, 13
                                                                                        jne   .Lx517_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx517_43
                        cmp              rax, r9
                                                                                        je    .Lx517_43
                        mov              r9, rax
                                                                                        jmp   .Lx517_42
.Lx517_43:
                        cmp              r8, r9
                                                                                        je    .Lx517_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx517_44
                        cmp              eax, 99
                                                                                        je    .Lx517_44
                        cmp              eax, 13
                                                                                        jne   .Lx517_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx517_44
                                                                                        jmp   .Lx517_45
.Lx517_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx517_53
                        cmp              eax, 99
                                                                                        je    .Lx517_53
                        cmp              eax, 13
                                                                                        jne   .Lx517_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx517_53
                                                                                        jmp   .Lx517_46
.Lx517_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx517_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx517_53
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
                                                                                        jmp   .Lx517_51
.Lx517_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx517_47
                        cmp              eax, 99
                                                                                        je    .Lx517_47
                        cmp              eax, 13
                                                                                        jne   .Lx517_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx517_47
                                                                                        jmp   .Lx517_48
.Lx517_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx517_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx517_53
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
                                                                                        jmp   .Lx517_51
.Lx517_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx517_49
                        cmp              edx, 14
                                                                                        je    .Lx517_53
                                                                                        jmp   .Lx517_52
.Lx517_49:
                        cmp              edx, 14
                                                                                        je    .Lx517_52
                        cmp              ecx, 7
                                                                                        je    .Lx517_53
                        cmp              edx, 7
                                                                                        je    .Lx517_53
                        cmp              ecx, 6
                                                                                        jne   .Lx517_50
                        cmp              edx, 6
                                                                                        jne   .Lx517_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx517_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx517_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx517_51
                                                                                        jmp   .Lx517_52
.Lx517_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx517_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx517_53
.Lx517_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx517_54
.Lx517_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx517_54
.Lx517_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx517_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n466_var_ref_α
n465_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n468_op11_α:
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
.Lx522_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx522_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        cmp              esi, 1
                                                                                        jne   .Lx522_55
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_55:
                        cmp              esi, 2
                                                                                        jne   .Lx522_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_56:
                        cmp              eax, 13
                                                                                        jne   .Lx522_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_41
                        cmp              rax, r8
                                                                                        je    .Lx522_41
                        mov              r8, rax
                                                                                        jmp   .Lx522_40
.Lx522_41:
                        lea              r9, [rbp + 176]
.Lx522_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx522_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        cmp              esi, 1
                                                                                        jne   .Lx522_57
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_57:
                        cmp              esi, 2
                                                                                        jne   .Lx522_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_58:
                        cmp              eax, 13
                                                                                        jne   .Lx522_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx522_43
                        cmp              rax, r9
                                                                                        je    .Lx522_43
                        mov              r9, rax
                                                                                        jmp   .Lx522_42
.Lx522_43:
                        cmp              r8, r9
                                                                                        je    .Lx522_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_44
                        cmp              eax, 99
                                                                                        je    .Lx522_44
                        cmp              eax, 13
                                                                                        jne   .Lx522_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx522_44
                                                                                        jmp   .Lx522_45
.Lx522_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_53
                        cmp              eax, 99
                                                                                        je    .Lx522_53
                        cmp              eax, 13
                                                                                        jne   .Lx522_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx522_53
                                                                                        jmp   .Lx522_46
.Lx522_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx522_53
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
                                                                                        jmp   .Lx522_51
.Lx522_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx522_47
                        cmp              eax, 99
                                                                                        je    .Lx522_47
                        cmp              eax, 13
                                                                                        jne   .Lx522_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx522_47
                                                                                        jmp   .Lx522_48
.Lx522_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx522_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx522_53
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
                                                                                        jmp   .Lx522_51
.Lx522_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx522_49
                        cmp              edx, 14
                                                                                        je    .Lx522_53
                                                                                        jmp   .Lx522_52
.Lx522_49:
                        cmp              edx, 14
                                                                                        je    .Lx522_52
                        cmp              ecx, 7
                                                                                        je    .Lx522_53
                        cmp              edx, 7
                                                                                        je    .Lx522_53
                        cmp              ecx, 6
                                                                                        jne   .Lx522_50
                        cmp              edx, 6
                                                                                        jne   .Lx522_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx522_51
                                                                                        jmp   .Lx522_52
.Lx522_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx522_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx522_53
.Lx522_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx522_54
.Lx522_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx522_54
.Lx522_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx522_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n469_suspend_α
n468_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n469_suspend_α:
                        lea              rax, [rip + n469_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_same_total$2F3_γ
n469_suspend_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_same_total$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_same_total$2F3_β:
                                                                                        jmp   qword ptr [rbp + 960]
#-----------------------------------------------------------------------------------------------------------------------
proc_same_total$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_same_total$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1032]
                        mov              rbp, [rbp + 1048]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_same_total$2F3_ω:
                        mov              rax, [rbp + 1040]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, [rbp + 1048]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wife$2F1_α
proc_wife$2F1_α:
                        .global          proc_wife$2F1_α
                        .global          proc_wife$2F1_β
                        .global          proc_wife$2F1_γ
                        .global          proc_wife$2F1_ω
                        sub              rsp, 688
                        mov              [rsp + 664], rcx
                        mov              [rsp + 672], rdx
                        mov              [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
proc_wife$2F1_α_body:
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rbp + 624], rax
#-----------------------------------------------------------------------------------------------------------------------
n525_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx543_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx543_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx543_101
.Lx543_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx543_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_wife$2F1_ω
                                                                                        jmp   n526_var_ref_α
n525_op11_β:
                                                                                        jmp   proc_wife$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n527_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n528_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
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
.Lx548_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              esi, 1
                                                                                        jne   .Lx548_55
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_55:
                        cmp              esi, 2
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_56:
                        cmp              eax, 13
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              rax, r8
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_41:
                        lea              r9, [rbp + 576]
.Lx548_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              esi, 1
                                                                                        jne   .Lx548_57
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_57:
                        cmp              esi, 2
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_58:
                        cmp              eax, 13
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              rax, r9
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_43:
                        cmp              r8, r9
                                                                                        je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_44
                        cmp              eax, 99
                                                                                        je    .Lx548_44
                        cmp              eax, 13
                                                                                        jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx548_44
                                                                                        jmp   .Lx548_45
.Lx548_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_53
                        cmp              eax, 99
                                                                                        je    .Lx548_53
                        cmp              eax, 13
                                                                                        jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_46
.Lx548_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_47
                        cmp              eax, 99
                                                                                        je    .Lx548_47
                        cmp              eax, 13
                                                                                        jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_47
                                                                                        jmp   .Lx548_48
.Lx548_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx548_49
                        cmp              edx, 14
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_52
.Lx548_49:
                        cmp              edx, 14
                                                                                        je    .Lx548_52
                        cmp              ecx, 7
                                                                                        je    .Lx548_53
                        cmp              edx, 7
                                                                                        je    .Lx548_53
                        cmp              ecx, 6
                                                                                        jne   .Lx548_50
                        cmp              edx, 6
                                                                                        jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx548_51
                                                                                        jmp   .Lx548_52
.Lx548_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
.Lx548_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx548_54
.Lx548_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx548_54
.Lx548_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx548_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n529_var_ref_α
n528_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n531_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
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
                                                                                        je    proc_wife$2F1_ω
                                                                                        jmp   proc_wife$2F1_ω
n530_op11_β:
                                                                                        jmp   proc_wife$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n532_lit_string_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n533_lit_string_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "grace"
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n534_lit_string_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n535_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "helen"
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n536_lit_string_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n537_lit_string_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "mary"
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n538_op11_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
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
                                                                                        je    proc_wife$2F1_ω
                                                                                        jmp   n539_op11_α
n538_op11_β:
                                                                                        jmp   proc_wife$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_op11_α:
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
                                                                                        je    proc_wife$2F1_ω
                                                                                        jmp   n540_op11_α
n539_op11_β:
                                                                                        jmp   proc_wife$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
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
                                                                                        je    n530_op11_α
                                                                                        jmp   n541_call_proc_staged_α
n540_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n541_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx563_21
.Lx563_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx563_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx563_23
.Lx563_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx563_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx563_1
                        lea              rcx, [rip + .Lx563_3]
                        lea              rdx, [rip + .Lx563_4]
                                                                                        jmp   rax
.Lx563_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx563_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx563_2
.Lx563_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx563_2
.Lx563_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx563_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx563_2
.Lx563_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx563_2
.Lx563_1:
                        call             rt_faildescr@PLT
.Lx563_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n542_suspend_α
n541_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n542_suspend_α:
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_wife$2F1_γ
n542_suspend_β:
                                                                                        jmp   n541_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_wife$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wife$2F1_β:
                                                                                        jmp   qword ptr [rbp + 624]
#-----------------------------------------------------------------------------------------------------------------------
proc_wife$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_wife$2F1_res]
                        push             rax
                        mov              rax, [rbp + 664]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wife$2F1_ω:
                        mov              rax, [rbp + 672]
                        lea              rsp, [rbp + 688]
                        mov              rbp, [rbp + 680]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_display$2F5_α
proc_display$2F5_α:
                        .global          proc_display$2F5_α
                        .global          proc_display$2F5_β
                        .global          proc_display$2F5_γ
                        .global          proc_display$2F5_ω
                        sub              rsp, 1328
                        mov              [rsp + 1304], rcx
                        mov              [rsp + 1312], rdx
                        mov              [rsp + 1320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1296
                        call             rt_jmp_frame_lexprep2@PLT
proc_display$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n566_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx611_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx611_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx611_101
.Lx611_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx611_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F5_ω
                                                                                        jmp   n567_var_ref_α
n566_op11_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n569_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
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
.Lx616_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx616_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        cmp              esi, 1
                                                                                        jne   .Lx616_55
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_55:
                        cmp              esi, 2
                                                                                        jne   .Lx616_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_56:
                        cmp              eax, 13
                                                                                        jne   .Lx616_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_41
                        cmp              rax, r8
                                                                                        je    .Lx616_41
                        mov              r8, rax
                                                                                        jmp   .Lx616_40
.Lx616_41:
                        lea              r9, [rbp + 1168]
.Lx616_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx616_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        cmp              esi, 1
                                                                                        jne   .Lx616_57
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_57:
                        cmp              esi, 2
                                                                                        jne   .Lx616_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_58:
                        cmp              eax, 13
                                                                                        jne   .Lx616_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx616_43
                        cmp              rax, r9
                                                                                        je    .Lx616_43
                        mov              r9, rax
                                                                                        jmp   .Lx616_42
.Lx616_43:
                        cmp              r8, r9
                                                                                        je    .Lx616_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_44
                        cmp              eax, 99
                                                                                        je    .Lx616_44
                        cmp              eax, 13
                                                                                        jne   .Lx616_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx616_44
                                                                                        jmp   .Lx616_45
.Lx616_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_53
                        cmp              eax, 99
                                                                                        je    .Lx616_53
                        cmp              eax, 13
                                                                                        jne   .Lx616_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx616_53
                                                                                        jmp   .Lx616_46
.Lx616_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx616_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx616_53
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
                                                                                        jmp   .Lx616_51
.Lx616_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx616_47
                        cmp              eax, 99
                                                                                        je    .Lx616_47
                        cmp              eax, 13
                                                                                        jne   .Lx616_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx616_47
                                                                                        jmp   .Lx616_48
.Lx616_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx616_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx616_53
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
                                                                                        jmp   .Lx616_51
.Lx616_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx616_49
                        cmp              edx, 14
                                                                                        je    .Lx616_53
                                                                                        jmp   .Lx616_52
.Lx616_49:
                        cmp              edx, 14
                                                                                        je    .Lx616_52
                        cmp              ecx, 7
                                                                                        je    .Lx616_53
                        cmp              edx, 7
                                                                                        je    .Lx616_53
                        cmp              ecx, 6
                                                                                        jne   .Lx616_50
                        cmp              edx, 6
                                                                                        jne   .Lx616_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx616_51
                                                                                        jmp   .Lx616_52
.Lx616_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx616_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx616_53
.Lx616_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx616_54
.Lx616_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx616_54
.Lx616_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx616_54:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n570_var_ref_α
n569_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_display$2F5_ω
                                                                                        jmp   proc_display$2F5_ω
n571_op11_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n573_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_op11_α:
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
.Lx622_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx622_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx622_41
                        cmp              esi, 1
                                                                                        jne   .Lx622_55
                        mov              r8, rax
                                                                                        jmp   .Lx622_40
.Lx622_55:
                        cmp              esi, 2
                                                                                        jne   .Lx622_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx622_41
                        mov              r8, rax
                                                                                        jmp   .Lx622_40
.Lx622_56:
                        cmp              eax, 13
                                                                                        jne   .Lx622_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx622_41
                        cmp              rax, r8
                                                                                        je    .Lx622_41
                        mov              r8, rax
                                                                                        jmp   .Lx622_40
.Lx622_41:
                        lea              r9, [rbp + 1088]
.Lx622_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx622_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx622_43
                        cmp              esi, 1
                                                                                        jne   .Lx622_57
                        mov              r9, rax
                                                                                        jmp   .Lx622_42
.Lx622_57:
                        cmp              esi, 2
                                                                                        jne   .Lx622_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx622_43
                        mov              r9, rax
                                                                                        jmp   .Lx622_42
.Lx622_58:
                        cmp              eax, 13
                                                                                        jne   .Lx622_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx622_43
                        cmp              rax, r9
                                                                                        je    .Lx622_43
                        mov              r9, rax
                                                                                        jmp   .Lx622_42
.Lx622_43:
                        cmp              r8, r9
                                                                                        je    .Lx622_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx622_44
                        cmp              eax, 99
                                                                                        je    .Lx622_44
                        cmp              eax, 13
                                                                                        jne   .Lx622_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx622_44
                                                                                        jmp   .Lx622_45
.Lx622_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx622_53
                        cmp              eax, 99
                                                                                        je    .Lx622_53
                        cmp              eax, 13
                                                                                        jne   .Lx622_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx622_53
                                                                                        jmp   .Lx622_46
.Lx622_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx622_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx622_53
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
                                                                                        jmp   .Lx622_51
.Lx622_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx622_47
                        cmp              eax, 99
                                                                                        je    .Lx622_47
                        cmp              eax, 13
                                                                                        jne   .Lx622_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx622_47
                                                                                        jmp   .Lx622_48
.Lx622_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx622_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx622_53
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
                                                                                        jmp   .Lx622_51
.Lx622_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx622_49
                        cmp              edx, 14
                                                                                        je    .Lx622_53
                                                                                        jmp   .Lx622_52
.Lx622_49:
                        cmp              edx, 14
                                                                                        je    .Lx622_52
                        cmp              ecx, 7
                                                                                        je    .Lx622_53
                        cmp              edx, 7
                                                                                        je    .Lx622_53
                        cmp              ecx, 6
                                                                                        jne   .Lx622_50
                        cmp              edx, 6
                                                                                        jne   .Lx622_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx622_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx622_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx622_51
                                                                                        jmp   .Lx622_52
.Lx622_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx622_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx622_53
.Lx622_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx622_54
.Lx622_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx622_54
.Lx622_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx622_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n574_var_ref_α
n573_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n576_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
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
.Lx627_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx627_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        cmp              esi, 1
                                                                                        jne   .Lx627_55
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_55:
                        cmp              esi, 2
                                                                                        jne   .Lx627_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_56:
                        cmp              eax, 13
                                                                                        jne   .Lx627_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        cmp              rax, r8
                                                                                        je    .Lx627_41
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_41:
                        lea              r9, [rbp + 1008]
.Lx627_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx627_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        cmp              esi, 1
                                                                                        jne   .Lx627_57
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_57:
                        cmp              esi, 2
                                                                                        jne   .Lx627_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_58:
                        cmp              eax, 13
                                                                                        jne   .Lx627_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        cmp              rax, r9
                                                                                        je    .Lx627_43
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_43:
                        cmp              r8, r9
                                                                                        je    .Lx627_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_44
                        cmp              eax, 99
                                                                                        je    .Lx627_44
                        cmp              eax, 13
                                                                                        jne   .Lx627_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx627_44
                                                                                        jmp   .Lx627_45
.Lx627_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_53
                        cmp              eax, 99
                                                                                        je    .Lx627_53
                        cmp              eax, 13
                                                                                        jne   .Lx627_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx627_53
                                                                                        jmp   .Lx627_46
.Lx627_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx627_53
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
                                                                                        jmp   .Lx627_51
.Lx627_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_47
                        cmp              eax, 99
                                                                                        je    .Lx627_47
                        cmp              eax, 13
                                                                                        jne   .Lx627_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx627_47
                                                                                        jmp   .Lx627_48
.Lx627_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx627_53
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
                                                                                        jmp   .Lx627_51
.Lx627_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx627_49
                        cmp              edx, 14
                                                                                        je    .Lx627_53
                                                                                        jmp   .Lx627_52
.Lx627_49:
                        cmp              edx, 14
                                                                                        je    .Lx627_52
                        cmp              ecx, 7
                                                                                        je    .Lx627_53
                        cmp              edx, 7
                                                                                        je    .Lx627_53
                        cmp              ecx, 6
                                                                                        jne   .Lx627_50
                        cmp              edx, 6
                                                                                        jne   .Lx627_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx627_51
                                                                                        jmp   .Lx627_52
.Lx627_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx627_53
.Lx627_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx627_54
.Lx627_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx627_54
.Lx627_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx627_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n577_var_ref_α
n576_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n579_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n579_op11_α:
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
.Lx632_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx632_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        cmp              esi, 1
                                                                                        jne   .Lx632_55
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_55:
                        cmp              esi, 2
                                                                                        jne   .Lx632_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_56:
                        cmp              eax, 13
                                                                                        jne   .Lx632_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        cmp              rax, r8
                                                                                        je    .Lx632_41
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_41:
                        lea              r9, [rbp + 928]
.Lx632_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx632_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        cmp              esi, 1
                                                                                        jne   .Lx632_57
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_57:
                        cmp              esi, 2
                                                                                        jne   .Lx632_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_58:
                        cmp              eax, 13
                                                                                        jne   .Lx632_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        cmp              rax, r9
                                                                                        je    .Lx632_43
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_43:
                        cmp              r8, r9
                                                                                        je    .Lx632_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_44
                        cmp              eax, 99
                                                                                        je    .Lx632_44
                        cmp              eax, 13
                                                                                        jne   .Lx632_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx632_44
                                                                                        jmp   .Lx632_45
.Lx632_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_53
                        cmp              eax, 99
                                                                                        je    .Lx632_53
                        cmp              eax, 13
                                                                                        jne   .Lx632_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx632_53
                                                                                        jmp   .Lx632_46
.Lx632_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx632_53
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
                                                                                        jmp   .Lx632_51
.Lx632_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_47
                        cmp              eax, 99
                                                                                        je    .Lx632_47
                        cmp              eax, 13
                                                                                        jne   .Lx632_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx632_47
                                                                                        jmp   .Lx632_48
.Lx632_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx632_53
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
                                                                                        jmp   .Lx632_51
.Lx632_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx632_49
                        cmp              edx, 14
                                                                                        je    .Lx632_53
                                                                                        jmp   .Lx632_52
.Lx632_49:
                        cmp              edx, 14
                                                                                        je    .Lx632_52
                        cmp              ecx, 7
                                                                                        je    .Lx632_53
                        cmp              edx, 7
                                                                                        je    .Lx632_53
                        cmp              ecx, 6
                                                                                        jne   .Lx632_50
                        cmp              edx, 6
                                                                                        jne   .Lx632_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx632_51
                                                                                        jmp   .Lx632_52
.Lx632_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx632_53
.Lx632_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx632_54
.Lx632_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx632_54
.Lx632_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx632_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n580_var_ref_α
n579_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n581_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n582_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n582_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx637_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx637_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        cmp              esi, 1
                                                                                        jne   .Lx637_55
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_55:
                        cmp              esi, 2
                                                                                        jne   .Lx637_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_56:
                        cmp              eax, 13
                                                                                        jne   .Lx637_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        cmp              rax, r8
                                                                                        je    .Lx637_41
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_41:
                        lea              r9, [rbp + 848]
.Lx637_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx637_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        cmp              esi, 1
                                                                                        jne   .Lx637_57
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_57:
                        cmp              esi, 2
                                                                                        jne   .Lx637_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_58:
                        cmp              eax, 13
                                                                                        jne   .Lx637_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        cmp              rax, r9
                                                                                        je    .Lx637_43
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_43:
                        cmp              r8, r9
                                                                                        je    .Lx637_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_44
                        cmp              eax, 99
                                                                                        je    .Lx637_44
                        cmp              eax, 13
                                                                                        jne   .Lx637_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx637_44
                                                                                        jmp   .Lx637_45
.Lx637_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_53
                        cmp              eax, 99
                                                                                        je    .Lx637_53
                        cmp              eax, 13
                                                                                        jne   .Lx637_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx637_53
                                                                                        jmp   .Lx637_46
.Lx637_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx637_53
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
                                                                                        jmp   .Lx637_51
.Lx637_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_47
                        cmp              eax, 99
                                                                                        je    .Lx637_47
                        cmp              eax, 13
                                                                                        jne   .Lx637_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx637_47
                                                                                        jmp   .Lx637_48
.Lx637_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx637_53
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
                                                                                        jmp   .Lx637_51
.Lx637_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx637_49
                        cmp              edx, 14
                                                                                        je    .Lx637_53
                                                                                        jmp   .Lx637_52
.Lx637_49:
                        cmp              edx, 14
                                                                                        je    .Lx637_52
                        cmp              ecx, 7
                                                                                        je    .Lx637_53
                        cmp              edx, 7
                                                                                        je    .Lx637_53
                        cmp              ecx, 6
                                                                                        jne   .Lx637_50
                        cmp              edx, 6
                                                                                        jne   .Lx637_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx637_51
                                                                                        jmp   .Lx637_52
.Lx637_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx637_53
.Lx637_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx637_54
.Lx637_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx637_54
.Lx637_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx637_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n583_lit_string_α
n582_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n584_op11_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "Ed="
#-----------------------------------------------------------------------------------------------------------------------
n584_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn640:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn640]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n585_var_α
n584_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n586_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n586_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn644:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n587_lit_string_α
n586_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n588_op11_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          " Bill="
#-----------------------------------------------------------------------------------------------------------------------
n588_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn647:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn647]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n589_var_α
n588_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n590_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n590_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn651:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n591_lit_string_α
n590_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n592_op11_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn654:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn654]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n593_var_α
n592_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n594_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn658:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn658]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n595_lit_string_α
n594_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n596_op11_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n596_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn661:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn661]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n597_lit_string_α
n596_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n598_op11_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          " Tom="
#-----------------------------------------------------------------------------------------------------------------------
n598_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn664:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn664]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n599_var_α
n598_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n600_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n600_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn668:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn668]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n601_lit_string_α
n600_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n602_op11_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n602_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn671:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn671]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n603_var_α
n602_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n604_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn675:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n605_lit_string_α
n604_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n606_op11_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn678:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn678]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n607_lit_string_α
n606_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n608_op11_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n608_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn681:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn681]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n571_op11_α
                                                                                        jmp   n609_move_label_α
n608_op11_β:
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n609_move_label_α:
                        lea              rax, [rip + n571_op11_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_display$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n610_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n610_disjunction_β:
                                                                                        jmp   proc_display$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_β:
                                                                                        jmp   n610_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1304]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_display$2F5_ω:
                        mov              rax, [rbp + 1312]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
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
.Lstartup_pname1:       .string          "score/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_score$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 928
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
                        mov              esi, 2384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "same_total/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_same_total$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1024
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "wife/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_wife$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "display/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_display$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
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
n686_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx691_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx691_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx691_101
.Lx691_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx691_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n687_call_proc_staged_α
n686_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n687_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx693_1
                        lea              rcx, [rip + .Lx693_3]
                        lea              rdx, [rip + .Lx693_4]
                                                                                        jmp   rax
.Lx693_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx693_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx693_2
.Lx693_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx693_2
.Lx693_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx693_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx693_2
.Lx693_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx693_2
.Lx693_1:
                        call             rt_faildescr@PLT
.Lx693_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n689_op11_α
                                                                                        jmp   n688_move_label_α
n687_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n688_move_label_α:
                        lea              rax, [rip + n687_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n689_op11_α:
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
n689_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n690_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n690_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n690_disjunction_α
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
