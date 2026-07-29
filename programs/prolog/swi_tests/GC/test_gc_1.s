                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_loop$2F1_α
proc_loop$2F1_α:
                        .global          proc_loop$2F1_α
                        .global          proc_loop$2F1_β
                        .global          proc_loop$2F1_γ
                        .global          proc_loop$2F1_ω
                        sub              rsp, 1600
                        mov              [rsp + 1576], rcx
                        mov              [rsp + 1584], rdx
                        mov              [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1472
                        mov              edx, 1568
                        call             rt_jmp_frame_lexprep2@PLT
proc_loop$2F1_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx46_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx46_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx46_101
.Lx46_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx46_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n3_lit_integer_α
.Lx49_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n4_op11_α
.Lx50_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1376]
                        lea              r8, [rbp + 1376]
.Lx51_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx51_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        cmp              esi, 1
                                                                                        jne   .Lx51_112
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_112:
                        cmp              esi, 2
                                                                                        jne   .Lx51_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_113:
                        cmp              eax, 13
                                                                                        jne   .Lx51_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx51_111
                        cmp              rax, r8
                                                                                        je    .Lx51_111
                        mov              r8, rax
                                                                                        jmp   .Lx51_110
.Lx51_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx51_114
                        cmp              eax, 99
                                                                                        je    .Lx51_114
                        cmp              eax, 13
                                                                                        jne   .Lx51_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx51_114
                                                                                        jmp   .Lx51_118
.Lx51_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx51_115
                        cmp              eax, 6
                                                                                        jne   .Lx51_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx51_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx51_115
                                                                                        jmp   .Lx51_114
.Lx51_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx51_117
.Lx51_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx51_117
.Lx51_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx51_117:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n9_op11_α
.Lx56_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_op19_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
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
.Lx60_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              esi, 1
                                                                                        jne   .Lx60_55
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_55:
                        cmp              esi, 2
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_56:
                        cmp              eax, 13
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              rax, r8
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_41:
                        lea              r9, [rbp + 1184]
.Lx60_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              esi, 1
                                                                                        jne   .Lx60_57
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_57:
                        cmp              esi, 2
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_58:
                        cmp              eax, 13
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              rax, r9
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_43:
                        cmp              r8, r9
                                                                                        je    .Lx60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_44
                        cmp              eax, 99
                                                                                        je    .Lx60_44
                        cmp              eax, 13
                                                                                        jne   .Lx60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx60_44
                                                                                        jmp   .Lx60_45
.Lx60_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_53
                        cmp              eax, 99
                                                                                        je    .Lx60_53
                        cmp              eax, 13
                                                                                        jne   .Lx60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_46
.Lx60_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_47
                        cmp              eax, 99
                                                                                        je    .Lx60_47
                        cmp              eax, 13
                                                                                        jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_47
                                                                                        jmp   .Lx60_48
.Lx60_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx60_49
                        cmp              edx, 14
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_52
.Lx60_49:
                        cmp              edx, 14
                                                                                        je    .Lx60_52
                        cmp              ecx, 7
                                                                                        je    .Lx60_53
                        cmp              edx, 7
                                                                                        je    .Lx60_53
                        cmp              ecx, 6
                                                                                        jne   .Lx60_50
                        cmp              edx, 6
                                                                                        jne   .Lx60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx60_51
                                                                                        jmp   .Lx60_52
.Lx60_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
.Lx60_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx60_54
.Lx60_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx60_54
.Lx60_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx60_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_lit_string_α
n10_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op19_α:
                                                                                        jmp   n15_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n16_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   proc_loop$2F1_ω
n14_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_loop$2F1_γ
n15_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n17_lit_string_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "catch"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n18_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "setup_call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n19_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n20_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n21_lit_integer_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n22_lit_integer_α
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n23_var_ref_α
.Lx73_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n26_op11_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   n27_lit_string_α
n26_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n28_op11_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "garbage_collect"
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    proc_loop$2F1_ω
                                                                                        jmp   n29_var_ref_α
n28_op11_β:
                                                                                        jmp   proc_loop$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n31_op11_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n32_var_ref_α
n31_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n34_var_ref_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n36_op11_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "exit"
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n37_call_proc_staged_α
n36_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx93_21
.Lx93_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx93_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_22
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx93_23
.Lx93_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_arg_stage@PLT
.Lx93_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_24
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx93_25
.Lx93_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx93_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_26
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx93_27
.Lx93_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx93_27:
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx93_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                                                                                        jmp   rax
.Lx93_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_1:
                        call             rt_faildescr@PLT
.Lx93_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n38_var_ref_α
n37_call_proc_staged_β:
                                                                                        jmp   n14_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "setup_call_catcher_cleanup/4"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n41_op11_α
