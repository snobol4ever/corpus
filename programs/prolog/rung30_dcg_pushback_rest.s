                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_digits$2F3_α
proc_digits$2F3_α:
                        .global          proc_digits$2F3_α
                        .global          proc_digits$2F3_β
                        .global          proc_digits$2F3_γ
                        .global          proc_digits$2F3_ω
                        sub              rsp, 1472
                        mov              [rsp + 1448], rcx
                        mov              [rsp + 1456], rdx
                        mov              [rsp + 1464], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1440
                        call             rt_jmp_frame_lexprep2@PLT
proc_digits$2F3_α_body:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
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
                                                                                        je    proc_digits$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n3_lit_string_α
.Lx48_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n4_op11_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n9_var_ref_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n10_lit_string_α
.Lx56_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n12_op11_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx62_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx62_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        cmp              esi, 1
                                                                                        jne   .Lx62_112
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_112:
                        cmp              esi, 2
                                                                                        jne   .Lx62_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_113:
                        cmp              eax, 13
                                                                                        jne   .Lx62_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        cmp              rax, r8
                                                                                        je    .Lx62_111
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_114
                        cmp              eax, 99
                                                                                        je    .Lx62_114
                        cmp              eax, 13
                                                                                        jne   .Lx62_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx62_114
                                                                                        jmp   .Lx62_118
.Lx62_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx62_115
                        cmp              eax, 6
                                                                                        je    .Lx62_114
                        cmp              eax, 1
                                                                                        jne   .Lx62_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx62_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx62_114
                                                                                        jmp   .Lx62_116
.Lx62_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx62_117
.Lx62_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx62_117
.Lx62_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx62_117:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n14_var_ref_α
n12_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n16_op11_α
n13_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
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
                                                                                        je    proc_digits$2F3_ω
                                                                                        jmp   proc_digits$2F3_ω
n15_op11_β:
                                                                                        jmp   proc_digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx67_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx67_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx67_41
                        cmp              esi, 1
                                                                                        jne   .Lx67_55
                        mov              r8, rax
                                                                                        jmp   .Lx67_40
.Lx67_55:
                        cmp              esi, 2
                                                                                        jne   .Lx67_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx67_41
                        mov              r8, rax
                                                                                        jmp   .Lx67_40
.Lx67_56:
                        cmp              eax, 13
                                                                                        jne   .Lx67_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx67_41
                        cmp              rax, r8
                                                                                        je    .Lx67_41
                        mov              r8, rax
                                                                                        jmp   .Lx67_40
.Lx67_41:
                        lea              r9, [rbp + 1072]
.Lx67_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx67_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx67_43
                        cmp              esi, 1
                                                                                        jne   .Lx67_57
                        mov              r9, rax
                                                                                        jmp   .Lx67_42
.Lx67_57:
                        cmp              esi, 2
                                                                                        jne   .Lx67_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx67_43
                        mov              r9, rax
                                                                                        jmp   .Lx67_42
.Lx67_58:
                        cmp              eax, 13
                                                                                        jne   .Lx67_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx67_43
                        cmp              rax, r9
                                                                                        je    .Lx67_43
                        mov              r9, rax
                                                                                        jmp   .Lx67_42
.Lx67_43:
                        cmp              r8, r9
                                                                                        je    .Lx67_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx67_44
                        cmp              eax, 99
                                                                                        je    .Lx67_44
                        cmp              eax, 13
                                                                                        jne   .Lx67_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx67_44
                                                                                        jmp   .Lx67_45
.Lx67_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx67_53
                        cmp              eax, 99
                                                                                        je    .Lx67_53
                        cmp              eax, 13
                                                                                        jne   .Lx67_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx67_53
                                                                                        jmp   .Lx67_46
.Lx67_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx67_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx67_53
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
                                                                                        jmp   .Lx67_51
.Lx67_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx67_47
                        cmp              eax, 99
                                                                                        je    .Lx67_47
                        cmp              eax, 13
                                                                                        jne   .Lx67_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx67_47
                                                                                        jmp   .Lx67_48
.Lx67_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx67_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx67_53
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
                                                                                        jmp   .Lx67_51
.Lx67_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx67_49
                        cmp              edx, 14
                                                                                        je    .Lx67_53
                                                                                        jmp   .Lx67_52
