                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_acyc$2F2_α
proc_acyc$2F2_α:
                        .global          proc_acyc$2F2_α
                        .global          proc_acyc$2F2_β
                        .global          proc_acyc$2F2_γ
                        .global          proc_acyc$2F2_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_acyc$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx21_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx21_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx21_101
.Lx21_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx21_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_acyc$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_acyc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx26_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx26_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        cmp              esi, 1
                                                                                        jne   .Lx26_55
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_55:
                        cmp              esi, 2
                                                                                        jne   .Lx26_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_56:
                        cmp              eax, 13
                                                                                        jne   .Lx26_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        cmp              rax, r8
                                                                                        je    .Lx26_41
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_41:
                        lea              r9, [rbp + 496]
.Lx26_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx26_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        cmp              esi, 1
                                                                                        jne   .Lx26_57
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_57:
                        cmp              esi, 2
                                                                                        jne   .Lx26_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_58:
                        cmp              eax, 13
                                                                                        jne   .Lx26_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        cmp              rax, r9
                                                                                        je    .Lx26_43
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_43:
                        cmp              r8, r9
                                                                                        je    .Lx26_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_44
                        cmp              eax, 99
                                                                                        je    .Lx26_44
                        cmp              eax, 13
                                                                                        jne   .Lx26_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx26_44
                                                                                        jmp   .Lx26_45
.Lx26_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_53
                        cmp              eax, 99
                                                                                        je    .Lx26_53
                        cmp              eax, 13
                                                                                        jne   .Lx26_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx26_53
                                                                                        jmp   .Lx26_46
.Lx26_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx26_53
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
                                                                                        jmp   .Lx26_51
.Lx26_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_47
                        cmp              eax, 99
                                                                                        je    .Lx26_47
                        cmp              eax, 13
                                                                                        jne   .Lx26_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx26_47
                                                                                        jmp   .Lx26_48
.Lx26_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx26_53
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
                                                                                        jmp   .Lx26_51
.Lx26_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx26_49
                        cmp              edx, 14
                                                                                        je    .Lx26_53
                                                                                        jmp   .Lx26_52
.Lx26_49:
                        cmp              edx, 14
                                                                                        je    .Lx26_52
                        cmp              ecx, 7
                                                                                        je    .Lx26_53
                        cmp              edx, 7
                                                                                        je    .Lx26_53
                        cmp              ecx, 6
                                                                                        jne   .Lx26_50
                        cmp              edx, 6
                                                                                        jne   .Lx26_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx26_51
                                                                                        jmp   .Lx26_52
.Lx26_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx26_53
.Lx26_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx26_54
.Lx26_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx26_54
.Lx26_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx26_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_acyc$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_acyc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n8_op11_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              rsi, qword ptr [rip + .Lx33_2]
                                                                                        jmp   .Lx33_3
.Lx33_2:
                        .quad            .Lx33_2_s
.Lx33_2_s:
                        .string          "yes"
.Lx33_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_var_ref_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
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
.Lx38_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx38_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        cmp              esi, 1
                                                                                        jne   .Lx38_55
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_55:
                        cmp              esi, 2
                                                                                        jne   .Lx38_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_56:
                        cmp              eax, 13
                                                                                        jne   .Lx38_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_41
                        cmp              rax, r8
                                                                                        je    .Lx38_41
                        mov              r8, rax
                                                                                        jmp   .Lx38_40
.Lx38_41:
                        lea              r9, [rbp + 256]
.Lx38_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx38_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        cmp              esi, 1
                                                                                        jne   .Lx38_57
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_57:
                        cmp              esi, 2
                                                                                        jne   .Lx38_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_58:
                        cmp              eax, 13
                                                                                        jne   .Lx38_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx38_43
                        cmp              rax, r9
                                                                                        je    .Lx38_43
                        mov              r9, rax
                                                                                        jmp   .Lx38_42
.Lx38_43:
                        cmp              r8, r9
                                                                                        je    .Lx38_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_44
                        cmp              eax, 99
                                                                                        je    .Lx38_44
                        cmp              eax, 13
                                                                                        jne   .Lx38_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx38_44
                                                                                        jmp   .Lx38_45