.Lx98_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n42_op11_α
n41_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_proc_staged_β
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n37_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n44_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx104_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx104_21
.Lx104_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx104_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx104_1
                        lea              rcx, [rip + .Lx104_3]
                        lea              rdx, [rip + .Lx104_4]
                                                                                        jmp   rax
.Lx104_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx104_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx104_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_1:
                        call             rt_faildescr@PLT
.Lx104_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_proc_staged_β
                                                                                        jmp   n45_suspend_α
n44_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "loop/1"
#-----------------------------------------------------------------------------------------------------------------------
n45_suspend_α:
                        lea              rax, [rip + n45_suspend_β]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_loop$2F1_γ
n45_suspend_β:
                                                                                        jmp   n44_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_loop$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_loop$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1472]
#-----------------------------------------------------------------------------------------------------------------------
proc_loop$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_loop$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1576]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_loop$2F1_ω:
                        mov              rax, [rbp + 1584]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_gc_1$2F0_α
proc_test_gc_1$2F0_α:
                        .global          proc_test_gc_1$2F0_α
                        .global          proc_test_gc_1$2F0_β
                        .global          proc_test_gc_1$2F0_γ
                        .global          proc_test_gc_1$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_gc_1$2F0_α_body:
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx112_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx112_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx112_101
.Lx112_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx112_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_gc_1$2F0_ω
                                                                                        jmp   n108_call_proc_staged_α
n107_op11_β:
                                                                                        jmp   proc_test_gc_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4]
                                                                                        jmp   rax
.Lx114_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx114_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx114_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_1:
                        call             rt_faildescr@PLT
.Lx114_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n109_call_proc_staged_α
n108_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "test1/0"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              edi, 6
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx116_1
                        lea              rcx, [rip + .Lx116_3]
                        lea              rdx, [rip + .Lx116_4]
                                                                                        jmp   rax
.Lx116_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx116_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx116_2
.Lx116_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx116_2
.Lx116_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx116_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx116_2
.Lx116_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx116_2
.Lx116_1:
                        call             rt_faildescr@PLT
.Lx116_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n108_call_proc_staged_β
                                                                                        jmp   n111_suspend_α
n109_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "test2/0"
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
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
                                                                                        je    proc_test_gc_1$2F0_ω
                                                                                        jmp   proc_test_gc_1$2F0_ω