.Lx67_49:
                        cmp              edx, 14
                                                                                        je    .Lx67_52
                        cmp              ecx, 7
                                                                                        je    .Lx67_53
                        cmp              edx, 7
                                                                                        je    .Lx67_53
                        cmp              ecx, 6
                                                                                        jne   .Lx67_50
                        cmp              edx, 6
                                                                                        jne   .Lx67_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx67_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx67_51
                                                                                        jmp   .Lx67_52
.Lx67_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx67_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx67_53
.Lx67_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx67_54
.Lx67_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx67_54
.Lx67_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx67_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n19_var_ref_α
n16_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_digits$2F3_ω
                                                                                        jmp   n6_var_ref_α
n17_op11_β:
                                                                                        jmp   proc_digits$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n20_op11_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              rsi, qword ptr [rip + .Lx72_2]
                                                                                        jmp   .Lx72_3
.Lx72_2:
                        .quad            .Lx72_2_s
.Lx72_2_s:
                        .string          "[]"
.Lx72_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n22_var_ref_α
n20_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
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
.Lx77_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              esi, 1
                                                                                        jne   .Lx77_55
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_55:
                        cmp              esi, 2
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_56:
                        cmp              eax, 13
                                                                                        jne   .Lx77_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_41
                        cmp              rax, r8
                                                                                        je    .Lx77_41
                        mov              r8, rax
                                                                                        jmp   .Lx77_40
.Lx77_41:
                        lea              r9, [rbp + 992]
.Lx77_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx77_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              esi, 1
                                                                                        jne   .Lx77_57
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_57:
                        cmp              esi, 2
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_58:
                        cmp              eax, 13
                                                                                        jne   .Lx77_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx77_43
                        cmp              rax, r9
                                                                                        je    .Lx77_43
                        mov              r9, rax
                                                                                        jmp   .Lx77_42
.Lx77_43:
                        cmp              r8, r9
                                                                                        je    .Lx77_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_44
                        cmp              eax, 99
                                                                                        je    .Lx77_44
                        cmp              eax, 13
                                                                                        jne   .Lx77_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx77_44
                                                                                        jmp   .Lx77_45
.Lx77_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_53
                        cmp              eax, 99
                                                                                        je    .Lx77_53
                        cmp              eax, 13
                                                                                        jne   .Lx77_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_46
.Lx77_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx77_47
                        cmp              eax, 99
                                                                                        je    .Lx77_47
                        cmp              eax, 13
                                                                                        jne   .Lx77_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx77_47
                                                                                        jmp   .Lx77_48
.Lx77_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx77_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx77_53
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
                                                                                        jmp   .Lx77_51
.Lx77_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx77_49
                        cmp              edx, 14
                                                                                        je    .Lx77_53
                                                                                        jmp   .Lx77_52
.Lx77_49:
                        cmp              edx, 14
                                                                                        je    .Lx77_52
                        cmp              ecx, 7
                                                                                        je    .Lx77_53
                        cmp              edx, 7
                                                                                        je    .Lx77_53
                        cmp              ecx, 6
                                                                                        jne   .Lx77_50
                        cmp              edx, 6
                                                                                        jne   .Lx77_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx77_51
                                                                                        jmp   .Lx77_52
.Lx77_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx77_53
.Lx77_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx77_54
.Lx77_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx77_54
.Lx77_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx77_54:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n25_var_ref_α
n23_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
.Lx82_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_41
                        cmp              esi, 1
                                                                                        jne   .Lx82_55
                        mov              r8, rax
                                                                                        jmp   .Lx82_40
.Lx82_55:
                        cmp              esi, 2
                                                                                        jne   .Lx82_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_41
                        mov              r8, rax
                                                                                        jmp   .Lx82_40
.Lx82_56:
                        cmp              eax, 13
                                                                                        jne   .Lx82_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_41
                        cmp              rax, r8
                                                                                        je    .Lx82_41
                        mov              r8, rax
                                                                                        jmp   .Lx82_40
.Lx82_41:
                        lea              r9, [rbp + 336]
.Lx82_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_43
                        cmp              esi, 1
                                                                                        jne   .Lx82_57
                        mov              r9, rax
                                                                                        jmp   .Lx82_42
.Lx82_57:
                        cmp              esi, 2
                                                                                        jne   .Lx82_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_43
                        mov              r9, rax
                                                                                        jmp   .Lx82_42