.Lx38_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_53
                        cmp              eax, 99
                                                                                        je    .Lx38_53
                        cmp              eax, 13
                                                                                        jne   .Lx38_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx38_53
                                                                                        jmp   .Lx38_46
.Lx38_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx38_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx38_53
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
                                                                                        jmp   .Lx38_51
.Lx38_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx38_47
                        cmp              eax, 99
                                                                                        je    .Lx38_47
                        cmp              eax, 13
                                                                                        jne   .Lx38_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx38_47
                                                                                        jmp   .Lx38_48
.Lx38_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx38_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx38_53
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
                                                                                        jmp   .Lx38_51
.Lx38_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx38_49
                        cmp              edx, 14
                                                                                        je    .Lx38_53
                                                                                        jmp   .Lx38_52
.Lx38_49:
                        cmp              edx, 14
                                                                                        je    .Lx38_52
                        cmp              ecx, 7
                                                                                        je    .Lx38_53
                        cmp              edx, 7
                                                                                        je    .Lx38_53
                        cmp              ecx, 6
                                                                                        jne   .Lx38_50
                        cmp              edx, 6
                                                                                        jne   .Lx38_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx38_51
                                                                                        jmp   .Lx38_52
.Lx38_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx38_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx38_53
.Lx38_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx38_54
.Lx38_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx38_54
.Lx38_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx38_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn40:               .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_op19_α
n12_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
                                                                                        je    proc_acyc$2F2_ω
                                                                                        jmp   proc_acyc$2F2_ω
n14_op11_β:
                                                                                        jmp   proc_acyc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op19_α:
                                                                                        jmp   n17_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n18_op11_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n17_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_acyc$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx48_2]
                                                                                        jmp   .Lx48_3
.Lx48_2:
                        .quad            .Lx48_2_s
.Lx48_2_s:
                        .string          "no"
.Lx48_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n20_move_label_α
n18_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n19_disjunction_β:
                                                                                        jmp   proc_acyc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_move_label_α:
                        lea              rax, [rip + n14_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_acyc$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_acyc$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_acyc$2F2_β:
                                                                                        jmp   n19_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_acyc$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 584]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_acyc$2F2_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_acyc$2F2_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx53_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx53_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 544
                        mov              edx, 576
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_acyc$2F2_α_body
.Lx53_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx53_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_make_cycle$2F1_α
proc_make_cycle$2F1_α:
                        .global          proc_make_cycle$2F1_α
                        .global          proc_make_cycle$2F1_β
                        .global          proc_make_cycle$2F1_γ
                        .global          proc_make_cycle$2F1_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_make_cycle$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx66_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx66_101
.Lx66_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx66_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_make_cycle$2F1_ω
                                                                                        jmp   n55_var_ref_α
n54_op11_β:
                                                                                        jmp   proc_make_cycle$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx71_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx71_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_41
                        cmp              esi, 1
                                                                                        jne   .Lx71_55
                        mov              r8, rax
                                                                                        jmp   .Lx71_40
.Lx71_55:
                        cmp              esi, 2
                                                                                        jne   .Lx71_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_41
                        mov              r8, rax
                                                                                        jmp   .Lx71_40
.Lx71_56:
                        cmp              eax, 13
                                                                                        jne   .Lx71_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_41
                        cmp              rax, r8
                                                                                        je    .Lx71_41
                        mov              r8, rax
                                                                                        jmp   .Lx71_40
.Lx71_41:
                        lea              r9, [rbp + 320]
.Lx71_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx71_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_43
                        cmp              esi, 1
                                                                                        jne   .Lx71_57
                        mov              r9, rax
                                                                                        jmp   .Lx71_42
.Lx71_57:
                        cmp              esi, 2
                                                                                        jne   .Lx71_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx71_43
                        mov              r9, rax
                                                                                        jmp   .Lx71_42
.Lx71_58:
                        cmp              eax, 13
                                                                                        jne   .Lx71_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx71_43
                        cmp              rax, r9
                                                                                        je    .Lx71_43
                        mov              r9, rax
                                                                                        jmp   .Lx71_42