n110_op11_β:
                                                                                        jmp   proc_test_gc_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n111_suspend_α:
                        lea              rax, [rip + n111_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_gc_1$2F0_γ
n111_suspend_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_gc_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_gc_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_gc_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_gc_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_gc_1$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test1$2F0_α
proc_test1$2F0_α:
                        .global          proc_test1$2F0_α
                        .global          proc_test1$2F0_β
                        .global          proc_test1$2F0_γ
                        .global          proc_test1$2F0_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_test1$2F0_α_body:
                        lea              rax, [rip + n125_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx126_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx126_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx126_101
.Lx126_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx126_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test1$2F0_ω
                                                                                        jmp   n121_lit_integer_α
n120_op11_β:
                                                                                        jmp   proc_test1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n122_call_proc_staged_α
.Lx127_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx129_21
.Lx129_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx129_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx129_1
                        lea              rcx, [rip + .Lx129_3]
                        lea              rdx, [rip + .Lx129_4]
                                                                                        jmp   rax
.Lx129_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx129_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx129_2
.Lx129_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx129_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx129_2
.Lx129_1:
                        call             rt_faildescr@PLT
.Lx129_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n124_op11_α
                                                                                        jmp   n123_op19_α
n122_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "loop/1"
#-----------------------------------------------------------------------------------------------------------------------
n123_op19_α:
                                                                                        jmp   n125_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
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
                                                                                        je    proc_test1$2F0_ω
                                                                                        jmp   proc_test1$2F0_ω
n124_op11_β:
                                                                                        jmp   proc_test1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_suspend_α:
                        lea              rax, [rip + n125_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test1$2F0_γ
n125_suspend_β:
                                                                                        jmp   n122_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_test1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 184]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test1$2F0_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n145_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx146_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx146_101
.Lx146_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx146_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n135_lit_string_α
n134_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n136_lit_string_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "test_gc_1"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n137_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n138_lit_string_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n139_lit_integer_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "test_gc_1"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n140_op11_α
.Lx151_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n141_lit_string_α
n140_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n142_op11_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n143_call_proc_staged_α
n142_op11_β:
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx156_21
.Lx156_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx156_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx156_23
.Lx156_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx156_23:
                        mov              rdi, qword ptr [rip + .Lx156_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx156_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4]
                                                                                        jmp   rax
.Lx156_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_1:
                        call             rt_faildescr@PLT
.Lx156_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n144_op11_α
                                                                                        jmp   n145_suspend_α
n143_call_proc_staged_β:
                                                                                        jmp   n144_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n144_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_suspend_α:
                        lea              rax, [rip + n145_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n145_suspend_β:
                                                                                        jmp   n143_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
                        .global          proc_between$2F3_α
                        .global          proc_between$2F3_β
                        .global          proc_between$2F3_γ
                        .global          proc_between$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
                        lea              rax, [rip + n164_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n163_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx171_60:
                        .section         .rodata
.Lbynamegenfn73:        .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn73]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n164_suspend_α
n163_call_builtin_gen_β:
                                                                                        jmp   .Lx171_60
#-----------------------------------------------------------------------------------------------------------------------
n164_suspend_α:
                        lea              rax, [rip + n164_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n164_suspend_β:
                                                                                        jmp   n163_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_between$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo$2F0_α
proc_foo$2F0_α:
                        .global          proc_foo$2F0_α
                        .global          proc_foo$2F0_β
                        .global          proc_foo$2F0_γ
                        .global          proc_foo$2F0_ω
                        sub              rsp, 1184
                        mov              [rsp + 1160], rcx
                        mov              [rsp + 1168], rdx
                        mov              [rsp + 1176], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1152
                        call             rt_jmp_frame_lexprep2@PLT
proc_foo$2F0_α_body:
                        lea              rax, [rip + n205_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx206_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx206_101
.Lx206_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx206_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_foo$2F0_ω
                                                                                        jmp   n175_lit_string_α
n174_op11_β:
                                                                                        jmp   proc_foo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n176_op11_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn209:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n177_lit_string_α
n176_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n179_lit_string_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "my_context"
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
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
                                                                                        je    proc_foo$2F0_ω
                                                                                        jmp   proc_foo$2F0_ω
n178_op11_β:
                                                                                        jmp   proc_foo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n180_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n181_lit_string_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n182_lit_string_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "baz"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n183_op11_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "qux"
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n184_op11_α
n183_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn218:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n185_var_ref_α
n184_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n187_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "UPDATE sc_450 SET sc_450.record_status=? FROM se_counterparty sc_450 WHERE sc_450.cp_code = ?"
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx222_2]
                                                                                        jmp   .Lx222_3
.Lx222_2:
                        .quad            .Lx222_2_s
.Lx222_2_s:
                        .string          "UPDATE sc_450 SET sc_450.record_status=? FROM se_counterparty sc_450 WHERE sc_450.cp_code = ?"
.Lx222_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n188_var_ref_α
n187_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n189_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n191_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n192_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx232_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx232_21
.Lx232_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx232_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx232_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx232_23
.Lx232_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx232_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx232_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx232_25
.Lx232_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx232_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx232_26
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx232_27
.Lx232_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx232_27:
                        mov              edi, 8
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx232_1
                        lea              rcx, [rip + .Lx232_3]
                        lea              rdx, [rip + .Lx232_4]
                                                                                        jmp   rax
.Lx232_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx232_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx232_2
.Lx232_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx232_2
.Lx232_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx232_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx232_2
.Lx232_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx232_2
.Lx232_1:
                        call             rt_faildescr@PLT
.Lx232_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n193_lit_integer_α
n192_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "get_my_context/4"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n194_lit_integer_α
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n195_var_ref_α
.Lx234_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n196_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx238_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx238_21
.Lx238_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx238_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx238_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx238_23
.Lx238_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx238_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx238_24
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx238_25
.Lx238_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx238_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx238_1
                        lea              rcx, [rip + .Lx238_3]
                        lea              rdx, [rip + .Lx238_4]
                                                                                        jmp   rax
.Lx238_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx238_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx238_2
.Lx238_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx238_2
.Lx238_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx238_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx238_2
.Lx238_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx238_2
.Lx238_1:
                        call             rt_faildescr@PLT
.Lx238_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n192_call_proc_staged_β
                                                                                        jmp   n197_var_ref_α
n196_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n198_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn242:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n196_call_proc_staged_β
                                                                                        jmp   n199_var_ref_α
n198_op11_β:
                                                                                        jmp   n196_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n200_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n200_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn246:              .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n201_lit_string_α
n200_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n202_lit_string_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n203_op11_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "application_error"
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n204_op11_α
n203_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn251:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n178_op11_α
                                                                                        jmp   n205_suspend_α
n204_op11_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_suspend_α:
                        lea              rax, [rip + n205_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_foo$2F0_γ
n205_suspend_β:
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F0_β:
                                                                                        jmp   qword ptr [rbp + 1040]
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_foo$2F0_res]
                        push             rax
                        mov              rax, [rbp + 1160]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo$2F0_ω:
                        mov              rax, [rbp + 1168]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test2$2F0_α
proc_test2$2F0_α:
                        .global          proc_test2$2F0_α
                        .global          proc_test2$2F0_β
                        .global          proc_test2$2F0_γ
                        .global          proc_test2$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_test2$2F0_α_body:
                        lea              rax, [rip + n257_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx259_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx259_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx259_101
.Lx259_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx259_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test2$2F0_ω
                                                                                        jmp   n255_lit_integer_α
n254_op11_β:
                                                                                        jmp   proc_test2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n256_call_proc_staged_α
.Lx260_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx262_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx262_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx262_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n258_op11_α
                                                                                        jmp   n257_suspend_α
n256_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "loop/1"
#-----------------------------------------------------------------------------------------------------------------------
n257_suspend_α:
                        lea              rax, [rip + n257_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test2$2F0_γ
n257_suspend_β:
                                                                                        jmp   n258_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
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
                                                                                        je    proc_test2$2F0_ω
                                                                                        jmp   proc_test2$2F0_ω
n258_op11_β:
                                                                                        jmp   proc_test2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_test2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test2$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx274_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx274_101
.Lx274_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx274_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n267_lit_string_α
n266_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n268_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n269_lit_integer_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "my_context"
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n270_op11_α
.Lx277_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n272_op11_α
                                                                                        jmp   n271_call_proc_staged_α
n270_op11_β:
                                                                                        jmp   n272_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n272_op11_α
                                                                                        jmp   n273_suspend_α
n271_call_proc_staged_β:
                                                                                        jmp   n272_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n272_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n273_suspend_β:
                                                                                        jmp   n271_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_get_my_context$2F4_α
proc_get_my_context$2F4_α:
                        .global          proc_get_my_context$2F4_α
                        .global          proc_get_my_context$2F4_β
                        .global          proc_get_my_context$2F4_γ
                        .global          proc_get_my_context$2F4_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1056
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_get_my_context$2F4_α_body:
                        lea              rax, [rip + n310_suspend_β]
                        mov              qword ptr [rbp + 1056], rax
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
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
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx319_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_get_my_context$2F4_ω
                                                                                        jmp   n285_var_ref_α
n284_op11_β:
                                                                                        jmp   proc_get_my_context$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n287_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
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
.Lx324_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx324_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx324_41
                        cmp              esi, 1
                                                                                        jne   .Lx324_55
                        mov              r8, rax
                                                                                        jmp   .Lx324_40
.Lx324_55:
                        cmp              esi, 2
                                                                                        jne   .Lx324_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx324_41
                        mov              r8, rax
                                                                                        jmp   .Lx324_40
.Lx324_56:
                        cmp              eax, 13
                                                                                        jne   .Lx324_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx324_41
                        cmp              rax, r8
                                                                                        je    .Lx324_41
                        mov              r8, rax
                                                                                        jmp   .Lx324_40
.Lx324_41:
                        lea              r9, [rbp + 1008]
.Lx324_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx324_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx324_43
                        cmp              esi, 1
                                                                                        jne   .Lx324_57
                        mov              r9, rax
                                                                                        jmp   .Lx324_42
.Lx324_57:
                        cmp              esi, 2
                                                                                        jne   .Lx324_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx324_43
                        mov              r9, rax
                                                                                        jmp   .Lx324_42
.Lx324_58:
                        cmp              eax, 13
                                                                                        jne   .Lx324_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx324_43
                        cmp              rax, r9
                                                                                        je    .Lx324_43
                        mov              r9, rax
                                                                                        jmp   .Lx324_42
.Lx324_43:
                        cmp              r8, r9
                                                                                        je    .Lx324_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx324_44
                        cmp              eax, 99
                                                                                        je    .Lx324_44
                        cmp              eax, 13
                                                                                        jne   .Lx324_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx324_44
                                                                                        jmp   .Lx324_45
.Lx324_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx324_53
                        cmp              eax, 99
                                                                                        je    .Lx324_53
                        cmp              eax, 13
                                                                                        jne   .Lx324_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx324_53
                                                                                        jmp   .Lx324_46
.Lx324_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx324_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx324_53
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
                                                                                        jmp   .Lx324_51
.Lx324_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx324_47
                        cmp              eax, 99
                                                                                        je    .Lx324_47
                        cmp              eax, 13
                                                                                        jne   .Lx324_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx324_47
                                                                                        jmp   .Lx324_48
.Lx324_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx324_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx324_53
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
                                                                                        jmp   .Lx324_51
.Lx324_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx324_49
                        cmp              edx, 14
                                                                                        je    .Lx324_53
                                                                                        jmp   .Lx324_52
.Lx324_49:
                        cmp              edx, 14
                                                                                        je    .Lx324_52
                        cmp              ecx, 7
                                                                                        je    .Lx324_53
                        cmp              edx, 7
                                                                                        je    .Lx324_53
                        cmp              ecx, 6
                                                                                        jne   .Lx324_50
                        cmp              edx, 6
                                                                                        jne   .Lx324_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx324_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx324_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx324_51
                                                                                        jmp   .Lx324_52
.Lx324_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx324_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx324_53
.Lx324_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx324_54
.Lx324_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx324_54
.Lx324_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx324_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n288_var_ref_α
n287_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n290_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_get_my_context$2F4_ω
                                                                                        jmp   proc_get_my_context$2F4_ω
n289_op11_β:
                                                                                        jmp   proc_get_my_context$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n291_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
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
.Lx330_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx330_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              esi, 1
                                                                                        jne   .Lx330_55
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_55:
                        cmp              esi, 2
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_56:
                        cmp              eax, 13
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              rax, r8
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_41:
                        lea              r9, [rbp + 928]
.Lx330_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx330_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              esi, 1
                                                                                        jne   .Lx330_57
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_57:
                        cmp              esi, 2
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_58:
                        cmp              eax, 13
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              rax, r9
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_43:
                        cmp              r8, r9
                                                                                        je    .Lx330_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_44
                        cmp              eax, 99
                                                                                        je    .Lx330_44
                        cmp              eax, 13
                                                                                        jne   .Lx330_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx330_44
                                                                                        jmp   .Lx330_45
.Lx330_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_53
                        cmp              eax, 99
                                                                                        je    .Lx330_53
                        cmp              eax, 13
                                                                                        jne   .Lx330_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_46
.Lx330_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_47
                        cmp              eax, 99
                                                                                        je    .Lx330_47
                        cmp              eax, 13
                                                                                        jne   .Lx330_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_47
                                                                                        jmp   .Lx330_48
.Lx330_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx330_49
                        cmp              edx, 14
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_52
.Lx330_49:
                        cmp              edx, 14
                                                                                        je    .Lx330_52
                        cmp              ecx, 7
                                                                                        je    .Lx330_53
                        cmp              edx, 7
                                                                                        je    .Lx330_53
                        cmp              ecx, 6
                                                                                        jne   .Lx330_50
                        cmp              edx, 6
                                                                                        jne   .Lx330_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx330_51
                                                                                        jmp   .Lx330_52
.Lx330_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
.Lx330_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx330_54
.Lx330_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx330_54
.Lx330_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx330_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n292_var_ref_α
n291_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n294_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
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
.Lx335_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx335_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        cmp              esi, 1
                                                                                        jne   .Lx335_55
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_55:
                        cmp              esi, 2
                                                                                        jne   .Lx335_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_56:
                        cmp              eax, 13
                                                                                        jne   .Lx335_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        cmp              rax, r8
                                                                                        je    .Lx335_41
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_41:
                        lea              r9, [rbp + 848]
.Lx335_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx335_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        cmp              esi, 1
                                                                                        jne   .Lx335_57
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_57:
                        cmp              esi, 2
                                                                                        jne   .Lx335_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_58:
                        cmp              eax, 13
                                                                                        jne   .Lx335_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        cmp              rax, r9
                                                                                        je    .Lx335_43
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_43:
                        cmp              r8, r9
                                                                                        je    .Lx335_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_44
                        cmp              eax, 99
                                                                                        je    .Lx335_44
                        cmp              eax, 13
                                                                                        jne   .Lx335_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx335_44
                                                                                        jmp   .Lx335_45
.Lx335_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_53
                        cmp              eax, 99
                                                                                        je    .Lx335_53
                        cmp              eax, 13
                                                                                        jne   .Lx335_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx335_53
                                                                                        jmp   .Lx335_46
.Lx335_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx335_53
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
                                                                                        jmp   .Lx335_51
.Lx335_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_47
                        cmp              eax, 99
                                                                                        je    .Lx335_47
                        cmp              eax, 13
                                                                                        jne   .Lx335_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx335_47
                                                                                        jmp   .Lx335_48
.Lx335_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx335_53
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
                                                                                        jmp   .Lx335_51
.Lx335_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx335_49
                        cmp              edx, 14
                                                                                        je    .Lx335_53
                                                                                        jmp   .Lx335_52
.Lx335_49:
                        cmp              edx, 14
                                                                                        je    .Lx335_52
                        cmp              ecx, 7
                                                                                        je    .Lx335_53
                        cmp              edx, 7
                                                                                        je    .Lx335_53
                        cmp              ecx, 6
                                                                                        jne   .Lx335_50
                        cmp              edx, 6
                                                                                        jne   .Lx335_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx335_51
                                                                                        jmp   .Lx335_52
.Lx335_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx335_53
.Lx335_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx335_54
.Lx335_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx335_54
.Lx335_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx335_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n295_var_ref_α
n294_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n297_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx340_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx340_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        cmp              esi, 1
                                                                                        jne   .Lx340_55
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_55:
                        cmp              esi, 2
                                                                                        jne   .Lx340_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_56:
                        cmp              eax, 13
                                                                                        jne   .Lx340_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_41
                        cmp              rax, r8
                                                                                        je    .Lx340_41
                        mov              r8, rax
                                                                                        jmp   .Lx340_40
.Lx340_41:
                        lea              r9, [rbp + 768]
.Lx340_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx340_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        cmp              esi, 1
                                                                                        jne   .Lx340_57
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_57:
                        cmp              esi, 2
                                                                                        jne   .Lx340_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_58:
                        cmp              eax, 13
                                                                                        jne   .Lx340_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx340_43
                        cmp              rax, r9
                                                                                        je    .Lx340_43
                        mov              r9, rax
                                                                                        jmp   .Lx340_42
.Lx340_43:
                        cmp              r8, r9
                                                                                        je    .Lx340_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_44
                        cmp              eax, 99
                                                                                        je    .Lx340_44
                        cmp              eax, 13
                                                                                        jne   .Lx340_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx340_44
                                                                                        jmp   .Lx340_45
.Lx340_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_53
                        cmp              eax, 99
                                                                                        je    .Lx340_53
                        cmp              eax, 13
                                                                                        jne   .Lx340_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx340_53
                                                                                        jmp   .Lx340_46
.Lx340_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx340_53
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
                                                                                        jmp   .Lx340_51
.Lx340_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx340_47
                        cmp              eax, 99
                                                                                        je    .Lx340_47
                        cmp              eax, 13
                                                                                        jne   .Lx340_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx340_47
                                                                                        jmp   .Lx340_48
.Lx340_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx340_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx340_53
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
                                                                                        jmp   .Lx340_51
.Lx340_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx340_49
                        cmp              edx, 14
                                                                                        je    .Lx340_53
                                                                                        jmp   .Lx340_52
.Lx340_49:
                        cmp              edx, 14
                                                                                        je    .Lx340_52
                        cmp              ecx, 7
                                                                                        je    .Lx340_53
                        cmp              edx, 7
                                                                                        je    .Lx340_53
                        cmp              ecx, 6
                                                                                        jne   .Lx340_50
                        cmp              edx, 6
                                                                                        jne   .Lx340_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx340_51
                                                                                        jmp   .Lx340_52
.Lx340_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx340_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx340_53
.Lx340_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx340_54
.Lx340_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx340_54
.Lx340_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx340_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n298_var_ref_α
n297_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n302_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx350_21
.Lx350_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx350_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx350_23
.Lx350_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx350_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_24
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx350_25
.Lx350_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        call             rt_arg_stage@PLT
.Lx350_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_26
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx350_27
.Lx350_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx350_27:
                        mov              edi, 9
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx350_1
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx350_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx350_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_1:
                        call             rt_faildescr@PLT
.Lx350_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n304_call_proc_staged_α
                                                                                        jmp   n303_var_ref_α
n302_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "my_context/4"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx354_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx354_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx354_3]
                        lea              rdx, [rip + .Lx354_4]
                                                                                        jmp   rax
.Lx354_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_1:
                        call             rt_faildescr@PLT
.Lx354_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n306_lit_string_α
n304_call_proc_staged_β:
                                                                                        jmp   n289_op11_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "otherwise/0"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n307_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n308_op11_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "no_context"
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx358_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx358_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        cmp              esi, 1
                                                                                        jne   .Lx358_55
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_55:
                        cmp              esi, 2
                                                                                        jne   .Lx358_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_56:
                        cmp              eax, 13
                                                                                        jne   .Lx358_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        cmp              rax, r8
                                                                                        je    .Lx358_41
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_41:
                        lea              r9, [rbp + 432]
.Lx358_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx358_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        cmp              esi, 1
                                                                                        jne   .Lx358_57
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_57:
                        cmp              esi, 2
                                                                                        jne   .Lx358_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_58:
                        cmp              eax, 13
                                                                                        jne   .Lx358_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        cmp              rax, r9
                                                                                        je    .Lx358_43
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_43:
                        cmp              r8, r9
                                                                                        je    .Lx358_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_44
                        cmp              eax, 99
                                                                                        je    .Lx358_44
                        cmp              eax, 13
                                                                                        jne   .Lx358_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx358_44
                                                                                        jmp   .Lx358_45
.Lx358_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_53
                        cmp              eax, 99
                                                                                        je    .Lx358_53
                        cmp              eax, 13
                                                                                        jne   .Lx358_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx358_53
                                                                                        jmp   .Lx358_46
.Lx358_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx358_53
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
                                                                                        jmp   .Lx358_51
.Lx358_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_47
                        cmp              eax, 99
                                                                                        je    .Lx358_47
                        cmp              eax, 13
                                                                                        jne   .Lx358_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx358_47
                                                                                        jmp   .Lx358_48
.Lx358_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx358_53
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
                                                                                        jmp   .Lx358_51
.Lx358_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx358_49
                        cmp              edx, 14
                                                                                        je    .Lx358_53
                                                                                        jmp   .Lx358_52
.Lx358_49:
                        cmp              edx, 14
                                                                                        je    .Lx358_52
                        cmp              ecx, 7
                                                                                        je    .Lx358_53
                        cmp              edx, 7
                                                                                        je    .Lx358_53
                        cmp              ecx, 6
                                                                                        jne   .Lx358_50
                        cmp              edx, 6
                                                                                        jne   .Lx358_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx358_51
                                                                                        jmp   .Lx358_52
.Lx358_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx358_53
.Lx358_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx358_54
.Lx358_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx358_54
.Lx358_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx358_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n309_var_ref_α
n307_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n308_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn360:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n310_suspend_α
n308_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_suspend_α:
                        lea              rax, [rip + n310_suspend_β]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_get_my_context$2F4_γ
n310_suspend_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n312_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
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
.Lx367_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              esi, 1
                                                                                        jne   .Lx367_55
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_55:
                        cmp              esi, 2
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_56:
                        cmp              eax, 13
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              rax, r8
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_41:
                        lea              r9, [rbp + 352]
.Lx367_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              esi, 1
                                                                                        jne   .Lx367_57
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_57:
                        cmp              esi, 2
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_58:
                        cmp              eax, 13
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              rax, r9
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_43:
                        cmp              r8, r9
                                                                                        je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_44
                        cmp              eax, 99
                                                                                        je    .Lx367_44
                        cmp              eax, 13
                                                                                        jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx367_44
                                                                                        jmp   .Lx367_45
.Lx367_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_53
                        cmp              eax, 99
                                                                                        je    .Lx367_53
                        cmp              eax, 13
                                                                                        jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_46
.Lx367_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_47
                        cmp              eax, 99
                                                                                        je    .Lx367_47
                        cmp              eax, 13
                                                                                        jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_47
                                                                                        jmp   .Lx367_48
.Lx367_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx367_49
                        cmp              edx, 14
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_52
.Lx367_49:
                        cmp              edx, 14
                                                                                        je    .Lx367_52
                        cmp              ecx, 7
                                                                                        je    .Lx367_53
                        cmp              edx, 7
                                                                                        je    .Lx367_53
                        cmp              ecx, 6
                                                                                        jne   .Lx367_50
                        cmp              edx, 6
                                                                                        jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx367_51
                                                                                        jmp   .Lx367_52
.Lx367_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
.Lx367_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx367_54
.Lx367_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx367_54
.Lx367_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx367_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n313_var_ref_α
n312_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx372_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx372_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        cmp              esi, 1
                                                                                        jne   .Lx372_55
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_55:
                        cmp              esi, 2
                                                                                        jne   .Lx372_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_56:
                        cmp              eax, 13
                                                                                        jne   .Lx372_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        cmp              rax, r8
                                                                                        je    .Lx372_41
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_41:
                        lea              r9, [rbp + 272]
.Lx372_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx372_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        cmp              esi, 1
                                                                                        jne   .Lx372_57
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_57:
                        cmp              esi, 2
                                                                                        jne   .Lx372_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_58:
                        cmp              eax, 13
                                                                                        jne   .Lx372_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        cmp              rax, r9
                                                                                        je    .Lx372_43
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_43:
                        cmp              r8, r9
                                                                                        je    .Lx372_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_44
                        cmp              eax, 99
                                                                                        je    .Lx372_44
                        cmp              eax, 13
                                                                                        jne   .Lx372_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx372_44
                                                                                        jmp   .Lx372_45
.Lx372_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_53
                        cmp              eax, 99
                                                                                        je    .Lx372_53
                        cmp              eax, 13
                                                                                        jne   .Lx372_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_53
                                                                                        jmp   .Lx372_46
.Lx372_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx372_53
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
                                                                                        jmp   .Lx372_51
.Lx372_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_47
                        cmp              eax, 99
                                                                                        je    .Lx372_47
                        cmp              eax, 13
                                                                                        jne   .Lx372_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_47
                                                                                        jmp   .Lx372_48
.Lx372_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx372_53
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
                                                                                        jmp   .Lx372_51
.Lx372_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx372_49
                        cmp              edx, 14
                                                                                        je    .Lx372_53
                                                                                        jmp   .Lx372_52
.Lx372_49:
                        cmp              edx, 14
                                                                                        je    .Lx372_52
                        cmp              ecx, 7
                                                                                        je    .Lx372_53
                        cmp              edx, 7
                                                                                        je    .Lx372_53
                        cmp              ecx, 6
                                                                                        jne   .Lx372_50
                        cmp              edx, 6
                                                                                        jne   .Lx372_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx372_51
                                                                                        jmp   .Lx372_52
.Lx372_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx372_53
.Lx372_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx372_54
.Lx372_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx372_54
.Lx372_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx372_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n316_var_ref_α
n315_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n318_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n318_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx377_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              esi, 1
                                                                                        jne   .Lx377_55
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_55:
                        cmp              esi, 2
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_56:
                        cmp              eax, 13
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              rax, r8
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_41:
                        lea              r9, [rbp + 192]
.Lx377_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              esi, 1
                                                                                        jne   .Lx377_57
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_57:
                        cmp              esi, 2
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_58:
                        cmp              eax, 13
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              rax, r9
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_43:
                        cmp              r8, r9
                                                                                        je    .Lx377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_44
                        cmp              eax, 99
                                                                                        je    .Lx377_44
                        cmp              eax, 13
                                                                                        jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx377_44
                                                                                        jmp   .Lx377_45
.Lx377_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_53
                        cmp              eax, 99
                                                                                        je    .Lx377_53
                        cmp              eax, 13
                                                                                        jne   .Lx377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_46
.Lx377_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_47
                        cmp              eax, 99
                                                                                        je    .Lx377_47
                        cmp              eax, 13
                                                                                        jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_47
                                                                                        jmp   .Lx377_48
.Lx377_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx377_49
                        cmp              edx, 14
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_52
.Lx377_49:
                        cmp              edx, 14
                                                                                        je    .Lx377_52
                        cmp              ecx, 7
                                                                                        je    .Lx377_53
                        cmp              edx, 7
                                                                                        je    .Lx377_53
                        cmp              ecx, 6
                                                                                        jne   .Lx377_50
                        cmp              edx, 6
                                                                                        jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx377_51
                                                                                        jmp   .Lx377_52
.Lx377_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
.Lx377_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx377_54
.Lx377_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx377_54
.Lx377_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx377_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n310_suspend_α
n318_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_get_my_context$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_get_my_context$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1056]
#-----------------------------------------------------------------------------------------------------------------------
proc_get_my_context$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_get_my_context$2F4_res]
                        push             rax
                        mov              rax, [rbp + 1208]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_get_my_context$2F4_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_my_context$2F4_α
proc_my_context$2F4_α:
                        .global          proc_my_context$2F4_α
                        .global          proc_my_context$2F4_β
                        .global          proc_my_context$2F4_γ
                        .global          proc_my_context$2F4_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_my_context$2F4_α_body:
                        lea              rax, [rip + n384_suspend_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n379_var_ref_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "my_context"
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n380_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n381_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n382_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n383_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                        mov              qword ptr [rbp + 176], 0
.Lx394_60:
                        .section         .rodata
.Lbynamegenfn160:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn160]
                        lea              rsi, [rbp + 96]
                        mov              edx, 5
                        lea              rcx, [rbp + 176]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_my_context$2F4_ω
                                                                                        jmp   n384_suspend_α
n383_call_builtin_gen_β:
                                                                                        jmp   .Lx394_60
#-----------------------------------------------------------------------------------------------------------------------
n384_suspend_α:
                        lea              rax, [rip + n384_suspend_β]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_my_context$2F4_γ
n384_suspend_β:
                                                                                        jmp   n383_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_my_context$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_my_context$2F4_β:
                                                                                        jmp   qword ptr [rbp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_my_context$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_my_context$2F4_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_my_context$2F4_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "loop/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_loop$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1568
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test_gc_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test_gc_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_test1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "foo/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_foo$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "test2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_test2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "get_my_context/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_get_my_context$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "my_context/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_my_context$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
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
                        sub              rsp, 184
                        mov              rdi, rsp
                        mov              ecx, 184
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n398_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n399_lit_integer_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "my_context"
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n400_op11_α
.Lx404_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n401_call_proc_staged_α
n400_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_20
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx407_21
.Lx407_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_arg_stage@PLT
.Lx407_21:
                        mov              rdi, qword ptr [rip + .Lx407_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx407_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_1:
                        call             rt_faildescr@PLT
.Lx407_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n401_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 184
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 184
                        ret
                        .section         .note.GNU-stack,"",@progbits