.Lx82_58:
                        cmp              eax, 13
                                                                                        jne   .Lx82_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_43
                        cmp              rax, r9
                                                                                        je    .Lx82_43
                        mov              r9, rax
                                                                                        jmp   .Lx82_42
.Lx82_43:
                        cmp              r8, r9
                                                                                        je    .Lx82_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_44
                        cmp              eax, 99
                                                                                        je    .Lx82_44
                        cmp              eax, 13
                                                                                        jne   .Lx82_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx82_44
                                                                                        jmp   .Lx82_45
.Lx82_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_53
                        cmp              eax, 99
                                                                                        je    .Lx82_53
                        cmp              eax, 13
                                                                                        jne   .Lx82_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx82_53
                                                                                        jmp   .Lx82_46
.Lx82_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx82_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx82_53
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
                                                                                        jmp   .Lx82_51
.Lx82_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_47
                        cmp              eax, 99
                                                                                        je    .Lx82_47
                        cmp              eax, 13
                                                                                        jne   .Lx82_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx82_47
                                                                                        jmp   .Lx82_48
.Lx82_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx82_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx82_53
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
                                                                                        jmp   .Lx82_51
.Lx82_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx82_49
                        cmp              edx, 14
                                                                                        je    .Lx82_53
                                                                                        jmp   .Lx82_52
.Lx82_49:
                        cmp              edx, 14
                                                                                        je    .Lx82_52
                        cmp              ecx, 7
                                                                                        je    .Lx82_53
                        cmp              edx, 7
                                                                                        je    .Lx82_53
                        cmp              ecx, 6
                                                                                        jne   .Lx82_50
                        cmp              edx, 6
                                                                                        jne   .Lx82_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx82_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx82_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx82_51
                                                                                        jmp   .Lx82_52
.Lx82_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx82_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx82_53
.Lx82_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx82_54
.Lx82_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx82_54
.Lx82_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx82_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n28_var_ref_α
n26_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
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
                        lea              r9, [rbp + 912]
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
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n31_var_ref_α
n29_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
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
.Lx92_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              esi, 1
                                                                                        jne   .Lx92_55
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_55:
                        cmp              esi, 2
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_56:
                        cmp              eax, 13
                                                                                        jne   .Lx92_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_41
                        cmp              rax, r8
                                                                                        je    .Lx92_41
                        mov              r8, rax
                                                                                        jmp   .Lx92_40
.Lx92_41:
                        lea              r9, [rbp + 256]
.Lx92_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx92_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              esi, 1
                                                                                        jne   .Lx92_57
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_57:
                        cmp              esi, 2
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_58:
                        cmp              eax, 13
                                                                                        jne   .Lx92_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx92_43
                        cmp              rax, r9
                                                                                        je    .Lx92_43
                        mov              r9, rax
                                                                                        jmp   .Lx92_42
.Lx92_43:
                        cmp              r8, r9
                                                                                        je    .Lx92_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_44
                        cmp              eax, 99
                                                                                        je    .Lx92_44
                        cmp              eax, 13
                                                                                        jne   .Lx92_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx92_44
                                                                                        jmp   .Lx92_45
.Lx92_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_53
                        cmp              eax, 99
                                                                                        je    .Lx92_53
                        cmp              eax, 13
                                                                                        jne   .Lx92_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_46
.Lx92_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx92_47
                        cmp              eax, 99
                                                                                        je    .Lx92_47
                        cmp              eax, 13
                                                                                        jne   .Lx92_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx92_47
                                                                                        jmp   .Lx92_48
.Lx92_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx92_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx92_53
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
                                                                                        jmp   .Lx92_51
.Lx92_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx92_49
                        cmp              edx, 14
                                                                                        je    .Lx92_53
                                                                                        jmp   .Lx92_52
.Lx92_49:
                        cmp              edx, 14
                                                                                        je    .Lx92_52
                        cmp              ecx, 7
                                                                                        je    .Lx92_53
                        cmp              edx, 7
                                                                                        je    .Lx92_53
                        cmp              ecx, 6
                                                                                        jne   .Lx92_50
                        cmp              edx, 6
                                                                                        jne   .Lx92_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx92_51
                                                                                        jmp   .Lx92_52