.Lx71_43:
                        cmp              r8, r9
                                                                                        je    .Lx71_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_44
                        cmp              eax, 99
                                                                                        je    .Lx71_44
                        cmp              eax, 13
                                                                                        jne   .Lx71_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx71_44
                                                                                        jmp   .Lx71_45
.Lx71_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_53
                        cmp              eax, 99
                                                                                        je    .Lx71_53
                        cmp              eax, 13
                                                                                        jne   .Lx71_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx71_53
                                                                                        jmp   .Lx71_46
.Lx71_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx71_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx71_53
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
                                                                                        jmp   .Lx71_51
.Lx71_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx71_47
                        cmp              eax, 99
                                                                                        je    .Lx71_47
                        cmp              eax, 13
                                                                                        jne   .Lx71_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx71_47
                                                                                        jmp   .Lx71_48
.Lx71_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx71_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx71_53
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
                                                                                        jmp   .Lx71_51
.Lx71_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx71_49
                        cmp              edx, 14
                                                                                        je    .Lx71_53
                                                                                        jmp   .Lx71_52
.Lx71_49:
                        cmp              edx, 14
                                                                                        je    .Lx71_52
                        cmp              ecx, 7
                                                                                        je    .Lx71_53
                        cmp              edx, 7
                                                                                        je    .Lx71_53
                        cmp              ecx, 6
                                                                                        jne   .Lx71_50
                        cmp              edx, 6
                                                                                        jne   .Lx71_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx71_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx71_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx71_51
                                                                                        jmp   .Lx71_52
.Lx71_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx71_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx71_53
.Lx71_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx71_54
.Lx71_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx71_54
.Lx71_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx71_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n58_var_ref_α
n57_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
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
                                                                                        je    proc_make_cycle$2F1_ω
                                                                                        jmp   proc_make_cycle$2F1_ω
n59_op11_β:
                                                                                        jmp   proc_make_cycle$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n61_var_ref_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n63_op11_α
n62_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx79_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx79_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx79_41
                        cmp              esi, 1
                                                                                        jne   .Lx79_55
                        mov              r8, rax
                                                                                        jmp   .Lx79_40
.Lx79_55:
                        cmp              esi, 2
                                                                                        jne   .Lx79_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx79_41
                        mov              r8, rax
                                                                                        jmp   .Lx79_40
.Lx79_56:
                        cmp              eax, 13
                                                                                        jne   .Lx79_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx79_41
                        cmp              rax, r8
                                                                                        je    .Lx79_41
                        mov              r8, rax
                                                                                        jmp   .Lx79_40
.Lx79_41:
                        lea              r9, [rbp + 160]
.Lx79_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx79_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx79_43
                        cmp              esi, 1
                                                                                        jne   .Lx79_57
                        mov              r9, rax
                                                                                        jmp   .Lx79_42
.Lx79_57:
                        cmp              esi, 2
                                                                                        jne   .Lx79_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx79_43
                        mov              r9, rax
                                                                                        jmp   .Lx79_42
.Lx79_58:
                        cmp              eax, 13
                                                                                        jne   .Lx79_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx79_43
                        cmp              rax, r9
                                                                                        je    .Lx79_43
                        mov              r9, rax
                                                                                        jmp   .Lx79_42
.Lx79_43:
                        cmp              r8, r9
                                                                                        je    .Lx79_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx79_44
                        cmp              eax, 99
                                                                                        je    .Lx79_44
                        cmp              eax, 13
                                                                                        jne   .Lx79_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx79_44
                                                                                        jmp   .Lx79_45
.Lx79_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx79_53
                        cmp              eax, 99
                                                                                        je    .Lx79_53
                        cmp              eax, 13
                                                                                        jne   .Lx79_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx79_53
                                                                                        jmp   .Lx79_46
.Lx79_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx79_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx79_53
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
                                                                                        jmp   .Lx79_51
.Lx79_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx79_47
                        cmp              eax, 99
                                                                                        je    .Lx79_47
                        cmp              eax, 13
                                                                                        jne   .Lx79_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx79_47
                                                                                        jmp   .Lx79_48
.Lx79_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx79_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx79_53
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
                                                                                        jmp   .Lx79_51
