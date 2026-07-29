                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 1104
                        mov              [rsp + 1080], rcx
                        mov              [rsp + 1088], rdx
                        mov              [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1072
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx30_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx30_101
.Lx30_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx30_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n3_op11_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx34_2]
                                                                                        jmp   .Lx34_3
.Lx34_2:
                        .quad            .Lx34_2_s
.Lx34_2_s:
                        .string          "memberchk"
.Lx34_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n7_var_ref_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n9_op11_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_op11_α
n9_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx43_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              esi, 1
                                                                                        jne   .Lx43_55
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_55:
                        cmp              esi, 2
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_56:
                        cmp              eax, 13
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              rax, r8
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_41:
                        lea              r9, [rbp + 800]
.Lx43_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              esi, 1
                                                                                        jne   .Lx43_57
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_57:
                        cmp              esi, 2
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_58:
                        cmp              eax, 13
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              rax, r9
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_43:
                        cmp              r8, r9
                                                                                        je    .Lx43_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_44
                        cmp              eax, 99
                                                                                        je    .Lx43_44
                        cmp              eax, 13
                                                                                        jne   .Lx43_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx43_44
                                                                                        jmp   .Lx43_45
.Lx43_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_53
                        cmp              eax, 99
                                                                                        je    .Lx43_53
                        cmp              eax, 13
                                                                                        jne   .Lx43_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_46
.Lx43_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_47
                        cmp              eax, 99
                                                                                        je    .Lx43_47
                        cmp              eax, 13
                                                                                        jne   .Lx43_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_47
                                                                                        jmp   .Lx43_48
.Lx43_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx43_49
                        cmp              edx, 14
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_52
.Lx43_49:
                        cmp              edx, 14
                                                                                        je    .Lx43_52
                        cmp              ecx, 7
                                                                                        je    .Lx43_53
                        cmp              edx, 7
                                                                                        je    .Lx43_53
                        cmp              ecx, 6
                                                                                        jne   .Lx43_50
                        cmp              edx, 6
                                                                                        jne   .Lx43_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx43_51
                                                                                        jmp   .Lx43_52
.Lx43_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
.Lx43_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx43_54
.Lx43_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx43_54
.Lx43_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx43_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n12_var_ref_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n14_op11_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_lit_string_α
n14_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n16_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n17_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n18_lit_string_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n19_op11_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n21_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n22_lit_string_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n23_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n24_op11_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n26_op11_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n27_op11_α
n26_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n28_call_proc_staged_α
n27_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx63_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx63_21
.Lx63_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx63_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx63_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx63_23
.Lx63_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx63_23:
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx63_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4]
                                                                                        jmp   rax
.Lx63_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx63_2
.Lx63_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx63_2
.Lx63_1:
                        call             rt_faildescr@PLT