.Lx92_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx92_53
.Lx92_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx92_54
.Lx92_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx92_54
.Lx92_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx92_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n34_var_ref_α
n32_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 848]
                        lea              rcx, [rbp + 864]
                        call             proc_digit$2F3_dcα
                                                                                        jmp   .Lx102_2
.Lx102_2:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n39_var_ref_α
n37_call_proc_staged_β:
                                                                                        jmp   n17_op11_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "digit/3"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
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
                        lea              r9, [rbp + 176]
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n40_suspend_α
n38_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_suspend_α:
                        lea              rax, [rip + n40_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digits$2F3_γ
n40_suspend_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        mov              qword ptr [rbp + 672], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_20
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx113_21
.Lx113_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        call             rt_arg_stage@PLT
.Lx113_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_22
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx113_23
.Lx113_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx113_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_24
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx113_25
.Lx113_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx113_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx113_1
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4]
                                                                                        jmp   rax
.Lx113_3:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx113_5
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_4:
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx113_6
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_1:
                        call             rt_faildescr@PLT
.Lx113_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_proc_staged_β
                                                                                        jmp   n44_suspend_α
n43_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 680]
                                                                                        jmp   qword ptr [rsp]
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "digits/3"
#-----------------------------------------------------------------------------------------------------------------------
n44_suspend_α:
                        lea              rax, [rip + n44_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_digits$2F3_γ
n44_suspend_β:
                                                                                        jmp   n43_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_digits$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_digits$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1344]
#-----------------------------------------------------------------------------------------------------------------------
proc_digits$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_digits$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1448]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_digits$2F3_ω:
                        mov              rax, [rbp + 1456]
                        lea              rsp, [rbp + 1472]
                        mov              rbp, [rbp + 1464]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_digit$2F3_α
proc_digit$2F3_α:
                        .global          proc_digit$2F3_α
                        .global          proc_digit$2F3_β
                        .global          proc_digit$2F3_γ
                        .global          proc_digit$2F3_ω
                        sub              rsp, 928
                        mov              [rsp + 904], rcx
                        mov              [rsp + 912], rdx
                        mov              [rsp + 920], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 896
                        call             rt_jmp_frame_lexprep2@PLT
proc_digit$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx144_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx144_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx144_101
.Lx144_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx144_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_digit$2F3_ω
                                                                                        jmp   n117_var_ref_α
n116_op11_β:
                                                                                        jmp   proc_digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n119_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        lea              r8, [rbp + 768]
.Lx149_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx149_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        cmp              esi, 1
                                                                                        jne   .Lx149_55
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_55:
                        cmp              esi, 2
                                                                                        jne   .Lx149_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_56:
                        cmp              eax, 13
                                                                                        jne   .Lx149_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_41
                        cmp              rax, r8
                                                                                        je    .Lx149_41
                        mov              r8, rax
                                                                                        jmp   .Lx149_40
.Lx149_41:
                        lea              r9, [rbp + 784]
.Lx149_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx149_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        cmp              esi, 1
                                                                                        jne   .Lx149_57
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_57:
                        cmp              esi, 2
                                                                                        jne   .Lx149_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_58:
                        cmp              eax, 13
                                                                                        jne   .Lx149_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx149_43
                        cmp              rax, r9
                                                                                        je    .Lx149_43
                        mov              r9, rax
                                                                                        jmp   .Lx149_42
.Lx149_43:
                        cmp              r8, r9
                                                                                        je    .Lx149_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_44
                        cmp              eax, 99
                                                                                        je    .Lx149_44
                        cmp              eax, 13
                                                                                        jne   .Lx149_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx149_44
                                                                                        jmp   .Lx149_45
.Lx149_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_53
                        cmp              eax, 99
                                                                                        je    .Lx149_53
                        cmp              eax, 13
                                                                                        jne   .Lx149_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx149_53
                                                                                        jmp   .Lx149_46
.Lx149_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx149_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx149_53
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
                                                                                        jmp   .Lx149_51
.Lx149_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx149_47
                        cmp              eax, 99
                                                                                        je    .Lx149_47
                        cmp              eax, 13
                                                                                        jne   .Lx149_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx149_47
                                                                                        jmp   .Lx149_48
.Lx149_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx149_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx149_53
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
                                                                                        jmp   .Lx149_51