.Lx79_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx79_49
                        cmp              edx, 14
                                                                                        je    .Lx79_53
                                                                                        jmp   .Lx79_52
.Lx79_49:
                        cmp              edx, 14
                                                                                        je    .Lx79_52
                        cmp              ecx, 7
                                                                                        je    .Lx79_53
                        cmp              edx, 7
                                                                                        je    .Lx79_53
                        cmp              ecx, 6
                                                                                        jne   .Lx79_50
                        cmp              edx, 6
                                                                                        jne   .Lx79_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx79_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx79_51
                                                                                        jmp   .Lx79_52
.Lx79_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx79_53
.Lx79_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx79_54
.Lx79_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx79_54
.Lx79_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx79_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n64_move_label_α
n63_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_move_label_α:
                        lea              rax, [rip + n59_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_make_cycle$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n65_disjunction_β:
                                                                                        jmp   proc_make_cycle$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_make_cycle$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_make_cycle$2F1_β:
                                                                                        jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_make_cycle$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 392]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_cycle$2F1_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_cycle$2F1_dcα:
                        pop              r11
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 384], r11
                        lea              rax, [rip + .Lx84_2]
                        mov              qword ptr [rbp + 392], rax
                        lea              rax, [rip + .Lx84_3]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 368
                        mov              edx, 384
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_make_cycle$2F1_α_body
.Lx84_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -416
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx84_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -416
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "acyc/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_acyc$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_acyc$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "make_cycle/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_make_cycle$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_make_cycle$2F1_dcα]
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
                        sub              rsp, 3256
                        mov              rdi, rsp
                        mov              ecx, 3256
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3248], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx196_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx196_101
.Lx196_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx196_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n86_lit_string_α
n85_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n87_lit_string_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n88_lit_string_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n89_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n90_op11_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n92_lit_string_α
                                                                                        jmp   n91_op11_α
n90_op11_β:
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lrkfn203:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n92_lit_string_α
                                                                                        jmp   n93_lit_string_α
n91_op11_β:
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n94_op11_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "compound_no"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n95_op11_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "compound_yes"
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn207:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n96_lit_string_α
n94_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2920], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n98_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
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
n97_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn213:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn217:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 2816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n101_lit_string_α
n100_op11_β:
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n103_op11_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "var_yes"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n104_op11_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "var_no"
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn221:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 2720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n105_lit_string_α
n103_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax
                        .section         .rodata
.Lrkfn223:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 2768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n105_lit_string_α
n104_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n106_op11_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn226:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n107_lit_string_α
n106_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n108_lit_integer_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n109_lit_string_α
.Lx228_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n110_lit_integer_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n111_lit_string_α
.Lx230_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n112_lit_integer_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n113_lit_string_α
.Lx232_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n114_lit_integer_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n115_lit_string_α
.Lx234_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n116_lit_integer_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n117_lit_string_α
.Lx236_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n118_op11_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n119_op11_α
n118_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n120_op11_α
n119_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n121_op11_α
n120_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n122_op11_α
n121_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n124_lit_string_α
                                                                                        jmp   n123_op11_α
n122_op11_β:
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn244:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n124_lit_string_α
                                                                                        jmp   n125_lit_string_α
n123_op11_β:
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n126_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "list_no"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n127_op11_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "list_yes"
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn248:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n128_lit_string_α
n126_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn250:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n128_lit_string_α
n127_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n129_op11_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn253:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n130_lit_integer_α
n129_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n131_op11_α
.Lx254_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn256:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n133_lit_string_α
                                                                                        jmp   n132_lit_string_α
n131_op11_β:
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n134_op11_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "int_yes"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n135_op11_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "int_no"
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn260:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n136_lit_string_α
n134_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn262:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n136_lit_string_α
n135_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n137_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn265:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n138_lit_string_α
n137_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n139_op11_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn268:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n141_lit_string_α
                                                                                        jmp   n140_lit_string_α
n139_op11_β:
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n142_op11_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "atom_yes"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n143_op11_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "atom_no"
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn272:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n144_lit_string_α
n142_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn274:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n144_lit_string_α
n143_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n145_op11_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n146_var_ref_α
n145_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n148_lit_integer_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n149_op11_α
.Lx281_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n150_op11_α
n149_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1376]
                        lea              r8, [rbp + 1376]