.Lx63_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n29_suspend_α
n28_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "memberchk/2"
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n29_suspend_β:
                                                                                        jmp   n28_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1040]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1080]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 1088]
                        lea              rsp, [rbp + 1104]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 1328
                        mov              [rsp + 1304], rcx
                        mov              [rsp + 1312], rdx
                        mov              [rsp + 1320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1296
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx103_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx103_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx103_101
.Lx103_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx103_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n67_var_ref_α
n66_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n69_op11_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              rsi, qword ptr [rip + .Lx107_2]
                                                                                        jmp   .Lx107_3
.Lx107_2:
                        .quad            .Lx107_2_s
.Lx107_2_s:
                        .string          "memberchk"
.Lx107_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n70_var_ref_α
n69_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n71_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n73_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              rsi, qword ptr [rip + .Lx112_2]
                                                                                        jmp   .Lx112_3
.Lx112_2:
                        .quad            .Lx112_2_s
.Lx112_2_s:
                        .string          "memberchk"
.Lx112_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n76_var_ref_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n78_op11_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n79_op11_α
n78_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
.Lx120_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              esi, 1
                                                                                        jne   .Lx120_55
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_55:
                        cmp              esi, 2
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_56:
                        cmp              eax, 13
                                                                                        jne   .Lx120_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_41
                        cmp              rax, r8
                                                                                        je    .Lx120_41
                        mov              r8, rax
                                                                                        jmp   .Lx120_40
.Lx120_41:
                        lea              r9, [rbp + 960]
.Lx120_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              esi, 1
                                                                                        jne   .Lx120_57
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_57:
                        cmp              esi, 2
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_58:
                        cmp              eax, 13
                                                                                        jne   .Lx120_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_43
                        cmp              rax, r9
                                                                                        je    .Lx120_43
                        mov              r9, rax
                                                                                        jmp   .Lx120_42
.Lx120_43:
                        cmp              r8, r9
                                                                                        je    .Lx120_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_44
                        cmp              eax, 99
                                                                                        je    .Lx120_44
                        cmp              eax, 13
                                                                                        jne   .Lx120_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx120_44
                                                                                        jmp   .Lx120_45
.Lx120_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_53
                        cmp              eax, 99
                                                                                        je    .Lx120_53
                        cmp              eax, 13
                                                                                        jne   .Lx120_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_46
.Lx120_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_47
                        cmp              eax, 99
                                                                                        je    .Lx120_47
                        cmp              eax, 13
                                                                                        jne   .Lx120_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx120_47
                                                                                        jmp   .Lx120_48
.Lx120_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx120_53
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
                                                                                        jmp   .Lx120_51
.Lx120_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx120_49
                        cmp              edx, 14
                                                                                        je    .Lx120_53
                                                                                        jmp   .Lx120_52
.Lx120_49:
                        cmp              edx, 14
                                                                                        je    .Lx120_52
                        cmp              ecx, 7
                                                                                        je    .Lx120_53
                        cmp              edx, 7
                                                                                        je    .Lx120_53
                        cmp              ecx, 6
                                                                                        jne   .Lx120_50
                        cmp              edx, 6
                                                                                        jne   .Lx120_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx120_51
                                                                                        jmp   .Lx120_52
.Lx120_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx120_53
.Lx120_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx120_54
.Lx120_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx120_54
.Lx120_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx120_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n80_var_ref_α
n79_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n82_lit_string_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n83_var_ref_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n85_op11_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n86_lit_string_α
n85_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n87_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n88_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n89_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n90_op11_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n91_lit_string_α
n90_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n92_lit_string_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n93_lit_string_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n94_lit_string_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n95_op11_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n97_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n98_op11_α
n97_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n99_op11_α
n98_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n100_op11_α
n99_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx143_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx143_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        cmp              esi, 1
                                                                                        jne   .Lx143_55
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_55:
                        cmp              esi, 2
                                                                                        jne   .Lx143_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_56:
                        cmp              eax, 13
                                                                                        jne   .Lx143_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        cmp              rax, r8
                                                                                        je    .Lx143_41
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_41:
                        lea              r9, [rbp + 208]
.Lx143_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx143_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        cmp              esi, 1
                                                                                        jne   .Lx143_57
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_57:
                        cmp              esi, 2
                                                                                        jne   .Lx143_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_58:
                        cmp              eax, 13
                                                                                        jne   .Lx143_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        cmp              rax, r9
                                                                                        je    .Lx143_43
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_43:
                        cmp              r8, r9
                                                                                        je    .Lx143_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_44
                        cmp              eax, 99
                                                                                        je    .Lx143_44
                        cmp              eax, 13
                                                                                        jne   .Lx143_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx143_44
                                                                                        jmp   .Lx143_45
.Lx143_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_53
                        cmp              eax, 99
                                                                                        je    .Lx143_53
                        cmp              eax, 13
                                                                                        jne   .Lx143_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx143_53
                                                                                        jmp   .Lx143_46
.Lx143_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx143_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx143_53
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
                                                                                        jmp   .Lx143_51
.Lx143_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_47
                        cmp              eax, 99
                                                                                        je    .Lx143_47
                        cmp              eax, 13
                                                                                        jne   .Lx143_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx143_47
                                                                                        jmp   .Lx143_48
.Lx143_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx143_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx143_53
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
                                                                                        jmp   .Lx143_51
.Lx143_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx143_49
                        cmp              edx, 14
                                                                                        je    .Lx143_53
                                                                                        jmp   .Lx143_52
.Lx143_49:
                        cmp              edx, 14
                                                                                        je    .Lx143_52
                        cmp              ecx, 7
                                                                                        je    .Lx143_53
                        cmp              edx, 7
                                                                                        je    .Lx143_53
                        cmp              ecx, 6
                                                                                        jne   .Lx143_50
                        cmp              edx, 6
                                                                                        jne   .Lx143_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx143_51
                                                                                        jmp   .Lx143_52
.Lx143_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx143_53
.Lx143_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx143_54
.Lx143_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx143_54
.Lx143_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx143_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n71_op11_α
                                                                                        jmp   n101_move_label_α
n100_op11_β:
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_move_label_α:
                        lea              rax, [rip + n71_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n102_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1304]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 1312]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 1344
                        mov              qword ptr [rsp + 1320], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1296], r11
                        lea              rax, [rip + .Lx148_2]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rax, [rip + .Lx148_3]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 1280
                        mov              edx, 1296
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx148_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1328
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx148_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1328
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n153_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx155_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx155_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx155_101
.Lx155_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx155_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n150_lit_string_α
n149_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n151_lit_string_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n152_call_proc_staged_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx159_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx159_21
.Lx159_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx159_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx159_22
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx159_23
.Lx159_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx159_23:
                        mov              rdi, qword ptr [rip + .Lx159_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx159_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4]
                                                                                        jmp   rax