.Lx149_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx149_49
                        cmp              edx, 14
                                                                                        je    .Lx149_53
                                                                                        jmp   .Lx149_52
.Lx149_49:
                        cmp              edx, 14
                                                                                        je    .Lx149_52
                        cmp              ecx, 7
                                                                                        je    .Lx149_53
                        cmp              edx, 7
                                                                                        je    .Lx149_53
                        cmp              ecx, 6
                                                                                        jne   .Lx149_50
                        cmp              edx, 6
                                                                                        jne   .Lx149_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx149_51
                                                                                        jmp   .Lx149_52
.Lx149_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx149_53
.Lx149_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx149_54
.Lx149_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx149_54
.Lx149_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx149_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n120_var_ref_α
n119_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
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
                                                                                        je    proc_digit$2F3_ω
                                                                                        jmp   proc_digit$2F3_ω
n121_op11_β:
                                                                                        jmp   proc_digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n123_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx155_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx155_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        cmp              esi, 1
                                                                                        jne   .Lx155_55
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_55:
                        cmp              esi, 2
                                                                                        jne   .Lx155_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_56:
                        cmp              eax, 13
                                                                                        jne   .Lx155_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        cmp              rax, r8
                                                                                        je    .Lx155_41
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_41:
                        lea              r9, [rbp + 704]
.Lx155_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx155_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        cmp              esi, 1
                                                                                        jne   .Lx155_57
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_57:
                        cmp              esi, 2
                                                                                        jne   .Lx155_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_58:
                        cmp              eax, 13
                                                                                        jne   .Lx155_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        cmp              rax, r9
                                                                                        je    .Lx155_43
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_43:
                        cmp              r8, r9
                                                                                        je    .Lx155_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_44
                        cmp              eax, 99
                                                                                        je    .Lx155_44
                        cmp              eax, 13
                                                                                        jne   .Lx155_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx155_44
                                                                                        jmp   .Lx155_45
.Lx155_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_53
                        cmp              eax, 99
                                                                                        je    .Lx155_53
                        cmp              eax, 13
                                                                                        jne   .Lx155_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx155_53
                                                                                        jmp   .Lx155_46
.Lx155_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx155_53
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
                                                                                        jmp   .Lx155_51
.Lx155_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_47
                        cmp              eax, 99
                                                                                        je    .Lx155_47
                        cmp              eax, 13
                                                                                        jne   .Lx155_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx155_47
                                                                                        jmp   .Lx155_48
.Lx155_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx155_53
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
                                                                                        jmp   .Lx155_51
.Lx155_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx155_49
                        cmp              edx, 14
                                                                                        je    .Lx155_53
                                                                                        jmp   .Lx155_52
.Lx155_49:
                        cmp              edx, 14
                                                                                        je    .Lx155_52
                        cmp              ecx, 7
                                                                                        je    .Lx155_53
                        cmp              edx, 7
                                                                                        je    .Lx155_53
                        cmp              ecx, 6
                                                                                        jne   .Lx155_50
                        cmp              edx, 6
                                                                                        jne   .Lx155_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx155_51
                                                                                        jmp   .Lx155_52
.Lx155_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx155_53
.Lx155_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx155_54
.Lx155_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx155_54
.Lx155_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx155_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n124_var_ref_α
n123_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n126_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
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
.Lx160_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx160_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        cmp              esi, 1
                                                                                        jne   .Lx160_55
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_55:
                        cmp              esi, 2
                                                                                        jne   .Lx160_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_56:
                        cmp              eax, 13
                                                                                        jne   .Lx160_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_41
                        cmp              rax, r8
                                                                                        je    .Lx160_41
                        mov              r8, rax
                                                                                        jmp   .Lx160_40
.Lx160_41:
                        lea              r9, [rbp + 624]
.Lx160_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx160_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        cmp              esi, 1
                                                                                        jne   .Lx160_57
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_57:
                        cmp              esi, 2
                                                                                        jne   .Lx160_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_58:
                        cmp              eax, 13
                                                                                        jne   .Lx160_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx160_43
                        cmp              rax, r9
                                                                                        je    .Lx160_43
                        mov              r9, rax
                                                                                        jmp   .Lx160_42