.Lx283_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx283_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              esi, 1
                                                                                        jne   .Lx283_55
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_55:
                        cmp              esi, 2
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_56:
                        cmp              eax, 13
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              rax, r8
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_41:
                        lea              r9, [rbp + 1392]
.Lx283_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx283_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              esi, 1
                                                                                        jne   .Lx283_57
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_57:
                        cmp              esi, 2
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_58:
                        cmp              eax, 13
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              rax, r9
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_43:
                        cmp              r8, r9
                                                                                        je    .Lx283_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_44
                        cmp              eax, 99
                                                                                        je    .Lx283_44
                        cmp              eax, 13
                                                                                        jne   .Lx283_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx283_44
                                                                                        jmp   .Lx283_45
.Lx283_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_53
                        cmp              eax, 99
                                                                                        je    .Lx283_53
                        cmp              eax, 13
                                                                                        jne   .Lx283_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_46
.Lx283_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_47
                        cmp              eax, 99
                                                                                        je    .Lx283_47
                        cmp              eax, 13
                                                                                        jne   .Lx283_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_47
                                                                                        jmp   .Lx283_48
.Lx283_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx283_49
                        cmp              edx, 14
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_52
.Lx283_49:
                        cmp              edx, 14
                                                                                        je    .Lx283_52
                        cmp              ecx, 7
                                                                                        je    .Lx283_53
                        cmp              edx, 7
                                                                                        je    .Lx283_53
                        cmp              ecx, 6
                                                                                        jne   .Lx283_50
                        cmp              edx, 6
                                                                                        jne   .Lx283_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx283_51
                                                                                        jmp   .Lx283_52
.Lx283_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
.Lx283_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx283_54
.Lx283_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx283_54
.Lx283_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx283_54:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n151_lit_string_α
n150_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n152_var_ref_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n155_op11_α
n154_op11_β:
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn291:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n157_lit_string_α
n155_op11_β:
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n158_op11_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "shared_no"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n159_op11_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "shared_yes"
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn295:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n160_lit_string_α
n158_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn297:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n160_lit_string_α
n159_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n161_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn300:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n162_lit_string_α
n161_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n163_lit_string_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n164_lit_string_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n165_lit_string_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n166_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n167_lit_string_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n168_op11_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n169_op11_α
n168_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n170_lit_string_α
n169_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n171_op11_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n173_lit_string_α
                                                                                        jmp   n172_op11_α
n171_op11_β:
                                                                                        jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn312:              .string          "$acyclic_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n173_lit_string_α
                                                                                        jmp   n174_lit_string_α
n172_op11_β:
                                                                                        jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n175_op11_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "oper_no"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n176_op11_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "oper_yes"
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn316:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n177_lit_string_α
n175_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn318:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n177_lit_string_α
n176_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n178_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn321:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n180_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        call             proc_make_cycle$2F1_dcα
                                                                                        jmp   .Lx325_2
.Lx325_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n181_var_ref_α
n180_call_proc_staged_β:
                                                                                        jmp   n97_op11_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "make_cycle/1"
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n183_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 448]
                        call             proc_acyc$2F2_dcα
                                                                                        jmp   .Lx331_2
.Lx331_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n180_call_proc_staged_β
                                                                                        jmp   n184_lit_string_α
n183_call_proc_staged_β:
                                                                                        jmp   n180_call_proc_staged_β
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "acyc/2"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n185_var_ref_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "cyclic"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n187_op11_α
n186_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn337:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n188_lit_string_α
n187_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n189_op11_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn340:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n190_lit_string_α
n189_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n191_op11_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn343:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n192_lit_string_α
n191_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n193_op11_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn346:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n183_call_proc_staged_β
                                                                                        jmp   n194_move_label_α
n193_op11_β:
                                                                                        jmp   n183_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n194_move_label_α:
                        lea              rax, [rip + n183_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n195_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n195_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3248]
                        add              rsp, 3256
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3248]
                        add              rsp, 3256
                        ret
                        .section         .note.GNU-stack,"",@progbits