.Lx159_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx159_2
.Lx159_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx159_2
.Lx159_1:
                        call             rt_faildescr@PLT
.Lx159_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n153_suspend_α
n152_call_proc_staged_β:
                                                                                        jmp   n154_op11_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "begin_tests/2"
#-----------------------------------------------------------------------------------------------------------------------
n153_suspend_α:
                        lea              rax, [rip + n153_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n153_suspend_β:
                                                                                        jmp   n152_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n154_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n169_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx170_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx170_101
.Lx170_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx170_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n164_lit_string_α
n163_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n165_lit_string_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n166_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "terms"
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
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
                                                                                        je    n168_op11_α
                                                                                        jmp   n167_call_proc_staged_α
n166_op11_β:
                                                                                        jmp   n168_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx175_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx175_21
.Lx175_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx175_21:
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx175_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_3]
                        lea              rdx, [rip + .Lx175_4]
                                                                                        jmp   rax
.Lx175_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx175_2
.Lx175_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx175_2
.Lx175_1:
                        call             rt_faildescr@PLT
.Lx175_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n169_suspend_α
n167_call_proc_staged_β:
                                                                                        jmp   n168_op11_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n168_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_suspend_α:
                        lea              rax, [rip + n169_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n169_suspend_β:
                                                                                        jmp   n167_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n190_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n179_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx191_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx191_101
.Lx191_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx191_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n180_lit_string_α
n179_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n181_lit_string_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "test_list"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n182_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n183_lit_string_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n184_lit_integer_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "test_list"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n185_op11_α
.Lx196_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
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
                                                                                        jmp   n186_lit_string_α
n185_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n187_op11_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
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
                                                                                        je    n189_op11_α
                                                                                        jmp   n188_call_proc_staged_α
n187_op11_β:
                                                                                        jmp   n189_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx201_21
.Lx201_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx201_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx201_23
.Lx201_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx201_23:
                        mov              rdi, qword ptr [rip + .Lx201_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx201_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4]
                                                                                        jmp   rax
.Lx201_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_1:
                        call             rt_faildescr@PLT
.Lx201_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n189_op11_α
                                                                                        jmp   n190_suspend_α
n188_call_proc_staged_β:
                                                                                        jmp   n189_op11_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
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
n189_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_suspend_α:
                        lea              rax, [rip + n190_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n190_suspend_β:
                                                                                        jmp   n188_call_proc_staged_β
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
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n208_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx210_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx210_101
.Lx210_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx210_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n206_lit_string_α
n205_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n207_call_proc_staged_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx213_21
.Lx213_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx213_21:
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx213_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx213_3]
                        lea              rdx, [rip + .Lx213_4]
                                                                                        jmp   rax
.Lx213_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_1:
                        call             rt_faildescr@PLT
.Lx213_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n209_op11_α
                                                                                        jmp   n208_suspend_α
n207_call_proc_staged_β:
                                                                                        jmp   n209_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n208_suspend_α:
                        lea              rax, [rip + n208_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n208_suspend_β:
                                                                                        jmp   n207_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
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
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n209_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n223_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n217_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx224_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx224_101
.Lx224_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx224_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n218_lit_string_α
n217_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n219_lit_string_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n220_op11_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "apply"
#-----------------------------------------------------------------------------------------------------------------------
n220_op11_α:
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
                                                                                        je    n222_op11_α
                                                                                        jmp   n221_call_proc_staged_α
n220_op11_β:
                                                                                        jmp   n222_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx229_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx229_21
.Lx229_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx229_21:
                        mov              rdi, qword ptr [rip + .Lx229_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx229_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx229_3]
                        lea              rdx, [rip + .Lx229_4]
                                                                                        jmp   rax
.Lx229_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx229_2
.Lx229_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx229_2
.Lx229_1:
                        call             rt_faildescr@PLT
.Lx229_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n222_op11_α
                                                                                        jmp   n223_suspend_α
n221_call_proc_staged_β:
                                                                                        jmp   n222_op11_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n222_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_suspend_α:
                        lea              rax, [rip + n223_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n223_suspend_β:
                                                                                        jmp   n221_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx240_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx240_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx240_101
.Lx240_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx240_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n234_lit_string_α
n233_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n235_lit_string_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n236_op11_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n236_op11_α:
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
                                                                                        je    n238_op11_α
                                                                                        jmp   n237_call_proc_staged_α
n236_op11_β:
                                                                                        jmp   n238_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx245_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_1:
                        call             rt_faildescr@PLT
.Lx245_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n238_op11_α
                                                                                        jmp   n239_suspend_α
n237_call_proc_staged_β:
                                                                                        jmp   n238_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
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
n238_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_suspend_α:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n239_suspend_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_list$2F0_α
proc_test_list$2F0_α:
                        .global          proc_test_list$2F0_α
                        .global          proc_test_list$2F0_β
                        .global          proc_test_list$2F0_γ
                        .global          proc_test_list$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_list$2F0_α_body:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx257_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx257_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx257_101
.Lx257_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx257_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_list$2F0_ω
                                                                                        jmp   n250_lit_string_α
n249_op11_β:
                                                                                        jmp   proc_test_list$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n251_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n252_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n253_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n253_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n255_op11_α
                                                                                        jmp   n254_call_proc_staged_α
n253_op11_β:
                                                                                        jmp   n255_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx263_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx263_21
.Lx263_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx263_21:
                        mov              rdi, qword ptr [rip + .Lx263_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx263_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4]
                                                                                        jmp   rax
.Lx263_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_1:
                        call             rt_faildescr@PLT
.Lx263_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n255_op11_α
                                                                                        jmp   n256_suspend_α
n254_call_proc_staged_β:
                                                                                        jmp   n255_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
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
                                                                                        je    proc_test_list$2F0_ω
                                                                                        jmp   proc_test_list$2F0_ω
n255_op11_β:
                                                                                        jmp   proc_test_list$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_suspend_α:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_list$2F0_γ
n256_suspend_β:
                                                                                        jmp   n254_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_list$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_list$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_list$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_list$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_list$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1072
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 240
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
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "test_list/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_test_list$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n268_call_proc_staged_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "memberchk"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx271_21
.Lx271_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx271_21:
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx271_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx271_3]
                        lea              rdx, [rip + .Lx271_4]
                                                                                        jmp   rax
.Lx271_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx271_2
.Lx271_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx271_2
.Lx271_1:
                        call             rt_faildescr@PLT
.Lx271_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n268_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