.Lx160_43:
                        cmp              r8, r9
                                                                                        je    .Lx160_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_44
                        cmp              eax, 99
                                                                                        je    .Lx160_44
                        cmp              eax, 13
                                                                                        jne   .Lx160_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx160_44
                                                                                        jmp   .Lx160_45
.Lx160_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_53
                        cmp              eax, 99
                                                                                        je    .Lx160_53
                        cmp              eax, 13
                                                                                        jne   .Lx160_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx160_53
                                                                                        jmp   .Lx160_46
.Lx160_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx160_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx160_53
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
                                                                                        jmp   .Lx160_51
.Lx160_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx160_47
                        cmp              eax, 99
                                                                                        je    .Lx160_47
                        cmp              eax, 13
                                                                                        jne   .Lx160_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx160_47
                                                                                        jmp   .Lx160_48
.Lx160_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx160_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx160_53
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
                                                                                        jmp   .Lx160_51
.Lx160_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx160_49
                        cmp              edx, 14
                                                                                        je    .Lx160_53
                                                                                        jmp   .Lx160_52
.Lx160_49:
                        cmp              edx, 14
                                                                                        je    .Lx160_52
                        cmp              ecx, 7
                                                                                        je    .Lx160_53
                        cmp              edx, 7
                                                                                        je    .Lx160_53
                        cmp              ecx, 6
                                                                                        jne   .Lx160_50
                        cmp              edx, 6
                                                                                        jne   .Lx160_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx160_51
                                                                                        jmp   .Lx160_52
.Lx160_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx160_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx160_53
.Lx160_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx160_54
.Lx160_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx160_54
.Lx160_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx160_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n127_var_ref_α
n126_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n129_var_ref_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n132_op11_α
n131_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx169_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx169_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        cmp              esi, 1
                                                                                        jne   .Lx169_55
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_55:
                        cmp              esi, 2
                                                                                        jne   .Lx169_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_56:
                        cmp              eax, 13
                                                                                        jne   .Lx169_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_41
                        cmp              rax, r8
                                                                                        je    .Lx169_41
                        mov              r8, rax
                                                                                        jmp   .Lx169_40
.Lx169_41:
                        lea              r9, [rbp + 432]
.Lx169_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx169_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        cmp              esi, 1
                                                                                        jne   .Lx169_57
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_57:
                        cmp              esi, 2
                                                                                        jne   .Lx169_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_58:
                        cmp              eax, 13
                                                                                        jne   .Lx169_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_43
                        cmp              rax, r9
                                                                                        je    .Lx169_43
                        mov              r9, rax
                                                                                        jmp   .Lx169_42
.Lx169_43:
                        cmp              r8, r9
                                                                                        je    .Lx169_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_44
                        cmp              eax, 99
                                                                                        je    .Lx169_44
                        cmp              eax, 13
                                                                                        jne   .Lx169_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx169_44
                                                                                        jmp   .Lx169_45
.Lx169_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_53
                        cmp              eax, 99
                                                                                        je    .Lx169_53
                        cmp              eax, 13
                                                                                        jne   .Lx169_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx169_53
                                                                                        jmp   .Lx169_46
.Lx169_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx169_53
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
                                                                                        jmp   .Lx169_51
.Lx169_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_47
                        cmp              eax, 99
                                                                                        je    .Lx169_47
                        cmp              eax, 13
                                                                                        jne   .Lx169_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx169_47
                                                                                        jmp   .Lx169_48
.Lx169_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx169_53
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
                                                                                        jmp   .Lx169_51
.Lx169_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx169_49
                        cmp              edx, 14
                                                                                        je    .Lx169_53
                                                                                        jmp   .Lx169_52
.Lx169_49:
                        cmp              edx, 14
                                                                                        je    .Lx169_52
                        cmp              ecx, 7
                                                                                        je    .Lx169_53
                        cmp              edx, 7
                                                                                        je    .Lx169_53
                        cmp              ecx, 6
                                                                                        jne   .Lx169_50
                        cmp              edx, 6
                                                                                        jne   .Lx169_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx169_51
                                                                                        jmp   .Lx169_52
.Lx169_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx169_53
.Lx169_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx169_54
.Lx169_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx169_54
.Lx169_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx169_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n133_var_α
n132_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n134_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n135_op11_α
.Lx172_0:
                        .quad            48
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n136_var_α
n135_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n138_op11_α
.Lx176_0:
                        .quad            57
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_le@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n139_var_ref_α
n138_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
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
.Lx182_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              esi, 1
                                                                                        jne   .Lx182_55
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_55:
                        cmp              esi, 2
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_56:
                        cmp              eax, 13
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              rax, r8
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_41:
                        lea              r9, [rbp + 192]
.Lx182_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              esi, 1
                                                                                        jne   .Lx182_57
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_57:
                        cmp              esi, 2
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_58:
                        cmp              eax, 13
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              rax, r9
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_43:
                        cmp              r8, r9
                                                                                        je    .Lx182_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_44
                        cmp              eax, 99
                                                                                        je    .Lx182_44
                        cmp              eax, 13
                                                                                        jne   .Lx182_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx182_44
                                                                                        jmp   .Lx182_45
.Lx182_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_53
                        cmp              eax, 99
                                                                                        je    .Lx182_53
                        cmp              eax, 13
                                                                                        jne   .Lx182_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_46
.Lx182_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_47
                        cmp              eax, 99
                                                                                        je    .Lx182_47
                        cmp              eax, 13
                                                                                        jne   .Lx182_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_47
                                                                                        jmp   .Lx182_48
.Lx182_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx182_49
                        cmp              edx, 14
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_52
.Lx182_49:
                        cmp              edx, 14
                                                                                        je    .Lx182_52
                        cmp              ecx, 7
                                                                                        je    .Lx182_53
                        cmp              edx, 7
                                                                                        je    .Lx182_53
                        cmp              ecx, 6
                                                                                        jne   .Lx182_50
                        cmp              edx, 6
                                                                                        jne   .Lx182_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx182_51
                                                                                        jmp   .Lx182_52
.Lx182_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
.Lx182_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx182_54
.Lx182_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx182_54
.Lx182_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx182_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n142_move_label_α
n141_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_move_label_α:
                        lea              rax, [rip + n121_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_digit$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n143_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n143_disjunction_β:
                                                                                        jmp   proc_digit$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F3_β:
                                                                                        jmp   n143_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 904]
                        lea              rsp, [rbp + 928]
                        mov              rbp, [rbp + 920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F3_ω:
                        mov              rax, [rbp + 912]
                        lea              rsp, [rbp + 928]
                        mov              rbp, [rbp + 920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_digit$2F3_dcα:
                        pop              r11
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 896], r11
                        lea              rax, [rip + .Lx187_2]
                        mov              qword ptr [rbp + 904], rax
                        lea              rax, [rip + .Lx187_3]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 832
                        mov              edx, 896
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_digit$2F3_α_body
.Lx187_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx187_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "digits/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_digits$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "digit/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_digit$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_digit$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        sub              rsp, 600
                        mov              rdi, rsp
                        mov              ecx, 600
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 592], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n188_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx208_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx208_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx208_101
.Lx208_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx208_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n189_lit_string_α
n188_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n190_var_ref_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn213:              .string          "$atom_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n192_var_ref_α
n191_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n194_var_ref_α
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n193_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n196_call_proc_staged_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_proc_staged_α:
                        mov              qword ptr [rbp + 384], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_20
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx221_21
.Lx221_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx221_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_22
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx221_23
.Lx221_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx221_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_24
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx221_25
.Lx221_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx221_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx221_1
                        lea              rcx, [rip + .Lx221_3]
                        lea              rdx, [rip + .Lx221_4]
                                                                                        jmp   rax
.Lx221_3:
                        mov              qword ptr [rbp + 392], rsp
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx221_5
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx221_2
.Lx221_4:
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx221_6
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        call             rt_faildescr@PLT
.Lx221_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n198_lit_string_α
                                                                                        jmp   n197_var_ref_α
n196_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 392]
                                                                                        jmp   qword ptr [rsp]
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "digits/3"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n200_op11_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n200_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn228:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n202_lit_string_α
n200_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn230:              .string          "$atom_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n203_var_α
n201_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n204_op11_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn235:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n206_move_label_α
n204_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn237:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n202_lit_string_α
n205_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n206_move_label_α:
                        lea              rax, [rip + n193_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n207_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n207_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n207_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 592]
                        add              rsp, 600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 592]
                        add              rsp, 600
                        ret
                        .section         .note.GNU-stack,"",@progbits
